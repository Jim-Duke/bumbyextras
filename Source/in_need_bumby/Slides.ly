\version "2.19.49"

\include "Words-and-music.ly"

SlideStaffStaffSpacing = #16

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
            \optional-field "• " #'header:poet
            \optional-field "• tr. " #'header:translator
            \optional-field "• vs. " #'header:versifier
          }
          \line {
            "Tune:"
            \fromproperty #'header:tune
            \optional-field "• " #'header:composer
            \optional-field "• arr. " #'header:arranger
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
      \context Staff = upper <<
        \partCombine
          {
            \global
            \keepWithTag #'usePartials \SopranoPartOne
            \SopranoPartTwo
            \SopranoFirstEnding
          }
          {
            \global
            \keepWithTag #'usePartials \AltoPartOne
            \AltoPartTwo
            \AltoFirstEnding
          }
        \new NullVoice = breaks {
          \global
          \keepWithTag #'usePartials \SlidesVerseOneBreaks
        }
        \new NullVoice = alignVoice {
          \global
          \keepWithTag #'usePartials \SopranoPartOne
          \SopranoPartTwo
          \SopranoFirstEnding
        }
        \new Lyrics \lyricsto "alignVoice" {
          \huge \PartOneLyrics \PartTwoLyrics \FirstEndingLyrics
        }
      >>
      \context Staff = lower <<
        \clef bass
        \partCombine
          {
            \global
            \keepWithTag #'usePartials \TenorPartOne
            \TenorPartTwo
            \TenorFirstEnding
          }
          {
            \global
            \keepWithTag #'usePartials \BassPartOne
            \BassPartTwo
            \BassFirstEnding
          }
      >>
    >>
    \SlideLayout
  }
  \VerseTitleMarkup
  \score {
    <<
      \override Score.BarNumber.break-visibility = ##(#f #f #f)
      \context Staff = upper <<
        \partCombine
          {
            \global
            \keepWithTag #'usePartials \SopranoPartOne
            \SopranoPartTwo
            \SopranoFirstEnding
          }
          {
            \global
            \keepWithTag #'usePartials \AltoPartOne
            \AltoPartTwo
            \AltoFirstEnding
          }
        \new NullVoice = breaks {
          \global
          \keepWithTag #'usePartials \SlidesVerseOneBreaks
        }
        \new NullVoice = alignVoice {
          \global
          \keepWithTag #'usePartials \SopranoPartOne
          \SopranoPartTwo
          \SopranoFirstEnding
        }
        \new Lyrics \lyricsto "alignVoice" {
          \huge \PartOneLyrics \PartTwoLyrics \FirstEndingLyrics
        }
      >>
      \context Staff = lower <<
        \clef bass
        \partCombine
          {
            \global
            \keepWithTag #'usePartials \TenorPartOne
            \TenorPartTwo
            \TenorFirstEnding
          }
          {
            \global
            \keepWithTag #'usePartials \BassPartOne
            \BassPartTwo
            \BassFirstEnding
          }
      >>
    >>
    \SlideLayout
  }
  \VerseTitleMarkup \noPageBreak
  \score {
    <<
      \override Score.BarNumber.break-visibility = ##(#f #f #f)
      \context Staff = upper <<
        \partCombine
          {
            \global
            \keepWithTag #'usePartials \SopranoPartTwo
            \SopranoSecondEnding
          }
          {
            \global
            \keepWithTag #'usePartials \AltoPartTwo
            \AltoSecondEnding
          }
        \new NullVoice = breaks {
          \global
          \keepWithTag #'usePartials \SlidesVerseTwoBreaks
        }
        \new NullVoice = alignVoice {
          \global
          \keepWithTag #'usePartials \SopranoPartTwo
          \SopranoSecondEnding
        }
        \new Lyrics \lyricsto "alignVoice" {
          \huge \PartTwoLyrics \SecondEndingLyrics
        }
      >>
      \context Staff = lower <<
        \clef bass
        \partCombine
          {
            \global
            \keepWithTag #'usePartials \TenorPartTwo
            \TenorSecondEnding
          }
          {
            \global
            \keepWithTag #'usePartials \BassPartTwo
            \BassSecondEnding
          }
      >>
    >>
    \SlideLayout
  }
}
