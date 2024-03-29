\version "2.19.49"

\include "Words-and-music.ly"
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
    first-page-number = #2
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
            \keepWithTag #'usePartials' \sopranoVerse
          }
          {
            \global
            \keepWithTag #'usePartials' \altoVerse
          }
        \context NullVoice = breaks {
          \global
          \keepWithTag #'usePartials' \sheetMusicBreaks 
        }
        \context NullVoice = align {
          \global
          \keepWithTag #'usePartials \sopranoVerse
        }
        \context NullVoice = alignThree {
          \global
          \keepWithTag #'usePartials' \alignVerse
        }
        \new Lyrics \lyricsto "align" {
          \verseOne \verseCommon
        }
        \new Lyrics \lyricsto "align" {
          \verseTwo
        }
        \new Lyrics \lyricsto "alignThree" {
          \verseThree
        }
        \new Lyrics \lyricsto "align" {
          \verseFour
        }
      >>
      \context Staff = lower <<
        \clef bass
        \partCombine
          {
            \global
            \keepWithTag #'usePartials' \tenorVerse
          }
          {
            \global
            \keepWithTag #'usePartials' \bassVerse
          }
      >>
    >>
    \SheetMusicVerseLayout
  }
  \markup {
    \vspace #3
    \huge \bold "Bridge (between verse 2 and 3):"
  }
  \score {
    \context ChoirStaff <<
      \override Score.BarNumber.break-visibility = ##(#f #f #f)
      \context Staff = upper <<
        \partCombine
          {
            \global
            \keepWithTag #'usePartials' \sopranoBridge
          }
          {
            \global
            \keepWithTag #'usePartials' \altoBridge
          }
        \context NullVoice = breaks {
          \global
          \keepWithTag #'usePartials' \sheetMusicBridgeBreaks
        }
        \context NullVoice = alignVoice {
          \global
          \keepWithTag #'usePartials \sopranoBridge
        }
        \new Lyrics \lyricsto "alignVoice" {
          \bridgeLyrics
        }
      >>
      \context Staff = lower <<
        \clef bass
        \partCombine
          {
            \global
            \keepWithTag #'usePartials' \tenorBridge
          }
          {
            \global
            \keepWithTag #'usePartials' \bassBridge
          }
      >>
    >>
    \SheetMusicChorusLayout
  }
}
