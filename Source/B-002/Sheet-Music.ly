\version "2.18.2"

\include "Words-and-music.ly"

%
% Adjust the staff size to adjust the basic font size of the words and music.
%
#(set-global-staff-size 20)

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
    system-system-spacing #'basic-distance = #12
    system-system-spacing #'minimum-distance = #8
    score-markup-spacing #'basic-distance = #0
    markup-system-spacing #'basic-distance = #0
    
    indent = 0
    left-margin = 1\in
    right-margin = 1\in
    top-margin = 0.3\in
    bottom-margin = 0.25\in
    print-page-number = ##f
    ragged-bottom = ##t
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
            \char ##x2022 "arr. "
            \fromproperty #'header:arranger
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
      \override #'(baseline-skip . 3.5)
      \column {
        \fill-line { \fromproperty #'header:dedication }
        \override #'(baseline-skip . 3.5)
        \column {
          \abs-fontsize #24
          \bold
          \fill-line {
            \fromproperty #'header:songNumber
            \fromproperty #'header:title
            ""
          }
          \vspace #2
        }
      }
    }
  }

  \score {
    % Verses Section
    \context ChoirStaff <<
      %\override Score.BarNumber.break-visibility = ##(#t #t #t)
      %\set Score.barNumberVisibility = #all-bar-numbers-visible
      \context Staff = upper <<
        \context Voice = sopranos {
          \voiceOne {
            \global
            \keepWithTag #'usePartials' \sopranoVerse
          }
        }
        \context Voice = altos {
          \voiceTwo {
            \global
            \keepWithTag #'usePartials' \altoVerse
          }
        }
        \context NullVoice = sheetMusicBreaks {
          \global
          \sheetMusicBreaks
        }
        \context NullVoice = verseOneAlign {
          \global
          \keepWithTag #'usePartials' \verseOneAlign
        }
        \context NullVoice = verseTwoAlign {
          \global
          \keepWithTag #'usePartials' \verseTwoAlign
        }
        \new Lyrics \lyricsto "verseOneAlign" {
          \once \override LyricText.self-alignment-X = #CENTER
          \verseOne
        }
        \new Lyrics \lyricsto "verseTwoAlign" {
          \once \override LyricText.self-alignment-X = #CENTER
          \verseTwo
        }
      >>
      \context Staff = lower <<
        \clef bass
        \context Voice = tenors {
          \voiceOne {
            \global
            \keepWithTag #'usePartials' \tenorVerse
          }
        }
        \context Voice = basses {
          \voiceTwo {
            \global
            \keepWithTag #'usePartials' \bassVerse
          }
        }
      >>
    >>
      
    \layout {
      ragged-last = ##f
    }
  }
  \pageBreak
  \markup {	
    \huge \bold "Chorus:"
  }
  \score {
    \context ChoirStaff <<
      %\override Score.BarNumber.break-visibility = ##(#t #t #t)
      %\set Score.barNumberVisibility = #all-bar-numbers-visible
      \context Staff = upper <<
        \context Voice = sopranos {
          \voiceOne {
            \global
            \keepWithTag #'usePartials' \sopranoChorus
          }
        }
        \context Voice = altos {
          \voiceTwo {
            \global
            \keepWithTag #'usePartials' \altoChorus
          }
        }
        \new Lyrics \lyricsto "sopranos" {
          \once \override LyricText.self-alignment-X = #CENTER
          \chorusLyrics
        }
      >>
      \context Staff = lower <<
        \clef bass
        \context Voice = tenors {
          \voiceOne {
            \global
            \keepWithTag #'usePartials' \tenorChorus
          }
        }
        \context Voice = basses {
          \voiceTwo {
            \global
            \keepWithTag #'usePartials' \bassChorus
          }
        }
      >>
    >>
    \layout {}
  }%}
  %
  % Extra additional score containing all the music so we can have a single MIDI file
  %
  \score {
    \context ChoirStaff <<
      \context Staff = upper <<
        \context Voice = sopranos {
          \voiceOne {
            \global
            \keepWithTag #'usePartials' \sopranoVerse
            \removeWithTag #'usePartials' \sopranoChorus
          }
        }
        \context Voice = altos {
          \voiceTwo {
            \global
            \keepWithTag #'usePartials' \altoVerse
            \removeWithTag #'usePartials' \altoChorus
          }
        }
      >>
      \context Staff = lower <<
        \clef bass
        \context Voice = tenors {
          \voiceOne {
            \global
            \keepWithTag #'usePartials' \tenorVerse
            \removeWithTag #'usePartials' \tenorChorus
          }
        }
        \context Voice = basses {
          \voiceTwo {
            \global
            \keepWithTag #'usePartials' \bassVerse
            \removeWithTag #'usePartials' \bassChorus
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