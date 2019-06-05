\version "2.19.49"

\include "Words-and-music.ly"

SheetMusicLyricsMinimumDistance = #1

\include "../../../../LilypondTemplates/standard-elements.ly"

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
    ragged-right = ##t
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
    \context ChoirStaff <<
      \override Score.BarNumber.break-visibility = ##(#f #f #f)
      \context Staff = upper <<
        \partCombine
          {
            \global
            \keepWithTag #'(usePartials sheetMusicRhythms) \SopranoVerseMusic
          }
          {
            \global
            \keepWithTag #'(usePartials sheetMusicRhythms) \AltoVerseMusic
          }
        \context NullVoice = sheetMusicVerseBreaks {
          \global
          \keepWithTag #'usePartials \SheetMusicVerseBreaks
        }
        \context NullVoice = sopranosVerseOneRhythms {
          \global
          \keepWithTag #'(usePartials verseOneSheetRhythms) \SopranoVerseMusic
        }
        \context NullVoice = sopranosVerseTwoRhythms {
          \global
          \keepWithTag #'(usePartials verseTwoSheetRhythms) \SopranoVerseMusic
        }
      >>
      \new Lyrics \lyricsto "sopranosVerseOneRhythms" {
        \keepWithTag #'sheetMusicRhythms \VerseOneLyrics
      }
      \new Lyrics \lyricsto "sopranosVerseTwoRhythms" {
        \VerseTwoLyrics
      }
      \context Staff = lower <<
        \clef bass
        \partCombine
          {
            \global
            \keepWithTag #'(usePartials sheetMusicRhythms) \TenorVerseMusic
          }
          {
            \global
            \keepWithTag #'(usePartials sheetMusicRhythms) \BassVerseMusic
          }
      >>
    >>
    \SheetMusicVerseLayout
  }
  \markup { \bold "Refrain:" }
  \score {
    \context ChoirStaff <<
      \override Score.BarNumber.break-visibility = ##(#f #f #f)
      \context Staff = upper \with { printPartCombineTexts = ##f } <<
        \partCombine
          {
            \global
            \keepWithTag #'usePartials \SopranoRefrainMusic
          }
          {
            \global
            \keepWithTag #'usePartials \AltoRefrainMusic
          }
        \context NullVoice = refreainBreaks {
          \global
          \keepWithTag #'usePartials \SheetMusicRefrainBreaks
        }
        \context NullVoice = alignTop {
          \global
          \keepWithTag #'usePartials \SopranoRefrainMusic
        }
        \context NullVoice = alignBot {
          \global
          \keepWithTag #'usePartials \AltLyricsAlign
        }
%        \context NullVoice = alignBot {
%          \global
%         \keepWithTag #'usePartials \CounterAlignMusic
%        }
      >>
      \new Lyrics \lyricsto "alignTop" {
        \RefrainLyrics
      }
      \new Lyrics \lyricsto "alignBot" {
        \AltRefrainLyrics
      }
      \context Staff = lower \with { printPartCombineTexts = ##f } <<
        \clef bass
        \partCombine
          {
            \global
            \keepWithTag #'usePartials \TenorRefrainMusic
          }
          {
            \global
            \keepWithTag #'usePartials \BassRefrainMusic
          }
      >>
    >>
    \SheetMusicChorusLayout
  }
}
