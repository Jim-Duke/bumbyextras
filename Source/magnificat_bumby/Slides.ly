\version "2.19.49"

\include "Words-and-music.ly"

SlideLyricFontSize = 2

\include "../../../LilypondTemplates/standard-elements.ly"

VerseTitleMarkup = \markup {
    \fill-line {
      \null
      \raise #1
      \override #'(line-width . 70)
      \center-column {
        \abs-fontsize #40
        \bold
        \Title
      }
      {
        \abs-fontsize #40
        \bold
        \raise #1
        \SongNumber
      }
    }
  }

\book {
  \paper {
    #(set-paper-size "arch alandscape" )

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
        \SlideScripture
      }
    }
    scoreTitleMarkup = ##f
    #(layout-set-staff-size 44)
  }
  \pageBreak
  \VerseTitleMarkup
  \score {
    <<
      \override Score.BarNumber.break-visibility = ##(#f #f #f)
      \new Staff <<
        \new Voice = "sopranos" {
          \global
          \keepWithTag #'(usePartials firstTime) \sopranoVerse
        }
        \new NullVoice = "breaks" {
          \global
          \keepWithTag #'usePartials \slideMusicFirstBreaks
        }
      >>
      \new Lyrics \lyricsto "sopranos" {
        \sopranoLyrics
      }
    >>
    \SlideLayout
  }
  \VerseTitleMarkup
  \score {
    <<
      \override Score.BarNumber.break-visibility = ##(#f #f #f)
      \new Staff <<
        \new Voice = "sopranos" {
          \global
          \keepWithTag #'(usePartials secondTime) \sopranoVerse
        }
        \new NullVoice = "breaks" {
          \global
          \keepWithTag #'usePartials \slideMusicSecondBreaks
        }
      >>
      \new Lyrics \lyricsto "sopranos" {
        \sopranoLyrics
      }
      \new Staff {
        \new Voice = "basses" {
          \clef bass
          \global
          \keepWithTag #'usePartials \bassVerse
        }
      }
      \new Lyrics \lyricsto "basses" {
        \bassLyrics
      }
    >>
    \SlideLayout
  }
  \VerseTitleMarkup
  \score {
    <<
      \override Score.BarNumber.break-visibility = ##(#f #f #f)
      \new Staff <<
        \new Voice = "sopranos" {
          \global
          \keepWithTag #'(usePartials thirdTime) \sopranoVerse
        }
        \new NullVoice = "breaks" {
          \global
          \keepWithTag #'usePartials \slideMusicThirdBreaks
        }
      >>
      \new Lyrics \lyricsto "sopranos" {
        \sopranoLyrics
      }
      \new Staff {
        \new Voice = "altos" {
          \global
          \keepWithTag #'usePartials \altoVerse
        }
      }
      \new Lyrics \lyricsto "altos" {
        \altoLyrics
      }
      \new Staff {
        \new Voice = "basses" {
          \clef bass
          \global
          \keepWithTag #'usePartials \bassVerse
        }
      }
      \new Lyrics \lyricsto "basses" {
        \bassLyrics
      }
    >>
    \SlideLayout
  }
  \VerseTitleMarkup
  \score {
    <<
      \override Score.BarNumber.break-visibility = ##(#f #f #f)
      \new Staff <<
        \new Voice = "sopranos" {
          \global
          \keepWithTag #'(usePartials fourthTime) \sopranoVerse
        }
        \new NullVoice = "breaks" {
          \global
          \keepWithTag #'usePartials \slideMusicFourthBreaks
        }
      >>
      \new Lyrics \lyricsto "sopranos" {
        \sopranoLyrics
      }
      \new Staff {
        \new Voice = "altos" {
          \global
          \keepWithTag #'usePartials \altoVerse
        }
      }
      \new Lyrics \lyricsto "altos" {
        \altoLyrics
      }
      \new Staff {
        \new Voice = "tenors" {
          \clef bass
          \global
          \keepWithTag #'usePartials \tenorVerse
        }
      }
      \new Lyrics \lyricsto "tenors" {
        \tenorLyrics
      }
      \new Staff {
        \new Voice = "basses" {
          \clef bass
          \global
          \keepWithTag #'usePartials \bassVerse
        }
      }
      \new Lyrics \lyricsto "basses" {
        \bassLyrics
      }
    >>
    \SlideLayout
  }
}
