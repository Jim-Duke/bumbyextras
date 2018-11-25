\version "2.19.49"

\include "Words-and-music.ly"

ShowScriptureOnSheetMusic = ##t

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
            \keepWithTag #'(usePartials sheetMusicRhythms) \sopranoVerse
          }
          {
            \global
            \keepWithTag #'(usePartials sheetMusicRhythms) \altoVerse
          }
        \context NullVoice = sheetMusicBreaks {
          \global
          \SheetMusicBreaks
        }
        \context NullVoice = verseOneAlign {
          \global
          \keepWithTag #'(usePartials verseOneRhythms) \sopranoVerse
        }
        \context NullVoice = verseTwoAlign {
          \global
          \keepWithTag #'(usePartials verseTwoRhythms) \sopranoVerse
        }
        \new Lyrics \lyricsto "verseOneAlign" {
          \verseOne
        }
        \new Lyrics \lyricsto "verseTwoAlign" {
          \verseTwo
        }
      >>
      \context Staff = lower \with { printPartCombineTexts = ##f } <<
        \clef bass
        \partcombine
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
  \markup {	
    \huge \bold "Chorus:"
  }
  \score {
    \context ChoirStaff <<
      \override Score.BarNumber.break-visibility = ##(#f #f #f)
      \context Staff = upper <<
        \partCombine
          {
            \global
            \keepWithTag #'usePartials \sopranoChorus
          }
          {
            \global
            \keepWithTag #'usePartials \altoChorus
          }
        \context NullVoice = ChorusBreaks {
          \global
          \keepWithTag #'usePartials \SheetMusicChorusBreaks
        }
        \context NullVoice = chorusAlign {
            \global
            \keepWithTag #'usePartials \sopranoChorus
        }
        \context NullVoice = echoAlign {
          \global
          \keepWithTag #'usePartials \EchoAlign
        }
        \new Lyrics \lyricsto "chorusAlign" {
          \chorusLyrics
        }
        \new Lyrics \lyricsto "echoAlign" {
          \EchoLyrics
        }
      >>
      \context Staff = lower <<
        \clef bass
        \partCombine
          {
            \global
            \keepWithTag #'usePartials \tenorChorus
          }
          {
            \global
            \keepWithTag #'usePartials \bassChorus
          }
      >>
    >>
    \SheetMusicChorusLayout
  }
}
