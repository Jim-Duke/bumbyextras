\version "2.18.2"

\include "Words-and-music.ly"

%
% Adjust the staff size to adjust the basic font size of the words and music.
%
#(set-global-staff-size 18)

% Standard full page format.
\book {
  \paper {
    #(set-paper-size "letter")
    
    %
    % Turn on to see spacing details while you tweek the layout
    %
    % annotate-spacing = ##t
    
    %
    % Various variables that can be used to tweak vertical spacing
    %
    system-system-spacing #'basic-distance = #4
    system-system-spacing #'minimum-distance = #4
    score-markup-spacing #'basic-distance = #0
    markup-system-spacing #'basic-distance = #0
    
    indent = 0
    left-margin = 1\in
    right-margin = 1\in
    top-margin = 0.3\in
    bottom-margin = 0.25\in
    print-page-number = ##f
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
%            \char ##x2022 "arr. "
%            \fromproperty #'header:arranger
          }
          \line {
            \fromproperty #'header:copyright
          }
          \line {
            \fromproperty #'header:license
          }
%          \vspace #0.25
%          \line {
%            "Engraved using Lilypond (www.lilypond.org) for www.acapellaworship.org.  PDF "
%          }
%          \line {
%            "This hymn may be freely copied and distributed and we encourage its use in congregational acapella singing in worship everywhere."
%          }
        }
      }
    }
    bookTitleMarkup = \markup {
      \override #'(baseline-skip . 3.5)
      \column {
        \fill-line { \fromproperty #'header:dedication }
        \override #'(baseline-skip . 3.5)
        \column {
          \abs-fontsize #24
          \bold
          \fill-line {
            ""
            \fromproperty #'header:title
            \fromproperty #'header:songNumber
          }
          \fill-line {
            \large \bold
            \fromproperty #'header:subtitle
          }
          \fill-line {
            \smaller \bold
            \fromproperty #'header:subsubtitle
          }
          \vspace #2
        }
      }
    }
  }

  \score {
    % Verses Section
    \context ChoirStaff <<
      \context Staff = upper <<
        \context Voice = sopranos {
          \voiceOne {
            \global
            \sopranoVerse
          }
        }
        \context Voice = altos {
          \voiceTwo {
            \global
            \altoVerse
          }
        }
        \context Lyrics = one { \verseOne \verseCommon }
        \context Lyrics = two { \verseTwo }
        \context Lyrics = three { \verseThree }
        \context Lyrics = four { \verseFour }
      >>
      \context Staff = lower <<
        \clef bass
        \context Voice = tenors {
          \voiceOne {
            \global
            \tenorVerse
          }
        }
        \context Voice = basses {
          \voiceTwo {
            \global
            \bassVerse
          }
        }
      >>
    >>
      
    \layout {
      ragged-last = ##f
    }
  }
  \markup {	
    \huge \bold "Bridge (after verse 2):"
  }
  \score {
    \context ChoirStaff <<
      \context Staff = upper <<
        \context Voice = sopranos {
          \voiceOne {
            \global
            \sopranoBridge
          }
        }
        \context Voice = altos {
          \voiceTwo {
            \global
            \altoBridge
          }
        }
        \context Lyrics = bridge { \bridgeLyrics }
      >>
      \context Staff = lower <<
        \clef bass
        \context Voice = tenors {
          \voiceOne {
            \global
            \tenorBridge
          }
        }
        \context Voice = basses {
          \voiceTwo {
            \global
            \bassBridge
          }
        }
      >>
    >>
    \layout {}
  }
  %
  % Extra additional score containing all the music so we can have a single MIDI file
  %
  \score {
    \context ChoirStaff <<
      \context Staff = upper <<
        \context Voice = sopranos {
          \voiceOne {
            \global
%            \partial 4
            \sopranoVerse \sopranoBridge
%            \sopranoChorus
          }
        }
        \context Voice = altos {
          \voiceTwo {
            \global
%            \partial 4
            \altoVerse \altoBridge
%            \altoChorus
          }
        }
      >>
      \context Staff = lower <<
        \clef bass
        \context Voice = tenors {
          \voiceOne {
            \global
%            \partial 4
            \tenorVerse \tenorBridge
%            \tenorChorus
          }
        }
        \context Voice = basses {
          \voiceTwo {
            \global
%            \partial 4
            \bassVerse \bassBridge
%            \bassChorus
          }
        }
      >>
    >>
    \midi {
      \context {
        \Staff
        \remove "Staff_performer"
      }
      \context {
        \Voice
          \consists "Staff_performer"
      }
      \tempo 4 = 110
    }
  }
}