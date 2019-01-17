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
    % Refrain Section
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
        \context NullVoice = breaks {
          \global
          \keepWithTag #'usePartials \SheetMusicRefrainBreaks
        }
        \context NullVoice = alignTop {
          \global
          \keepWithTag #'usePartials \TopPartAlign
        }
        \context NullVoice = alignMiddle {
          \global
          \keepWithTag #'usePartials \MiddlePartAlign
        }
        \context NullVoice = alignBottom {
          \global
          \keepWithTag #'usePartials \BottomPartAlign
        }
        \new Lyrics \lyricsto "alignTop" {
          \TopPart
        }
        \new Lyrics \lyricsto "alignMiddle" {
          \MiddlePart
        }
        \new Lyrics \lyricsto "alignBottom" {
          \BottomPart
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
    \SheetMusicVerseLayout
  }
  \score {
    % Verses Section
    \context ChoirStaff <<
      \override Score.BarNumber.break-visibility = ##(#f #f #f)
      \context Staff = upper <<
        \partCombine
          {
            \set Score.tempoHideNote = ##t
            \global
            \keepWithTag #'sheetMusic \SopranoVerseMusic
          }
          {
            \set Score.tempoHideNote = ##t
            \global
            \keepWithTag #'sheetMusic \AltoVerseMusic
          }
        \context NullVoice = breaks {
          \set Score.tempoHideNote = ##t
          \global
          \keepWithTag #'usePartials \SheetMusicVerseBreaks
        }
        \context NullVoice = alignOne {
          \set Score.tempoHideNote = ##t
          \global
          \keepWithTag #'verseOne \SopranoVerseMusic
        }
        \context NullVoice = alignTwo {
          \set Score.tempoHideNote = ##t
          \global
          \keepWithTag #'verseTwo \SopranoVerseMusic
        }
        \context NullVoice = alignThree {
          \set Score.tempoHideNote = ##t
          \global
          \keepWithTag #'verseThree \SopranoVerseMusic
        }
        \context NullVoice = alignFour {
          \set Score.tempoHideNote = ##t
          \global
          \keepWithTag #'verseFour \SopranoVerseMusic
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
      \context Staff = lower <<
        \clef bass
        \partCombine
          {
            \set Score.tempoHideNote = ##t
            \global
            \keepWithTag #'sheetMusic \TenorVerseMusic
          }
          {
            \set Score.tempoHideNote = ##t
            \global
            \keepWithTag #'sheetMusic \BassVerseMusic
          }
      >>
    >>
    \SheetMusicVerseLayout
  }
}
