\version "2.19.49"

\include "Words-and-music.ly"

SheetMusicLyricsMinimumDistance = #1
SheetStaffStaffSpacing = #15

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
    ragged-last = ##t
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
    \context ChoirStaff <<
      \override Score.BarNumber.break-visibility = ##(#f #f #f)
      \context Staff = upper \with { printPartCombineTexts = ##f } <<
        \partCombine
          {
            \global
            \keepWithTag #'sheetMusic {
              \SopranoVerseOneIntro
              \repeat volta 2 {
                \SopranoCommon
                \SopranoRefrain
              }
              \SopranoCoda
            }
          }
          {
            \global
            \keepWithTag #'sheetMusic {
              \AltoVerseOneIntro
              \repeat volta 2 {
                \AltoCommon
                \AltoRefrain
              }
              \AltoCoda
            }
          }
        \context NullVoice = alignOne {
          \global
          \keepWithTag #'verseOneSheet {
            \SopranoVerseOneIntro
            \SopranoCommon
            \SopranoRefrain
            \SopranoCoda
          }
        }
        \context NullVoice = alignTwo {
          \global
          \keepWithTag #'verseTwoSheet {
            \IntroFiller
            \SopranoCommon
          }
        }
        \context NullVoice = breaks {
          \global
          \SheetMusicVerseOneIntroBreaks
          \SheetMusicCommonBreaks
          \SheetMusicRefrainBreaks
          \SheetMusicCodaBreaks
        }
      >>
      \new Lyrics \lyricsto "alignOne" {
        \VerseOneIntro
        \VerseOneCommon
        \Refrain
        \Coda
      }
      \new Lyrics \lyricsto "alignTwo" {
        \keepWithTag #'verseTwoSheet \VerseTwoCommon
      }
      \context Staff = lower \with { printPartCombineTexts = ##f } <<
        \clef bass
        \partCombine
          {
            \global
            \keepWithTag #'sheetMusic {
              \TenorVerseOneIntro
              \repeat volta 2 {
                \TenorCommon
                \TenorRefrain
              }
              \TenorCoda
            }
          }
          {
            \global
            \keepWithTag #'sheetMusic {
              \BassVerseOneIntro
              \repeat volta 2 {
                \BassCommon
                \BassRefrain
              }
              \BassCoda
            }
          }
      >>
    >>
    \SheetMusicVerseLayout
  }
}
