\version "2.19.49"

\include "Words-and-music.ly"

SheetMusicLyricsMinimumDistance = 2

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
    % Verses Section
    \context ChoirStaff <<
      \override Score.BarNumber.break-visibility = ##(#f #f #f)
      \context Staff = upper <<
        \partCombine
          {
            \global
            \partial 4 \SopranoVerseMusic
          }
          {
            \global
            \partial 4 \AltoVerseMusic
          }
        \context NullVoice = breaks {
          \global
          \partial 4 \SheetMusicVerseBreaks
        }
        \context NullVoice = align {
          \global
          \partial 4 \AlignVerseMusic
        }
        \new Lyrics \lyricsto "align" {
          \VerseOne
        }
        \new Lyrics \lyricsto "align" {
          \VerseTwo
        }
      >>
      \context Staff = lower <<
        \clef bass
        \partCombine
          {
            \global
            \partial 4 \TenorVerseMusic
          }
          {
            \global
            \partial 4 \BassVerseMusic
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
            \global
            \partial 2 \SopranoChorusMusic
          }
          {
            \global
            \partial 2 \AltoChorusMusic
          }
        \context NullVoice = breaks {
          \global
          \partial 2 \SheetMusicChorusBreaks
        }
        \context NullVoice = align {
          \global
          \partial 2 \AlignChorusMusic
        }
        \new Lyrics \lyricsto "align" {
          \Chorus
        }
      >>
      \context Staff = lower <<
        \clef bass
        \partCombine
          {
            \global
            \partial 2 \TenorChorusMusic
          }
          {
            \global
            \partial 2 \BassChorusMusic
          }
      >>
    >>
    \SheetMusicVerseLayout
  }
}
