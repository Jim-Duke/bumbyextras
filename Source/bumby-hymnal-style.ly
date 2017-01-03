%\version "2.19.19"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%                                                %%
%%            SOUTH BUMBY HYMNAL STYLE            %%
%%                                                %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%{
  This file may be \include'd in a score to produce the standard
  products for all hymns in the South Bumby Supplementary Hymnal.

  It is intended to encapsulate all the standards for layout staves
  page layout standards, and MIDI output.  That way the files which
  include it can primarily focus on the music and lyrics.

  Usage:

  bumby-hymnal-style.ly should be included at the *end* of the input file.
  Before it are placed the required music and lyrics by redefining specific
  variables, like this:

  \header { ... }
  Key = { ... }
  Time = { ... }
  SopranoMusic = \relative { ... }
  AltoMusic = \relative { ... }
  VerseOne = \lyricmode { ... }
  VerseTwo = \lyricmode { ... }
  ...
  VerseNine = \lyricmode { ... }
  TenorMusic = \relative { ... }
  BassMusic = \relative { ... }
  \include "bumby-hymnal-style.ly"

  All of the definitions are optional. Staves with no music will be
  omitted from the output.

TBD: revise from here down
  Other variables, such as the instrumentName, shortInstrumentName
  and MidiInstrument can also be changed by defining variables like
  AltoInstrumentName, BassMidiInstrument, etc.  The prefixes for staves
  containing two divided voices are WomenDivided and MenDivided, hence
  the corresponding variables would be WomenDividedInstrumentName, etc.
  The key is defined in the variable Key, and the structure of time
  and repeats in the variable Time, using spacer rests.

  A \layout block may be defined in the variable Layout.  There is
  no default \header block and no default \paper block.

  Music may be tagged with #'print or #'play to be included only in
  the printed score or in the MIDI file respectively.

%}

%%% These are the general utility functions and storage
%   used by the built-in templates and the template kits
%   (tkits) supporting them.

% TODO: these may be more sensibly (re)defined as a scm file

#(define (get-id str)
   "Return the identifier with the value str"
   (ly:parser-lookup (string->symbol str)))

#(define (make-id a b)
  "Return the identifier formed from concatenating the
   two strings provided as arguments."
   (get-id (string-append a b)))

#(define (cartesian a b)
  "Return a list formed from concatenating every element
   of list a with every element of list b (the cartesian
   product a X b)."
   (append-map
    (lambda (x)
      (map
       (lambda (y)
         (string-append x y))
       b))
    a))

#(define (define-missing-variables! ids)
  "Check if each of the identifiers listed in the argument is
   known to the parser.  If any are not, define them and set
   their value to #f"
   (for-each
      (lambda (id)
        (define sym (string->symbol id))
          (if (null? (ly:parser-lookup sym))
            (ly:parser-define! sym #f)))
      ids))

% Define the lists used to hold the names and
% component names which form the variable names
% used in the templates.  These are populated by the
% set-music-definitions! procedure
% The variables defined here as empty lists will be provided
% by the template, and may be set to any values there.
#(define voice-prefixes '())   % eg "Soprano"
#(define staff-names '())      % eg "WomenDividedStaff"
#(define all-music-names '())  % eg "SopranoMusic"
#(define lyrics-postfixes '())	% eg "Lyrics"
#(define lyrics-names '())     % eg "VerseOne"

% Define the derived variables to be populated
#(define AllMusic (make-music 'SequentialMusic 'void #t))
#(define KeepAlive AllMusic)   % used to ensure voices don't terminate
#(define have-music #f)        % -> #t when at least one music name
                                %    contains music
#(define voice-postfixes
   ;; These names are used verbatim in code, so may not be changed
   '("InstrumentName"
     "MidiInstrument"
     "Music"
     "ShortInstrumentName"))

#(define variable-names
   ;; These names are used verbatim in code, so may not be changed
   '("Key"
     "Layout"
     "Time"
     "TwoVoicesPerStaff"))

#(define staff-names
   ;; These names are used verbatim in code, so may not be changed
   '("WomenDividedStaff"
     "MenDividedStaff"))

#(define output-types
   ;; These names are used verbatim in code, so may not be changed
   '("SheetMusic"
     "Slides"
     "Audio"))

% Define the predicates used in the tkits and templates
#(define (above-or-below? x)
  (member x '("Above" "Below")))

#(define (up-or-down? x)
   (member x '("Down" "Up" "")))

#(define (clef? x)
   (member x '("treble" "bass")))

#(define (voice-prefix? x)
   (member x voice-prefixes))

#(define (staff-name? x)
   (member x staff-names))

#(define (output-type? x)
   (member x output-types))

#(define (verses? x)
   (member x lyrics-names))


#(define (set-music-definitions! prefixes lyr-names)
  "Populate the name definitions and their derivatives
   with the values provided by the calling template"
   (set! voice-prefixes prefixes)
   (append! variable-names lyr-names)
   (set! all-music-names
         (cartesian voice-prefixes '("Music")))
   (set! lyrics-names lyr-names)
   (define-missing-variables! (append
                                  variable-names
                                  all-music-names
                                  lyrics-names))
   (set! AllMusic
     (make-simultaneous-music
      (filter ly:music?
              (map
               (lambda (x)
                 (get-id x))
               all-music-names))))
   (set! KeepAlive
         (skip-of-length AllMusic))
   (set! have-music
         (ly:moment<?
          (ly:make-moment 0)
          (ly:music-length KeepAlive))))

make-voice =
#(define-music-function (name) (voice-prefix?)
   (define music (make-id name "Music"))
   (if music
       #{
         \new Voice = #(string-append name "Voice") <<
           #(if KeepAlive KeepAlive)
           #(if Time Time )
           #music
         >>
       #} ))

make-one-stanza =
#(define-music-function
  (lyrics)
  (verses?)

   "Make a single stanza
    staffPrefix: voice prefix for the staff to be positioned against
    voicePrefix: voice prefix for the associated voice
                 if the first is not present)
         lyrics: the words"

   (let* ((stanza (get-id lyrics)))
   (if stanza  ;we need lyrics
        #{
          \new Lyrics \lyricsto "AlignVoice"
          { #stanza }
        #}
        (make-music 'SequentialMusic 'void #t))))

%% Staff-oriented functions

% These assume the following lists have been defined:
%   voice-prefixes  eg "Soprano"
%   voice-postfixes  eg "Music"
%   lyrics-postfixes  eg "Lyrics"
%   lyrics-names  eg "VerseOne"
%   variable-names  eg "Time"
%
% The first three lists are used to generate compound
% names such as "SopranoLyrics" and "SopranoInstrumentName"
% The last two lists of names are used as-is.

make-two-voice-staff =
#(define-music-function (outputType addBreaks clef v1name v2name)
   (output-type? boolean? clef? voice-prefix? voice-prefix?)

   "Make a vocal staff with two voices
      clef: the clef to use
    v1name: the prefix to the name of voice one
    v2name: the prefix to the name of voice two "

   (define v1music (make-id v1name "Music"))
   (define v2music (make-id v2name "Music"))
   (define amusic (get-id "AlignMusic"))
   (define breakmusic (make-id outputType "Breaks"))
   (if (or v1music v2music)
       #{
         <<
           \new Staff
           \with {
             \remove "Staff_performer"
           }
           <<
             #(if Key Key)
             #(if Time Time)
             \clef #clef

             #(make-directed-part-combine-music #f '(2 . 12) v1music v2music
                #{ \with { \voiceOne \override DynamicLineSpanner.direction = #UP } #}
                #{ \with { \voiceTwo \override DynamicLineSpanner.direction = #DOWN } #}
                #{ #} )
             
             \new NullVoice = "AlignVoice" {
               #amusic
             }
             
             #(if addBreaks #{ \new NullVoice = "Breaks" { #breakmusic } #} )
               
           >>
         >>
       #}
        (make-music 'SequentialMusic 'void #t)))

make-two-vocal-staves-with-stanzas =
#(define-music-function
  (outputType verses)
  (output-type? list?)

  "Make two two-voice vocal staves with several stanzas between them.
The number of stanzas is determined by the number of populated verse names.
 outputType: The type of output (sheet music, slides, or audio)
     vxname: the prefix to the name of voice x, x = 1..4
     verses: the list of verse names containing the stanzas"

  (make-simultaneous-music
   (list
    (make-two-voice-staff outputType #t "treble" "Soprano" "Alto")
    (make-simultaneous-music
     (map
      (lambda (verse-name)
        (make-one-stanza verse-name))
        verses))
    (make-two-voice-staff outputType #f "bass" "Tenor" "Bass"))))


#(define satb-voice-prefixes
   ;; These define the permitted prefixes to various names.
   ;; They are combined with a fixed set of postfixes to form
   ;; names such as AltoMusic, BassInstrumentName, etc.
   ;; These names may be redefined.
   '("Alto"
     "Bass"
     "Soprano"
     "Tenor"))

%{#(define satb-lyrics-postfixes
   ;; These define the permitted postfixes to the names of lyrics.
   ;; They are combined with the prefixes to form names like
   ;; AltoLyrics, etc.
   ;; These names may be redefined or extended.
  '("Lyrics"
    "LyricsOne"
    "LyricsTwo"
    "LyricsThree"
    "LyricsFour"))
%}

#(define satb-lyrics-variable-names
   ;; These define the names which may be used to specify stanzas
   ;; which go between the two two-voice staves when TwoVoicesPerStaff
   ;; is set to #t.  They may be redefined or extended.
  '("VerseOne"
    "VerseTwo"
    "VerseThree"
    "VerseFour"
    "VerseFive"
    "VerseSix"
    "VerseSeven"
    "VerseEight"
    "VerseNine"))

%% make the above definitions available
#(set-music-definitions!
  satb-voice-prefixes
  satb-lyrics-variable-names)

\layout {
  \context {
    \Staff
    \override VerticalAxisGroup.remove-empty = ##t
    \override VerticalAxisGroup.remove-first = ##t
  }
}

SongNumber = #(ly:parser-lookup 'SongNumber)
Title = #(ly:parser-lookup 'Title)
FirstPage = #(ly:parser-lookup 'FirstPage)
BuildDir = #(ly:parser-lookup 'build_dir)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                        %
%                   SHEET MUSIC LAYOUT                   %
%                                                        %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\book {
  \bookOutputName #(string-append BuildDir SongNumber " - " Title " - Sheet Music")
  \paper {
    #(set-paper-size "letter")
    
    %
    % Turn on to see spacing details while you tweek the layout
    %
    % annotate-spacing = ##t
    
    %
    % Various variables that can be used to tweak vertical spacing
    %
    system-system-spacing.basic-distance = #10
    system-system-spacing.minimum-distance = #6
    score-markup-spacing.basic-distance = #0
    markup-system-spacing.basic-distance = #0
    
    indent = 0
    first-page-number = \FirstPage
    two-sided = ##t
    inner-margin = 0.25\in
    outer-margin = 0.25\in
    binding-offset = 0.5\in
    top-margin = 0.25\in
    bottom-margin = 0.25\in
    print-page-number = ##f
    ragged-bottom = ##f
    oddFooterMarkup = \markup {
      \fontsize #-2
      \on-the-fly \last-page {
        \column {
          \line {
            "Hymn:"
            \fromproperty #'header:meter
            \char ##x2022
            \fromproperty #'header:poet
          }
          \line {
            "Tune:"
            \fromproperty #'header:tune
            \char ##x2022
            \fromproperty #'header:composer
          }
          \line {
            \fromproperty #'header:copyright
          }
        }
      }
    }
    bookTitleMarkup = \markup {
      \override #'(baseline-skip . 3.5)
      \column {
        \override #'(baseline-skip . 3.5)
        \column {
          \abs-fontsize #20
          \bold
          \fill-line {
            \fromproperty #'header:lhs
            \override #'(line-width . 85)
            \wordwrap-field #'header:title
            \fromproperty #'header:rhs
          }
        }
      }
      \vspace #0.5
    }
  }
  \score {
    <<
      \new ChoirStaff <<
        \make-two-vocal-staves-with-stanzas
          "SheetMusic"
          #satb-lyrics-variable-names
      >>
    >>
    \layout {
      #(layout-set-staff-size 18)
      \context {
        \Lyrics
        \override LyricSpace.minimum-distance = #3
        \override LyricText.font-size = #0
        \override LyricText.self-alignment-X = #CENTER
        \override LyricHyphen.thickness = #1
        \override LyricHyphen.length = #1.0
        \override VerticalAxisGroup.nonstaff-nonstaff-spacing =
            #'((basic-distance . 0)
               (minimum-distance . 0)
               (padding . 0.85)
               (stretchability . 0))

      }
      \context {
        \Staff
        \override StaffSymbol.thickness = #1
        \override NoteHead.font-size = #1
        #(if MajorKey #{ \aikenHeads #} #{ \aikenHeadsMinor #})
      }
      \context {
        \Score
        \remove "Bar_number_engraver"
      }
    }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                        %
%                      SLIDES LAYOUT                     %
%                                                        %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

#(if (null? (ly:parser-lookup (string->symbol "SlideLyricMinimumDistance")))
     (ly:parser-define! (string->symbol "SlideLyricMinimumDistance") 3))

#(if (null? (ly:parser-lookup (string->symbol "SlideLyricFontSize")))
     (ly:parser-define! (string->symbol "SlideLyricFontSize") 0))

SlideLayout = \layout {
  \context {
    \Lyrics
    \override LyricSpace.minimum-distance = #(ly:parser-lookup (string->symbol "SlideLyricMinimumDistance"))
    \override LyricText.font-size = #(ly:parser-lookup (string->symbol "SlideLyricFontSize"))
    \override LyricText.self-alignment-X = #CENTER
    \override LyricHyphen.thickness = #2
    \override LyricHyphen.length = #1.2
    \override VerticalAxisGroup.staff-affinity = #CENTER
  }
  \context {
    \Staff
    \override StaffSymbol.thickness = #2
    \override NoteHead.font-size = #0
    \override VerticalAxisGroup.staff-staff-spacing = #'((basic-distance . 20))
    \aikenHeads
  }
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
}

VerseOneScore = #(if (get-id "VerseOne")
  #{ \score {
       <<
         \new ChoirStaff <<
           \make-two-vocal-staves-with-stanzas
             "Slides"
             #'("VerseOne")
         >>
       >>
       \SlideLayout
     } #}
     (make-music 'SequentialMusic 'void #t))

VerseTwoScore = #(if (get-id "VerseTwo")
  #{ \score {
       <<
         \new ChoirStaff <<
           \make-two-vocal-staves-with-stanzas
             "Slides"
             #'("VerseTwo")
         >>
       >>
       \SlideLayout
     } #}
     (make-music 'SequentialMusic 'void #t))

VerseThreeScore = #(if (get-id "VerseThree")
  #{ \score {
       <<
         \new ChoirStaff <<
           \make-two-vocal-staves-with-stanzas
             "Slides"
             #'("VerseThree")
         >>
       >>
       \SlideLayout
     } #}
     (make-music 'SequentialMusic 'void #t))

VerseFourScore = #(if (get-id "VerseFour")
  #{ \score {
       <<
         \new ChoirStaff <<
           \make-two-vocal-staves-with-stanzas
             "Slides"
             #'("VerseFour")
         >>
       >>
       \SlideLayout
     } #}
     (make-music 'SequentialMusic 'void #t))

VerseFiveScore = #(if (get-id "VerseFive")
  #{ \score {
       <<
         \new ChoirStaff <<
           \make-two-vocal-staves-with-stanzas
             "Slides"
             #'("VerseFive")
         >>
       >>
       \SlideLayout
     } #}
     (make-music 'SequentialMusic 'void #t))

VerseSixScore = #(if (get-id "VerseSix")
  #{ \score {
       <<
         \new ChoirStaff <<
           \make-two-vocal-staves-with-stanzas
             "Slides"
             #'("VerseSix")
         >>
       >>
       \SlideLayout
     } #}
     (make-music 'SequentialMusic 'void #t))

VerseSevenScore = #(if (get-id "VerseSeven")
  #{ \score {
       <<
         \new ChoirStaff <<
           \make-two-vocal-staves-with-stanzas
             "Slides"
             #'("VerseSeven")
         >>
       >>
       \SlideLayout
     } #}
     (make-music 'SequentialMusic 'void #t))

VerseEightScore = #(make-music 'SequentialMusic 'void #t)
VerseNineScore = #(make-music 'SequentialMusic 'void #t)

\book {
  \bookOutputName #(string-append BuildDir SongNumber " - " Title " - Slides")
  \paper {
    #(set-paper-size "arch a" 'landscape )

    %
    % Turn on to see spacing details while you tweek the layout
    %
    % annotate-spacing = ##t
    
    indent = 0
    left-margin = 0.25\in
    right-margin = 0.25\in
    top-margin = 0.25\in
    bottom-margin = 0.25\in
    print-page-number = ##f
    ragged-bottom = ##t
    oddFooterMarkup = \markup {
      \on-the-fly #first-page \column {
        \fontsize #-2
        \column {
          \line {
            "Hymn:"
            \fromproperty #'header:meter
            \char ##x2022
            \fromproperty #'header:poet
          }
          \line {
            "Tune:"
            \fromproperty #'header:tune
            \char ##x2022
            \fromproperty #'header:composer
          }
          \line {
            \fromproperty #'header:copyright
          }
          \line {
            \fromproperty #'header:license
          }
        }
      }
    }
    bookTitleMarkup = \markup {
      \center-column {
        \fill-line {
          \null
          {
            \abs-fontsize #44
            \bold
            \fromproperty #'header:songNumber
          }
        }
        \vspace #3
        \override #'(line-width . 70)
        \center-column {
          \abs-fontsize #48
          \bold
          \wordwrap-field #'header:title
        }
        \fromproperty #'header:scripture
      }
    }
    scoreTitleMarkup = ##f
    #(layout-set-staff-size 48)
  }
  \pageBreak
  \VerseOneScore
  \VerseTwoScore
  \VerseThreeScore
  \VerseFourScore
  \VerseFiveScore
  \VerseSixScore
  \VerseSevenScore
  \VerseEightScore
  \VerseNineScore
  %{
  #(if (get-id "VerseOne")
       #{
         \score {
           <<
             \new ChoirStaff <<
               \make-two-vocal-staves-with-stanzas
               "Slides"
               #'("VerseOne")
             >>
           >>
           \layout {
             \context {
               \Lyrics
               \override LyricSpace.minimum-distance = #3
               \override LyricText.font-size = #0
               \override LyricText.self-alignment-X = #CENTER
               \override LyricHyphen.thickness = #2
               \override LyricHyphen.length = #1.2
             }
             \context {
               \Staff
               \override StaffSymbol.thickness = #2
               \override NoteHead.font-size = #0
             }
           }
         }
       #})%}
}

%  \bookOutputName #(string-append BuildDir SongNumber " - " Title " - Slides")
%{
             \layout {
               \context {
                 \Lyrics
                 \override LyricSpace.minimum-distance = #3
                 \override LyricText.font-size = #0
                 \override LyricText.self-alignment-X = #CENTER
                 \override LyricHyphen.thickness = #2
                 \override LyricHyphen.length = #1.2
               }
               \context {
                 \Staff
                 \override StaffSymbol.thickness = #2
                 \override NoteHead.font-size = #0
               }
             }

#(define slide-scores '())
#(map
  (lambda (verse-name)
    (if (get-id verse-name)
        (append slide-scores
          (ly:make-score
           #{
             <<
               \new ChoirStaff <<
                 \make-two-vocal-staves-with-stanzas
                 "Slides"
                 #(list verse-name)
               >>
             >>
           #}))))
  lyrics-names)

#(ly:make-book slidePaperBlock slide-scores)
%{     (if verse-name
       #{
         \score {
           <<
             \new ChoirStaff <<
               \make-two-vocal-staves-with-stanzas
               "Slides"
               #'(verse-name)
             >>
           >>
           \layout {
             \context {
               \Lyrics
               \override LyricSpace.minimum-distance = \lyricMinimumDistance
               \override LyricText.font-size = \lyricFontSize
               \override LyricText.self-alignment-X = #CENTER
               \override LyricHyphen.thickness = \hyphenThickness
               \override LyricHyphen.length = \hyphenLength
             }
             \context {
               \Staff
               \override StaffSymbol.thickness = \staffLineThickness
               \override NoteHead.font-size = \noteHeadFontSize
             }
           }
         }
       #} ) %}
%}
