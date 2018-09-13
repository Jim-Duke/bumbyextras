\version "2.19.49"

\include "Words-and-music.ly"
\include "../../../LilypondTemplates/standard-elements.ly"

#(ly:parser-define! (string->symbol "outputName")
   (if (null? (ly:parser-lookup (string->symbol "BuildDir")))
       "Sheet-Music"
       (string-append BuildDir songNumber " - " title " - Sheet Music")))

\book {
  \bookOutputName \outputName
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
      
    indent = 1\in
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
            \char ##x2022
            \fromproperty #'header:poet
          }
          \line {
            "Tune:"
            \fromproperty #'header:tune
            \char ##x2022
            \fromproperty #'header:composer
          }
          \line {
            \fromproperty #'header:copyright
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
    \new ChoirStaff <<
      \override Score.BarNumber.break-visibility = ##(#f #f #f)
      \new Staff \with { instrumentName = \markup { "Soprano" \fontsize #2 \circle { 1 } \hspace #1 } } <<
        \new Voice = "sopranos" {
          \global
          \keepWithTag #'(usePartials sheetMusic) \sopranoVerse
        }
        \new NullVoice = "breaks" {
          \global
          \keepWithTag #'usePartials \sheetMusicBreaks
        }
      >>
      \new Lyrics \lyricsto "sopranos" {
        \sopranoLyrics
      }
      \new Staff \with { instrumentName = \markup { "Alto" \fontsize #2 \circle { 3 } \hspace #1 } } {
        \new Voice = "altos" {
          \global
          \keepWithTag #'usePartials \altoVerse
        }
      }
      \new Lyrics \lyricsto "altos" {
        \altoLyrics
      }
      \new Staff  \with { instrumentName = \markup { "Tenor" \fontsize #2 \circle { 4 } \hspace #1 } } {
        \new Voice = "tenors" {
          \clef bass
          \global
          \keepWithTag #'usePartials \tenorVerse
        }
      }
      \new Lyrics \lyricsto "tenors" {
        \tenorLyrics
      }
      \new Staff  \with { instrumentName = \markup { "Bass" \fontsize #2 \circle { 2 } \hspace #1 } } {
        \new Voice = "basses" {
          \clef bass
          \global
          \keepWithTag #'usePartials \bassVerse
        }
      }
      \new Lyrics \lyricsto "basses" {
        \bassLyrics
      }
    >>
    \SheetMusicVerseLayout
  }
  \markup \italic {
    \column {
      \vspace #3
      "Sequence:"
      "1st time through - Soprano only"
      "2nd time through - add Bass"
      "3rd time through - add Alto"
      "4th time through - add Tenor"
    }
  }
}
