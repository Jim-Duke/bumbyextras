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
    system-system-spacing.basic-distance = #10
    system-system-spacing.minimum-distance = #6
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
      \context Staff = upper <<
        \partCombine
          {
            \global
            \keepWithTag #'sheetMusic \SopranoVerseBody
            \keepWithTag #'sheetMusic \SopranoVerseRepeat
            \keepWithTag #'sheetMusic \SopranoVerseEnd
          }
          {
            \global
            \keepWithTag #'sheetMusic \AltoVerseBody
            \keepWithTag #'sheetMusic \AltoVerseRepeat
            \keepWithTag #'sheetMusic \AltoVerseEnd
          }
        \context NullVoice = breaks {
          \global
          \keepWithTag #'sheetMusic \SheetMusicVerseBodyBreaks
          \keepWithTag #'sheetMusic \SheetMusicVerseRepeatBreaks
          \keepWithTag #'sheetMusic \SheetMusicVerseEndBreaks
        }
        \context NullVoice = alignOne {
          \global
          \keepWithTag #'verseOne \SopranoVerseBody
          \keepWithTag #'verseOne \SopranoVerseRepeat
          \keepWithTag #'verseOne \SopranoVerseEnd
        }
        \context NullVoice = alignTwo {
          \global
          \keepWithTag #'verseTwo \SopranoVerseBody
          \keepWithTag #'verseTwo \SopranoVerseRepeat
          \keepWithTag #'verseTwo \SopranoVerseEnd
        }
        \context NullVoice = alignThree {
          \global
          \keepWithTag #'verseThree \SopranoVerseBody
          \keepWithTag #'verseThree \SopranoVerseRepeat
          \keepWithTag #'verseThree \SopranoVerseEnd
        }
        \context NullVoice = alignFour {
          \global
          \keepWithTag #'verseFour \SopranoVerseBody
          \keepWithTag #'verseFour \SopranoVerseRepeat
          \keepWithTag #'verseFour \SopranoVerseEnd
        }
        \context NullVoice = alignFive {
          \global
          \keepWithTag #'verseFive \SopranoVerseBody
          \keepWithTag #'verseFive \SopranoVerseRepeat
          \keepWithTag #'verseFive \SopranoVerseEnd
        }
        \new Lyrics \lyricsto "alignOne" {
          \VerseOne
        }
        \new Lyrics \lyricsto "alignTwo" {
          \VerseTwo
        }
        \new Lyrics \lyricsto "alignThree" {
          \VerseThree
          \Tag
        }
        \new Lyrics \lyricsto "alignFour" {
          \VerseFour
        }
        \new Lyrics \lyricsto "alignFive" {
          \VerseFive
        }
      >>
      \context Staff = lower <<
        \clef bass
        \partCombine
          {
            \global
            \keepWithTag #'sheetMusic \TenorVerseBody
            \keepWithTag #'sheetMusic \TenorVerseRepeat
            \TenorVerseEnd
          }
          {
            \global
            \keepWithTag #'sheetMusic \BassVerseBody
            \keepWithTag #'sheetMusic \BassVerseRepeat
            \BassVerseEnd
          }
      >>
    >>
    \SheetMusicVerseLayout
  }
}
