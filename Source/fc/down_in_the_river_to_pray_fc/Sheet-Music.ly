\version "2.19.49"

\include "Words-and-music.ly"
\include "../../../LilypondTemplates/standard-elements.ly"

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
    system-system-spacing.basic-distance = #0
    system-system-spacing.minimum-distance = #0
    score-markup-spacing.basic-distance = #0
    markup-system-spacing.basic-distance = #0
      
    indent = 0
    first-page-number = \FirstPage
    two-sided = ##t
    inner-margin = 0.25\in
    outer-margin = 0.25\in
    binding-offset = 0.5\in
    top-margin = 0.25\in
    bottom-margin = 0.25\in
    ragged-right = ##f
    ragged-last = \SheetMusicRaggedLast
    print-page-number = ##f
    ragged-bottom = \SheetMusicRaggedBottom
    oddFooterMarkup = \markup {
      \fontsize #-2
      \on-the-fly \last-page {
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
            \optional-field "• " #'header:license
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
          \SheetMusicScripture
        }
      }
      \vspace #0.5
    }
  }
  \score {
    % Verses Section
    \context ChoirStaff <<
      \override Score.BarNumber.break-visibility = ##(#f #f #f)
      \context Staff = upper \with { printPartCombineTexts = ##f } <<
        \partCombine
          {
            \global
            \keepWithTag #'(usePartials sheetMusic) \SopranoPartOneMusic
            \keepWithTag #'sheetMusic \SopranoPartTwoMusic
          }
          {
            \global
            \keepWithTag #'(usePartials sheetMusic) \AltoPartOneMusic
            \keepWithTag #'sheetMusic \AltoPartTwoMusic
          }
        \context NullVoice = breaks {
          \global
          \keepWithTag #'usePartials \SheetMusicPartOneBreaks
          \SheetMusicPartTwoBreaks
        }
        \context NullVoice = alignOne {
          \global
          \keepWithTag #'(usePartials verseOne) \AlignPartOneMusic
          \keepWithTag #'verseOne \AlignPartTwoMusic
        }
        \context NullVoice = alignTwo {
          \global
          \keepWithTag #'(usePartials verseTwo) \AlignPartOneMusic
          \keepWithTag #'verseTwo \AlignPartTwoMusic
        }
        \context NullVoice = alignThree {
          \global
          \keepWithTag #'(usePartials verseThree) \AlignPartOneMusic
          \keepWithTag #'verseThree \AlignPartTwoMusic
        }
        \context NullVoice = alignFour {
          \global
          \keepWithTag #'(usePartials verseFour) \AlignPartOneMusic
          \keepWithTag #'verseFour \AlignPartTwoMusic
        }
        \context NullVoice = alignFive {
          \global
          \keepWithTag #'(usePartials verseFive) \AlignPartOneMusic
          \keepWithTag #'verseFive \AlignPartTwoMusic
        }
        \new Lyrics \lyricsto "alignOne" {
          \VerseOnePartOne
          \VerseOnePartTwo
        }
        \new Lyrics \lyricsto "alignTwo" {
          \VerseTwoPartOne
          \VerseTwoPartTwo
        }
        \new Lyrics \lyricsto "alignThree" {
          \VerseThreePartOne
          \VerseThreePartTwo
        }
        \new Lyrics \lyricsto "alignFour" {
          \VerseFourPartOne
          \VerseFourPartTwo
        }
        \new Lyrics \lyricsto "alignFive" {
          \VerseFivePartOne
          \VerseFivePartTwo
        }
      >>
      \context Staff = lower \with { printPartCombineTexts = ##f } <<
        \clef bass
        \partCombine
          {
            \global
            \keepWithTag #'(usePartials sheetMusic) \TenorPartOneMusic
            \keepWithTag #'sheetMusic \TenorPartTwoMusic
          }
          {
            \global
            \keepWithTag #'(usePartials sheetMusic) \BassPartOneMusic
            \keepWithTag #'sheetMusic \BassPartTwoMusic
          }
      >>
    >>
    \SheetMusicVerseLayout
  }
}
