\version "2.19.49"

\include "Words-and-music.ly"

#(set-global-staff-size 18)

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
    system-system-spacing.basic-distance = #14
    system-system-spacing.minimum-distance = #14
    score-markup-spacing.basic-distance = #0
    markup-system-spacing.basic-distance = #0
    
    indent = 0
    left-margin = 0.75\in
    right-margin = 0.75\in
    top-margin = 0.25\in
    bottom-margin = 0.25\in
    print-page-number = ##f
    ragged-bottom = ##t
    oddFooterMarkup = \markup {
      \fontsize #-2
      \on-the-fly \last-page {
        \column {
          \line {
            "Hymn:"
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
          \vspace #1
          \fill-line {
            \override #'(line-width . 20) ""
            \override #'(line-width . 80) \center-column {
              \abs-fontsize #10
              \italic \wordwrap-field #'header:scripture
            }
            \override #'(line-width . 20) ""
          }
        }
        \vspace #1
      }
    }
  }

  \score {
    \new ChoirStaff <<
      \override Score.BarNumber.break-visibility = ##(#f #f #f)
      %\override Score.BarNumber.break-visibility = ##(#t #t #t)
      %\set Score.barNumberVisibility = #all-bar-numbers-visible
      \new Staff \with { instrumentName = \markup { \fontsize #2 \circle { 1 } \hspace #1 } } <<
        \new Voice = "sopranos" {
          \global
          \override NoteHead #'font-size = #1
          \keepWithTag #'(usePartials sheetMusic) \sopranoVerse
        }
        \new NullVoice = "breaks" {
          \global
          \keepWithTag #'usePartials \sheetMusicBreaks
        }
      >>
      \new Lyrics \lyricsto "sopranos" {
        \once \override LyricText.self-alignment-X = #CENTER
        \sopranoLyrics
      }
      \new Staff \with { instrumentName = \markup { \fontsize #2 \circle { 3 } \hspace #1 } } {
        \new Voice = "altos" {
          \global
          \override NoteHead #'font-size = #1
          \keepWithTag #'usePartials \altoVerse
        }
      }
      \new Lyrics \lyricsto "altos" {
        \once \override LyricText.self-alignment-X = #CENTER
        \altoLyrics
      }
      \new Staff  \with { instrumentName = \markup { \fontsize #2 \circle { 4 } \hspace #1 } } {
        \new Voice = "tenors" {
          \clef bass
          \global
          \override NoteHead #'font-size = #1
          \keepWithTag #'usePartials \tenorVerse
        }
      }
      \new Lyrics \lyricsto "tenors" {
        \once \override LyricText.self-alignment-X = #CENTER
        \tenorLyrics
      }
      \new Staff  \with { instrumentName = \markup { \fontsize #2 \circle { 2 } \hspace #1 } } {
        \new Voice = "basses" {
          \clef bass
          \global
          \override NoteHead #'font-size = #1
          \keepWithTag #'usePartials \bassVerse
        }
      }
      \new Lyrics \lyricsto "basses" {
        \once \override LyricText.self-alignment-X = #CENTER
        \bassLyrics
      }
    >>
      
    \layout {
      \context {
        \Lyrics \override LyricText #'font-size = #0
      }
      
      ragged-last = ##f
    }
  }
  \markup \italic {
    \column {
      \vspace #3
      "Sequence:"
      "1st time through - Soprano only"
      "2nd time through - add Bass"
      "3rd time through - add Alto"
      "4th time through - add Tenor"
    }
  }
}
