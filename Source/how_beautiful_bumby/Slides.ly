\version "2.19.49"

\include "Words-and-music.ly"
\include "../../../LilypondTemplates/standard-elements.ly"

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
            \char ##x2022 "arr."
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
    #(layout-set-staff-size 44)
  }
  \pageBreak

  \score {
    <<
      \override Score.BarNumber.break-visibility = ##(#f #f #f)
      \context Staff = upper <<
        \partCombine
          {
            \global
            \keepWithTag #'usePartials' \sopranoVerse
          }
          {
            \global
            \keepWithTag #'usePartials' \altoVerse
          }
        \new NullVoice = breaks {
          \global
          \keepWithTag #'usePartials' \slideMusicBreaks
        }
        \new NullVoice = alignVoice {
          \global
          \keepWithTag #'usePartials \sopranoVerse
        }
        \new Lyrics \lyricsto "alignVoice" {
          \huge \verseOne \verseCommon
        }
      >>
      \context Staff = lower <<
        \clef bass
        \partCombine
          {
            \global
            \keepWithTag #'usePartials' \tenorVerse
          }
          {
            \global
            \keepWithTag #'usePartials' \bassVerse
          }
      >>
    >>
    \SlideLayout
  }
  \score {
    <<
      \override Score.BarNumber.break-visibility = ##(#f #f #f)
      \context Staff = upper <<
        \partCombine
          {
            \global
            \keepWithTag #'usePartials' \sopranoVerse
          }
          {
            \global
            \keepWithTag #'usePartials' \altoVerse
          }
        \new NullVoice = breaks {
          \global
          \keepWithTag #'usePartials' \slideMusicBreaks
        }
        \new NullVoice = alignVoice {
          \global
          \keepWithTag #'usePartials \sopranoVerse
        }
        \new Lyrics \lyricsto "alignVoice" {
          \huge \verseTwo \verseCommon
        }
      >>
      \context Staff = lower <<
        \clef bass
        \partCombine
          {
            \global
            \keepWithTag #'usePartials' \tenorVerse
          }
          {
            \global
            \keepWithTag #'usePartials' \bassVerse
          }
      >>
    >>
    \SlideLayout
  }
  \score {
    <<
      \override Score.BarNumber.break-visibility = ##(#f #f #f)
      \context Staff = upper <<
        \partCombine
          {
            \global
            \keepWithTag #'usePartials' \sopranoBridge
          }
          {
            \global
            \keepWithTag #'usePartials' \altoBridge
          }
        \new NullVoice = breaks {
          \global
          \keepWithTag #'usePartials' \slideMusicBridgeBreaks
        }
        \new NullVoice = alignVoice {
          \global
          \keepWithTag #'usePartials \sopranoBridge
        }
        \new Lyrics \lyricsto "alignVoice" {
          \huge \bridgeLyrics
        }
      >>
      \context Staff = lower <<
        \clef bass
        \partCombine
          {
            \global
            \keepWithTag #'usePartials' \tenorBridge
          }
          {
            \global
            \keepWithTag #'usePartials' \bassBridge
          }
      >>
    >>
    \SlideLayout
  }
  \score {
    <<
      \override Score.BarNumber.break-visibility = ##(#f #f #f)
      \context Staff = upper <<
        \partCombine
          {
            \global
            \keepWithTag #'usePartials' \sopranoVerse
          }
          {
            \global
            \keepWithTag #'usePartials' \altoVerse
          }
        \new NullVoice = breaks {
          \global
          \keepWithTag #'usePartials' \slideMusicBreaks
        }
        \context NullVoice = align {
          \global
          \alignVerse
        }
        \new Lyrics \lyricsto "align" {
          \huge \verseThree \verseCommon
        }
      >>
      \context Staff = lower <<
        \clef bass
        \partCombine
          {
            \global
            \keepWithTag #'usePartials' \tenorVerse
          }
          {
            \global
            \keepWithTag #'usePartials' \bassVerse
          }
      >>
    >>
    \SlideLayout
  }
  \score {
    <<
      \override Score.BarNumber.break-visibility = ##(#f #f #f)
      \context Staff = upper <<
        \partCombine
          {
            \global
            \keepWithTag #'usePartials' \sopranoVerse
          }
          {
            \global
            \keepWithTag #'usePartials' \altoVerse
          }
        \new NullVoice = breaks {
          \global
          \keepWithTag #'usePartials' \slideMusicBreaks
        }
        \new NullVoice = alignVoice {
          \global
          \keepWithTag #'usePartials \sopranoVerse
        }
        \new Lyrics \lyricsto "alignVoice" {
          \huge \verseFour \verseCommon \bridgeLyrics
        }
      >>
      \context Staff = lower <<
        \clef bass
        \partCombine
          {
            \global
            \keepWithTag #'usePartials' \tenorVerse
          }
          {
            \global
            \keepWithTag #'usePartials' \bassVerse
          }
      >>
    >>
    \SlideLayout
  }
}
