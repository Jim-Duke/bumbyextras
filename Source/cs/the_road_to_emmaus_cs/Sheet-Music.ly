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
            \bar ".|:"
            \keepWithTag #'sheetMusic \SopranoVerseBodyMusic
            \set Score.repeatCommands = #'((volta "1"))
            \keepWithTag #'sheetMusic \SopranoVerseFirstEnding
            \set Score.repeatCommands = #'((volta #f) (volta "2") end-repeat)
            \keepWithTag #'sheetMusic \SopranoVerseSecondEnding
            \set Score.repeatCommands = #'((volta #f))
            \bar "||"
            \SopranoChorusMusic
          }
          {
            \global
            \keepWithTag #'sheetMusic \AltoVerseBodyMusic
            \keepWithTag #'sheetMusic \AltoVerseFirstEnding
            \keepWithTag #'sheetMusic \AltoVerseSecondEnding
            \AltoChorusMusic
          }
        \context NullVoice = breaks {
          \global
          \keepWithTag #'sheetMusic \SheetMusicVerseBreaks
        }
        \context NullVoice = alignOneA {
          \global
          \keepWithTag #'verseOneA \SopranoVerseBodyMusic
          \keepWithTag #'verseOneA \SopranoVerseFirstEnding
        }
        \context NullVoice = alignOneB {
          \global
          \keepWithTag #'verseOneB \SopranoVerseBodyMusic
          \EmptyFirstEnding
          \keepWithTag #'verseOneB \SopranoVerseSecondEnding
          \SopranoChorusMusic
        }
        \context NullVoice = alignTwoA {
          \global
          \keepWithTag #'verseTwoA \SopranoVerseBodyMusic
          \keepWithTag #'verseTwoA \SopranoVerseFirstEnding
        }
        \context NullVoice = alignTwoB {
          \global
          \keepWithTag #'verseTwoB \SopranoVerseBodyMusic
          \EmptyFirstEnding
          \keepWithTag #'verseTwoB \SopranoVerseSecondEnding
        }
        \context NullVoice = alignThreeA {
          \global
          \keepWithTag #'verseThreeA \SopranoVerseBodyMusic
          \keepWithTag #'verseThreeA \SopranoVerseFirstEnding
        }
        \context NullVoice = alignThreeB {
          \global
          \keepWithTag #'verseThreeB \SopranoVerseBodyMusic
          \EmptyFirstEnding
          \keepWithTag #'verseThreeB \SopranoVerseSecondEnding
        }
        \new Lyrics \lyricsto "alignOneA" {
          \VerseOneA
        }
        \new Lyrics \lyricsto "alignOneB" {
          \VerseOneB \Chorus
        }
        \new Lyrics \lyricsto "alignTwoA" {
          \VerseTwoA
        }
        \new Lyrics \lyricsto "alignTwoB" {
          \VerseTwoB
        }
        \new Lyrics \lyricsto "alignThreeA" {
          \VerseThreeA
        }
        \new Lyrics \lyricsto "alignThreeB" {
          \VerseThreeB
        }
      >>
      \context Staff = lower \with { printPartCombineTexts = ##f } <<
        \clef bass
        \partCombine
          {
            \global
            \keepWithTag #'sheetMusic \TenorVerseBodyMusic
            \keepWithTag #'sheetMusic \TenorVerseFirstEnding
            \keepWithTag #'sheetMusic \TenorVerseSecondEnding
            \TenorChorusMusic
          }
          {
            \global
            \keepWithTag #'sheetMusic \BassVerseBodyMusic
            \keepWithTag #'sheetMusic \BassVerseFirstEnding
            \keepWithTag #'sheetMusic \BassVerseSecondEnding
            \BassChorusMusic
          }
      >>
    >>
    \SheetMusicVerseLayout
  }
}
