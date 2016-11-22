\version "2.19.49"

\include "Words-and-music.ly"

#(set-global-staff-size 44)

\book {
  \bookOutputName #(string-append build_dir songNumber " - " title " - Slides")
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
            \char ##x2022
            "arr:"
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
        \vspace #2
        \override #'(line-width . 60)
        \center-column {
          \abs-fontsize #24
          \italic
          \wordwrap-field #'header:scripture
        }
      }
    }
    scoreTitleMarkup = ##f
  }
  \pageBreak

  \score {
    <<
      \override Score.BarNumber.break-visibility = ##(#f #f #f)
      %\override Score.BarNumber.break-visibility = ##(#t #t #t)
      %\set Score.barNumberVisibility = #all-bar-numbers-visible
      \new Staff <<
        \new Voice = "sopranos" {
          \global
          \keepWithTag #'(usePartials firstTime) \sopranoVerse
        }
        \new NullVoice = "breaks" {
          \global
          \keepWithTag #'usePartials' \slideMusicFirstBreaks
        }
      >>
      \new Lyrics \lyricsto "sopranos" {
        \once \override LyricText.self-alignment-X = #CENTER
        \sopranoLyrics
      }
    >>
      
    \layout {
      ragged-last = ##f
      
      \context {
        \Lyrics
        \override LyricSpace #'minimum-distance = #1.5
      }
    }
  }
  \score {
    <<
      \override Score.BarNumber.break-visibility = ##(#f #f #f)
      %\override Score.BarNumber.break-visibility = ##(#t #t #t)
      %\set Score.barNumberVisibility = #all-bar-numbers-visible
      \new Staff <<
        \new Voice = "sopranos" {
          \global
          \keepWithTag #'(usePartials secondTime) \sopranoVerse
        }
        \new NullVoice = "breaks" {
          \global
          \keepWithTag #'usePartials' \slideMusicSecondBreaks
        }
      >>
      \new Lyrics \lyricsto "sopranos" {
        \once \override LyricText.self-alignment-X = #CENTER
        \sopranoLyrics
      }
      \new Staff {
        \new Voice = "basses" {
          \clef bass
          \global
          \keepWithTag #'usePartials' \bassVerse
        }
      }
      \new Lyrics \lyricsto "basses" {
        \once \override LyricText.self-alignment-X = #CENTER
        \bassLyrics
      }
    >>
      
    \layout {
      ragged-last = ##f
      
      \context {
        \Lyrics
        \override LyricSpace #'minimum-distance = #1.5
      }
    }
  }
  \score {
    <<
      \override Score.BarNumber.break-visibility = ##(#f #f #f)
      %\override Score.BarNumber.break-visibility = ##(#t #t #t)
      %\set Score.barNumberVisibility = #all-bar-numbers-visible
      \new Staff <<
        \new Voice = "sopranos" {
          \global
          \keepWithTag #'(usePartials thirdTime) \sopranoVerse
        }
        \new NullVoice = "breaks" {
          \global
          \keepWithTag #'usePartials' \slideMusicThirdBreaks
        }
      >>
      \new Lyrics \lyricsto "sopranos" {
        \once \override LyricText.self-alignment-X = #CENTER
        \sopranoLyrics
      }
      \new Staff {
        \new Voice = "altos" {
          \global
          \keepWithTag #'usePartials \altoVerse
        }
      }
      \new Lyrics \lyricsto "altos" {
        \once \override LyricText.self-alignment-X = #CENTER
        \altoLyrics
      }
      \new Staff {
        \new Voice = "basses" {
          \clef bass
          \global
          \keepWithTag #'usePartials' \bassVerse
        }
      }
      \new Lyrics \lyricsto "basses" {
        \once \override LyricText.self-alignment-X = #CENTER
        \bassLyrics
      }
    >>
      
    \layout {
      ragged-last = ##f
      
      \context {
        \Lyrics
        \override LyricSpace #'minimum-distance = #1.5
      }
    }
  }
  \score {
    <<
      \override Score.BarNumber.break-visibility = ##(#f #f #f)
      %\override Score.BarNumber.break-visibility = ##(#t #t #t)
      %\set Score.barNumberVisibility = #all-bar-numbers-visible
      \new Staff <<
        \new Voice = "sopranos" {
          \global
          \keepWithTag #'(usePartials fourthTime) \sopranoVerse
        }
        \new NullVoice = "breaks" {
          \global
          \keepWithTag #'usePartials' \slideMusicFourthBreaks
        }
      >>
      \new Lyrics \lyricsto "sopranos" {
        \once \override LyricText.self-alignment-X = #CENTER
        \sopranoLyrics
      }
      \new Staff {
        \new Voice = "altos" {
          \global
          \keepWithTag #'usePartials \altoVerse
        }
      }
      \new Lyrics \lyricsto "altos" {
        \once \override LyricText.self-alignment-X = #CENTER
        \altoLyrics
      }
      \new Staff {
        \new Voice = "tenors" {
          \clef bass
          \global
          \keepWithTag #'usePartials' \tenorVerse
        }
      }
      \new Lyrics \lyricsto "tenors" {
        \once \override LyricText.self-alignment-X = #CENTER
        \tenorLyrics
      }
      \new Staff {
        \new Voice = "basses" {
          \clef bass
          \global
          \keepWithTag #'usePartials' \bassVerse
        }
      }
      \new Lyrics \lyricsto "basses" {
        \once \override LyricText.self-alignment-X = #CENTER
        \bassLyrics
      }
    >>
      
    \layout {
      ragged-last = ##f
      
      \context {
        \Lyrics
        \override LyricSpace #'minimum-distance = #1.5
      }
    }
  }
}
