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
        \context NullVoice = breaks {
          \global
          \keepWithTag #'usePartials \SheetMusicVerseBreaks
        }
        \context NullVoice = alignOne {
          \global
          \keepWithTag #'(usePartials verseOneRhythms) \SopranoVerseMusic
        }
        \context NullVoice = alignTwo {
          \global
          \keepWithTag #'(usePartials verseTwoRhythms) \SopranoVerseMusic
        }
        \context NullVoice = alignThree {
          \global
          \keepWithTag #'(usePartials verseThreeRhythms) \SopranoVerseMusic
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
      >>
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
  \markup {
    \vspace #4
    \huge \bold "REFRAIN"
  }
  \markup {
    \vspace #1
  }
  \score {
    \context ChoirStaff <<
      \override Score.BarNumber.break-visibility = ##(#f #f #f)
      \context Staff = upper <<
        \partCombine
          {
            \global
            \keepWithTag #'usePartials \SopranoRefrainMusic
          }
          {
            \global
            \keepWithTag #'usePartials \AltoRefrainMusic
          }
        \context NullVoice = chorusBreaks {
          \global
          \keepWithTag #'usePartials \SheetMusicRefrainBreaks
        }
        \context NullVoice = chorusAlign {
          \global
          \keepWithTag #'usePartials \AlignRefrainMusic
        }
        \new Lyrics \lyricsto "chorusAlign" {
          \RefrainLyrics
        }
      >>
      \context Staff = lower <<
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
