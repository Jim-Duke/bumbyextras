\version "2.19.49"

\include "Words-and-music.ly"

#(set-global-staff-size 20)

\book {
  \bookOutputName #(string-append build_dir songNumber " - " title " - Sheet Music")
  \paper {
    #(set-paper-size "letter")
    
    %
    % Turn on to see spacing details while you tweek the layout
    %
    % annotate-spacing = ##t
    
    %
    % Various variables that can be used to tweak vertical spacing
    %
    system-system-spacing.basic-distance = #12
    system-system-spacing.minimum-distance = #8
    score-markup-spacing.basic-distance = #0
    markup-system-spacing.basic-distance = #0
    
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
            %{\char ##x2022 "arr. "
            \fromproperty #'header:arranger%}
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
            \fromproperty #'header:songNumber_lhs
            \fromproperty #'header:title
            \fromproperty #'header:songNumber_rhs
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
        \context NullVoice = breaks {
          \global
          \sheetMusicBreaks
        }
        \new Lyrics \lyricsto "sopranos" {
          \once \override LyricText.self-alignment-X = #CENTER
          \verseOne
        }
        \new Lyrics \lyricsto "sopranos" {
          \once \override LyricText.self-alignment-X = #CENTER
          \verseTwo
        }
        \new Lyrics \lyricsto "sopranos" {
          \once \override LyricText.self-alignment-X = #CENTER
          \verseThree
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
}
