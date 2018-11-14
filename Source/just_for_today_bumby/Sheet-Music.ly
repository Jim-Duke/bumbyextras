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
    \context ChoirStaff <<
      \override Score.BarNumber.break-visibility = ##(#f #f #f)
      \context Staff = upper <<
        \partCombine
          {
            \global
            \keepWithTag #'(usePartials sheetMusicRhythms) \sopranoVerse
          }
          {
            \global
            \keepWithTag #'(usePartials sheetMusicRhythms) \altoVerse
          }
        \context NullVoice = sheetMusicVerseBreaks {
          \global
          \keepWithTag #'usePartials \sheetMusicVerseBreaks
        }
        \context NullVoice = sopranosVerseOneRhythms {
          \global
          \keepWithTag #'(usePartials verseOneRhythms) \sopranoVerse
        }
        \context NullVoice = sopranosVerseTwoRhythms {
          \global
          \keepWithTag #'(usePartials verseTwoRhythms) \sopranoVerse
        }
        \new Lyrics \lyricsto "sopranosVerseOneRhythms" {
          \verseOneLyrics
        }
        \new Lyrics \lyricsto "sopranosVerseTwoRhythms" {
          \verseTwoLyrics
        }
      >>
      \context Staff = lower <<
        \clef bass
        \partCombine
          {
            \global
            \keepWithTag #'(usePartials sheetMusicRhythms) \tenorVerse
          }
          {
            \global
            \keepWithTag #'(usePartials sheetMusicRhythms) \bassVerse
          }
      >>
    >>
    \SheetMusicVerseLayout
  }
  \pageBreak
  \markup { \bold "Refrain:" }
  \score {
    \context ChoirStaff <<
      \override Score.BarNumber.break-visibility = ##(#f #f #f)
      \context Staff = upper <<
        \partCombine
          {
            \global
            \keepWithTag #'usePartials \sopranoRefrain
          }
          {
            \global
            \keepWithTag #'usePartials \altoRefrain
          }
        \context NullVoice = refreainBreaks {
          \global
          \keepWithTag #'usePartials \sheetMusicRefrainBreaks
        }
        \context NullVoice = align {
          \global
          \keepWithTag #'usePartials \sopranoRefrain
        }
        \new Lyrics \lyricsto "align" {
          \refrainLyrics
        }
      >>
      \context Staff = lower <<
        \clef bass
        \partCombine
          {
            \global
            \keepWithTag #'usePartials \tenorRefrain
          }
          {
            \global
            \keepWithTag #'usePartials \bassRefrain
          }
      >>
    >>
    \SheetMusicChorusLayout
  }
}
