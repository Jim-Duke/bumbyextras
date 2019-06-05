\version "2.19.49"

\include "Words-and-music.ly"

SheetMusicLyricsMinimumDistance = #1

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
            \partial 8
            \repeat volta 3 {
              \keepWithTag #'sheetMusic \SopranoVerseStartMusic
              \keepWithTag #'sheetMusic \SopranoVerseBodyMusic
            }
            \alternative {
              {
                \keepWithTag #'sheetMusic \SopranoFirstEnding
              }
              {
                \keepWithTag #'sheetMusic \SopranoLastEnding
              }
            }
            \SopranoEnding
          }
          {
            \global
            \partial 8
            \repeat volta 3 {
              \keepWithTag #'sheetMusic \AltoVerseStartMusic
              \keepWithTag #'sheetMusic \AltoVerseBodyMusic
            }
            \alternative {
              {
                \keepWithTag #'sheetMusic \AltoFirstEnding
              }
              {
                \keepWithTag #'sheetMusic \AltoLastEnding
              }
            }
            \AltoEnding
          }
        \context NullVoice = breaks {
          \global
          \partial 8
          \SheetMusicVerseBreaks
        }
        \context NullVoice = alignOne {
          \global
          \partial 8
          \keepWithTag #'sheetMusicVerseOne \SopranoVerseStartMusic
          \keepWithTag #'verseOne \SopranoVerseBodyMusic
          \keepWithTag #'verseOne \SopranoFirstEnding
          \keepWithTag #'verseOne \SopranoLastEnding
          \keepWithTag #'verseOne \SopranoEnding
        }
        \context NullVoice = alignTwo {
          \global
          \partial 8
          \keepWithTag #'verseTwo \SopranoVerseStartMusic
          \keepWithTag #'verseTwo \SopranoVerseBodyMusic
          \keepWithTag #'verseTwo \SopranoFirstEnding
          \keepWithTag #'verseTwo \SopranoLastEnding
          \keepWithTag #'verseTwo \SopranoEnding
        }
        \context NullVoice = alignThree {
          \global
          \partial 8
          \keepWithTag #'verseThree \SopranoVerseStartMusic
          \keepWithTag #'verseThree \SopranoVerseBodyMusic
          \keepWithTag #'verseThree \SopranoFirstEnding
          \keepWithTag #'verseThree \SopranoLastEnding
          \keepWithTag #'verseThree \SopranoEnding
        }
        \new Lyrics \lyricsto "alignOne" {
          \VerseOne
          \VerseOneEnding
        }
        \new Lyrics \lyricsto "alignTwo" {
          \VerseTwo
          \VerseTwoEnding
        }
        \new Lyrics \lyricsto "alignThree" {
          \VerseThree
          \VerseThreeEnd
        }
      >>
      \context Staff = lower <<
        \clef bass
        \partCombine
          {
            \global
            \partial 8
            \repeat volta 3 {
              \keepWithTag #'sheetMusic \TenorVerseStartMusic
              \keepWithTag #'sheetMusic \TenorVerseBodyMusic
            }
            \alternative {
              {
                \keepWithTag #'sheetMusic \TenorFirstEnding
              }
              {
                \keepWithTag #'sheetMusic \TenorLastEnding
              }
            }
            \TenorEnding
          }
          {
            \global
            \partial 8
            \repeat volta 3 {
              \keepWithTag #'sheetMusic \BassVerseStartMusic
              \keepWithTag #'sheetMusic \BassVerseBodyMusic
            }
            \alternative {
              {
                \keepWithTag #'sheetMusic \BassFirstEnding
              }
              {
                \keepWithTag #'sheetMusic \BassLastEnding
              }
            }
            \BassEnding
          }
      >>
    >>
    \SheetMusicVerseLayout
  }
}
