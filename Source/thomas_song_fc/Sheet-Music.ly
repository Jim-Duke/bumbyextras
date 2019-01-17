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
      \context Staff = upper \with { printPartCombineTexts = ##f } <<
        {
          \repeat volta 2 {
            \partCombine
              {
                \global
                \keepWithTag #'(usePartials sheetMusic) \SopranoVerseBodyMusic
              }
              {
                \global
                \keepWithTag #'(usePartials sheetMusic) \AltoVerseBodyMusic
              }
          }
          \alternative {
            {
              \set Score.repeatCommands = #(list (list 'volta voltaOneThree))
              \partCombine
                {
                  \SopranoVerseEndingMusic
                }
                {
                  \AltoVerseEndingMusic
                }
              \bar ":|."
            }
            {
              \set Score.repeatCommands = #(list (list 'volta voltaTwoFour))
              \partCombine
                {
                  \SopranoVerseEndingMusic
                }
                {
                  \AltoVerseEndingMusic
                }
            }
          }
          \partCombine
            {
              \keepWithTag #'sheetMusic \SopranoChorusMusic
              \SopranoCodaMusic
            }
            {
              \keepWithTag #'sheetMusic \AltoChorusMusic
              \AltoCodaMusic
            }
        }
        \context NullVoice = breaks {
          \global
          \keepWithTag #'(usePartials sheetMusic) \SheetMusicVerseBreaks
        }
        \context NullVoice = align {
          \global
          \keepWithTag #'(usePartials sheetMusic) {
            \SopranoVerseBodyMusic
            \SopranoVerseEndingMusic
            \SopranoVerseEndingMusic
            \SopranoChorusMusic
          }
          \removeWithTag #'(usePartials slideMusic) \keepWithTag #'sheetMusic {
            \SopranoCodaMusic
          }
        }
        \new Lyrics \lyricsto "align" {
          \keepWithTag #'sheetMusic \VerseOne
        }
        \new Lyrics \lyricsto "align" {
          \keepWithTag #'sheetMusic \VerseTwo
        }
        \new Lyrics \lyricsto "align" {
          \keepWithTag #'sheetMusic \VerseThree
        }
        \new Lyrics \lyricsto "align" {
          \keepWithTag #'sheetMusic \VerseFour \Coda
        }
      >>
      \context Staff = lower \with { printPartCombineTexts = ##f } <<
        {
          \clef bass
          \repeat volta 2 {
            \partCombine
              {
                \global
                \keepWithTag #'(usePartials sheetMusic) \TenorVerseBodyMusic
              }
              {
                \global
                \keepWithTag #'(usePartials sheetMusic) \BassVerseBodyMusic
              }
          }
          \alternative {
            {
              \set Score.repeatCommands = #(list (list 'volta voltaOneThree))
              \partCombine
                {
                  \TenorVerseEndingMusic
                }
                {
                  \BassVerseEndingMusic
                }
              \bar ":|."
            }
            {
              \set Score.repeatCommands = #(list (list 'volta voltaTwoFour))
              \partCombine
                {
                  \TenorVerseEndingMusic
                }
                {
                  \BassVerseEndingMusic
                }
            }
          }
          \partCombine
            {
              \keepWithTag #'sheetMusic \TenorChorusMusic
              \TenorCodaMusic
            }
            {
              \keepWithTag #'sheetMusic \BassChorusMusic
              \BassCodaMusic
            }
        }
      >>
    >>
    \SheetMusicVerseLayout
  }
%  \pageBreak
%  \markup {
%    "Refrain:"
%  }
%  \score {
%    % Refrain Section
%    \context ChoirStaff <<
%      \override Score.BarNumber.break-visibility = ##(#f #f #f)
%      \context Staff = upper \with { printPartCombineTexts = ##f } <<
%        \partCombine
%          {
%            \global
%            \keepWithTag #'usePartials \SopranoChorusMusic
%          }
%          {
%            \global
%            \keepWithTag #'usePartials \AltoChorusMusic
%          }
%        \context NullVoice = breaks {
%          \global
%          \keepWithTag #'usePartials \SheetMusicChorusBreaks
%        }
%        \context NullVoice = align {
%          \global
%          \keepWithTag #'usePartials \SopranoChorusMusic
%        }
%        \new Lyrics \lyricsto "align" {
%          \ChorusOne
%        }
%        \new Lyrics \lyricsto "align" {
%          \ChorusTwo
%        }
%      >>
%      \context Staff = lower \with { printPartCombineTexts = ##f } <<
%        \clef bass
%        \partCombine
%          {
%            \global
%            \keepWithTag #'usePartials \TenorChorusMusic
%          }
%          {
%            \global
%            \keepWithTag #'usePartials \BassChorusMusic
%          }
%      >>
%    >>
%    \SheetMusicChorusLayout
%  }
}
