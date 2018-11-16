\version "2.19.49"

\include "Words-and-music.ly"

SheetMusicLyricsMinimumDistance = 2

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
            \keepWithTag #'usePartials \SopranoVerseMusic
          }
          {
            \global
            \keepWithTag #'usePartials \AltoVerseMusic
          }
        \context NullVoice = breaks {
          \global
          \keepWithTag #'usePartials \SheetMusicVerseBreaks
        }
        \context NullVoice = align {
          \global
          \keepWithTag #'usePartials \SopranoVerseMusic
        }
        \new Lyrics \lyricsto "align" {
          \VerseOne
        }
        \new Lyrics \lyricsto "align" {
          \VerseTwo
        }
        \new Lyrics \lyricsto "align" {
          \VerseThree
        }
        \new Lyrics \lyricsto "align" {
          \VerseFour
        }
      >>
      \context Staff = lower <<
        \clef bass
        \partCombine
          {
            \global
            \keepWithTag #'usePartials \TenorVerseMusic
          }
          {
            \global
            \keepWithTag #'usePartials \BassVerseMusic
          }
      >>
    >>
    \SheetMusicVerseLayout
  }
  \markup {
    \vspace #3
    \bold "Chorus:"
  }
  \score {
    % Verses Section
    \context ChoirStaff <<
      \override Score.BarNumber.break-visibility = ##(#f #f #f)
      \context Staff = upper <<
        \partCombine
          {
            \global
            \keepWithTag #'usePartials \SopranoChorusMusic
          }
          {
            \global
            \keepWithTag #'usePartials \AltoChorusMusic
          }
        \context NullVoice = breaks {
          \global
          \keepWithTag #'usePartials \SheetMusicChorusBreaks
        }
        \context NullVoice = align {
          \global
          \keepWithTag #'usePartials \SopranoChorusMusic
        }
        \new Lyrics \lyricsto "align" {
          \ChorusLyrics
        }
      >>
      \context Staff = lower <<
        \clef bass
        \partCombine
          {
            \global
            \keepWithTag #'usePartials \TenorChorusMusic
          }
          {
            \global
            \keepWithTag #'usePartials \BassChorusMusic
          }
      >>
    >>
    \SheetMusicChorusLayout
  }
}
