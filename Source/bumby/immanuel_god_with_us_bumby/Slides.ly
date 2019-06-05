\version "2.19.49"

\include "Words-and-music.ly"

SlideStaffStaffSpacing = #16.0

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
      \context Staff = upper \with { printPartCombineTexts = ##f } <<
        \partCombine
          {
            \global
            \keepWithTag #'(notForMIDI verseOne) {
              \SopranoVerseBody
              \SopranoFirstRepeatPart
            }
          }
          {
            \global
            \keepWithTag #'(notForMIDI verseOne) {
              \AltoVerseBody
              \AltoFirstRepeatPart
            }
          }
        \new NullVoice = breaks {
          \global
          \keepWithTag #'(verseOne) {
            \SlidesVerseBodyBreaks
            \SlidesFirstRepeatPartBreaks
          }
        }
        \context NullVoice = align {
          \global
          \keepWithTag #'(verseOne) {
            \AlignBody
            \AlignFirstRepeatPart
          }
        }
        \new Lyrics \lyricsto "align" {
          \huge \VerseOne \Common
        }
      >>
      \context Staff = lower \with { printPartCombineTexts = ##f } <<
        \clef bass
        \partCombine
          {
            \global
            \keepWithTag #'(notForMIDI verseOne) {
              \TenorVerseBody
              \TenorFirstRepeatPart
            }
          }
          {
            \global
            \keepWithTag #'(notForMIDI verseOne) {
              \BassVerseBody
              \BassFirstRepeatPart
            }
          }
      >>
    >>
    \SlideLayout
  }
  \VerseTitleMarkup
  \score {
    <<
      \override Score.BarNumber.break-visibility = ##(#f #f #f)
      \context Staff = upper \with { printPartCombineTexts = ##f } <<
        \partCombine
          {
            \global
            \keepWithTag #'(notForMIDI verseTwo) {
              \SopranoVerseBody
              \SopranoFirstRepeatPart
            }
          }
          {
            \global
            \keepWithTag #'(notForMIDI verseTwo) {
              \AltoVerseBody
              \AltoFirstRepeatPart
            }
          }
        \new NullVoice = breaks {
          \global
          \keepWithTag #'(verseTwo) {
            \SlidesVerseBodyBreaks
            \SlidesFirstRepeatPartBreaks
          }
        }
        \context NullVoice = align {
          \global
          \keepWithTag #'(verseTwo) {
            \AlignBody
            \AlignFirstRepeatPart
          }
        }
      >>
      \new Lyrics \lyricsto "align" {
        \huge \VerseTwo \Common
      }
      \context Staff = lower \with { printPartCombineTexts = ##f } <<
        \clef bass
        \partCombine
          {
            \global
            \keepWithTag #'(notForMIDI verseTwo) {
              \TenorVerseBody
              \TenorFirstRepeatPart
            }
          }
          {
            \global
            \keepWithTag #'(notForMIDI verseTwo) {
              \BassVerseBody
              \BassFirstRepeatPart
            }
          }
      >>
    >>
    \SlideLayout
  }
  \VerseTitleMarkup
  \score {
    <<
      \override Score.BarNumber.break-visibility = ##(#f #f #f)
      \context Staff = upper \with { printPartCombineTexts = ##f } <<
        \partCombine
          {
            \global
            \keepWithTag #'(notForMIDI verseThree) {
              \SopranoVerseBody
              \SopranoSecondRepeatPart
              \SopranoEnding
            }
          }
          {
            \global
            \keepWithTag #'(notForMIDI verseThree) {
              \AltoVerseBody
              \AltoSecondRepeatPart
              \AltoEnding
            }
          }
        \new NullVoice = breaks {
          \global
          \keepWithTag #'(verseThree) {
            \SlidesVerseBodyBreaks
            \SlidesSecondRepeatPartBreaks
            \SlidesEndingBreaks
          }
        }
        \context NullVoice = align {
          \global
          \keepWithTag #'(verseThree) {
            \AlignBody
            \AlignSecondRepeatPart
            \AlignEnding
          }
        }
      >>
      \new Lyrics \lyricsto "align" {
        \huge \VerseThree \Common \Close
      }
      \context Staff = lower \with { printPartCombineTexts = ##f } <<
        \clef bass
        \partCombine
          {
            \global
            \keepWithTag #'(notForMIDI verseThree) {
              \TenorVerseBody
              \TenorSecondRepeatPart
              \TenorEnding
            }
          }
          {
            \global
            \keepWithTag #'(notForMIDI verseThree) {
              \BassVerseBody
              \BassSecondRepeatPart
              \BassEnding
            }
          }
      >>
    >>
    \SlideLayout
  }
}
