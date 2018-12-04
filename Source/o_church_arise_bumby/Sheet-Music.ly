\version "2.19.49"

SheetMusicLyricsMinimumDistance = 2

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
    system-system-spacing.basic-distance = #11
    system-system-spacing.minimum-distance = #11
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
    ragged-last = ##f
    print-page-number = ##f
    ragged-bottom = ##t
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
          \line {
            "Visit https://hymnal.bumby.org/ for more information about this and other hymns in the Bumby Hymnal"
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
            \keepWithTag #'(usePartials sheetMusic) \SopranoVerseMusic
          }
          {
            \global
            \keepWithTag #'(usePartials sheetMusic) \AltoVerseMusic
          }
        \context NullVoice = breaks {
          \global
          \keepWithTag #'usePartials \SheetMusicVerseBreaks
        }
        \context NullVoice = alignOne {
          \global
          \keepWithTag #'(usePartials verseOne) \SopranoVerseMusic
        }
        \context NullVoice = alignTwo {
          \global
          \keepWithTag #'(usePartials verseTwo) \SopranoVerseMusic
        }
        \context NullVoice = alignThree {
          \global
          \keepWithTag #'(usePartials verseThree) \SopranoVerseMusic
        }
        \context NullVoice = alignFour {
          \global
          \keepWithTag #'(usePartials verseFour) \SopranoVerseMusic
        }
        \new Lyrics \lyricsto "alignOne" {
          \VerseOne
        }
        \new Lyrics \lyricsto "alignTwo" {
          \VerseTwo
        }
        \new Lyrics \lyricsto "alignThree" {
          \VerseThree
        }
        \new Lyrics \lyricsto "alignFour" {
          \VerseFour
        }
      >>
      \context Staff = lower \with { printPartCombineTexts = ##f } <<
        \clef bass
        \partCombine
          {
            \global
            \keepWithTag #'(usePartials sheetMusic) \TenorVerseMusic
          }
          {
            \global
            \keepWithTag #'(usePartials sheetMusic) \BassVerseMusic
          }
      >>
    >>
    \SheetMusicVerseLayout
  }
}
