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
        \partCombine
          {
            \global
            \keepWithTag #'(notForMIDI allVerses) \SopranoVerseMusic
          }
          {
            \global
            \keepWithTag #'(notForMIDI allVerses) \AltoVerseMusic
          }
        \context NullVoice = breaks {
          \global
          \SheetMusicVerseBreaks
        }
        \context NullVoice = alignOne {
          \global
          \keepWithTag #'(verseOne) \AlignMusic
        }
        \context NullVoice = alignTwo {
          \global
          \keepWithTag #'(verseTwo) \AlignMusic
        }
        \context NullVoice = alignThree {
          \global
          \keepWithTag #'(verseThree) \AlignMusic
        }
      >>
      \new Lyrics \lyricsto "alignOne" {
        \VerseOne \Common \Common \Close
      }
      \new Lyrics \lyricsto "alignTwo" {
        \VerseTwo
      }
      \new Lyrics \lyricsto "alignThree" {
        \VerseThree
      }
      \context Staff = lower \with { printPartCombineTexts = ##f } <<
        \clef bass
        \partCombine
          {
            \global
            \keepWithTag #'(notForMIDI allVerses) \TenorVerseMusic
          }
          {
            \global
            \keepWithTag #'(notForMIDI allVerses) \BassVerseMusic
          }
      >>
    >>
    \SheetMusicVerseLayout
  }
}
