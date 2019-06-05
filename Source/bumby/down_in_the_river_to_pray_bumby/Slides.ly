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
            \keepWithTag #'(usePartials verseOne) \SopranoPartOneMusic
            \keepWithTag #'verseOne \SopranoPartTwoMusic
          }
          {
            \global
            \keepWithTag #'(usePartials verseOne) \AltoPartOneMusic
            \keepWithTag #'verseOne \AltoPartTwoMusic
          }
        \new NullVoice = breaks {
          \global
          \keepWithTag #'usePartials \SlidesPartOneBreaks
          \SlidesPartTwoBreaks
        }
        \new NullVoice = alignVoice {
          \global
          \keepWithTag #'(usePartials verseOne) \AlignPartOneMusic
          \keepWithTag #'verseOne \AlignPartTwoMusic
        }
        \new Lyrics \lyricsto "alignVoice" {
          \huge
          \VerseOnePartOne
          \VerseOnePartTwo
        }
      >>
      \context Staff = lower <<
        \clef bass
        \partCombine
          {
            \global
            \keepWithTag #'(usePartials verseOne) \TenorPartOneMusic
            \keepWithTag #'verseOne \TenorPartTwoMusic
          }
          {
            \global
            \keepWithTag #'(usePartials verseOne) \BassPartOneMusic
            \keepWithTag #'verseOne \BassPartTwoMusic
          }
      >>
    >>
    \SlideLayout
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
            \keepWithTag #'(usePartials verseTwo) \SopranoPartOneMusic
            \keepWithTag #'verseTwo \SopranoPartTwoMusic
          }
          {
            \global
            \keepWithTag #'(usePartials verseTwo) \AltoPartOneMusic
            \keepWithTag #'verseTwo \AltoPartTwoMusic
          }
        \new NullVoice = breaks {
          \global
          \keepWithTag #'usePartials \SlidesPartOneBreaks
          \SlidesPartTwoBreaks
        }
        \new NullVoice = alignVoice {
          \global
          \keepWithTag #'(usePartials verseTwo) \AlignPartOneMusic
          \keepWithTag #'verseTwo \AlignPartTwoMusic
        }
        \new Lyrics \lyricsto "alignVoice" {
          \huge
          \VerseTwoPartOne
          \VerseTwoPartTwo
        }
      >>
      \context Staff = lower <<
        \clef bass
        \partCombine
          {
            \global
            \keepWithTag #'(usePartials verseTwo) \TenorPartOneMusic
            \keepWithTag #'verseTwo \TenorPartTwoMusic
          }
          {
            \global
            \keepWithTag #'(usePartials verseTwo) \BassPartOneMusic
            \keepWithTag #'verseTwo \BassPartTwoMusic
          }
      >>
    >>
    \SlideLayout
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
            \keepWithTag #'(usePartials verseThree) \SopranoPartOneMusic
            \keepWithTag #'verseThree \SopranoPartTwoMusic
          }
          {
            \global
            \keepWithTag #'(usePartials verseThree) \AltoPartOneMusic
            \keepWithTag #'verseThree \AltoPartTwoMusic
          }
        \new NullVoice = breaks {
          \global
          \keepWithTag #'usePartials \SlidesPartOneBreaks
          \SlidesPartTwoBreaks
        }
        \new NullVoice = alignVoice {
          \global
          \keepWithTag #'(usePartials verseThree) \AlignPartOneMusic
          \keepWithTag #'verseThree \AlignPartTwoMusic
        }
        \new Lyrics \lyricsto "alignVoice" {
          \huge
          \VerseThreePartOne
          \VerseThreePartTwo
        }
      >>
      \context Staff = lower <<
        \clef bass
        \partCombine
          {
            \global
            \keepWithTag #'(usePartials verseThree) \TenorPartOneMusic
            \keepWithTag #'verseThree \TenorPartTwoMusic
          }
          {
            \global
            \keepWithTag #'(usePartials verseThree) \BassPartOneMusic
            \keepWithTag #'verseThree \BassPartTwoMusic
          }
      >>
    >>
    \SlideLayout
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
            \keepWithTag #'(usePartials verseFour) \SopranoPartOneMusic
            \keepWithTag #'verseFour \SopranoPartTwoMusic
          }
          {
            \global
            \keepWithTag #'(usePartials verseFour) \AltoPartOneMusic
            \keepWithTag #'verseFour \AltoPartTwoMusic
          }
        \new NullVoice = breaks {
          \global
          \keepWithTag #'usePartials \SlidesPartOneBreaks
          \SlidesPartTwoVerseFourBreaks
        }
        \new NullVoice = alignVoice {
          \global
          \keepWithTag #'(usePartials verseFour) \AlignPartOneMusic
          \keepWithTag #'verseFour \AlignPartTwoMusic
        }
        \new Lyrics \lyricsto "alignVoice" {
          \huge
          \VerseFourPartOne
          \VerseFourPartTwo
        }
      >>
      \context Staff = lower <<
        \clef bass
        \partCombine
          {
            \global
            \keepWithTag #'(usePartials verseFour) \TenorPartOneMusic
            \keepWithTag #'verseFour \TenorPartTwoMusic
          }
          {
            \global
            \keepWithTag #'(usePartials verseFour) \BassPartOneMusic
            \keepWithTag #'verseFour \BassPartTwoMusic
          }
      >>
    >>
    \SlideLayout
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
            \keepWithTag #'(usePartials verseFive) \SopranoPartOneMusic
            \keepWithTag #'verseFive \SopranoPartTwoMusic
          }
          {
            \global
            \keepWithTag #'(usePartials verseFive) \AltoPartOneMusic
            \keepWithTag #'verseFive \AltoPartTwoMusic
          }
        \new NullVoice = breaks {
          \global
          \keepWithTag #'usePartials \SlidesPartOneBreaks
          \SlidesPartTwoBreaks
        }
        \new NullVoice = alignVoice {
          \global
          \keepWithTag #'(usePartials verseFive) \AlignPartOneMusic
          \keepWithTag #'verseFive \AlignPartTwoMusic
        }
        \new Lyrics \lyricsto "alignVoice" {
          \huge
          \VerseFivePartOne
          \VerseFivePartTwo
        }
      >>
      \context Staff = lower <<
        \clef bass
        \partCombine
          {
            \global
            \keepWithTag #'(usePartials verseFive) \TenorPartOneMusic
            \keepWithTag #'verseFive \TenorPartTwoMusic
          }
          {
            \global
            \keepWithTag #'(usePartials verseFive) \BassPartOneMusic
            \keepWithTag #'verseFive \BassPartTwoMusic
          }
      >>
    >>
    \SlideLayout
  }
}
