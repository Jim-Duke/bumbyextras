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
    first-page-number = #(if number_on_rhs 1 2)
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
          }
          \line {
            \fromproperty #'header:arranger
          }
          \line {
            \wordwrap-field #'header:copyright
          }
          \vspace #0.4
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
            \keepWithTag #'usePartials \sopranoVerse
          }
          {
            \global
            \keepWithTag #'usePartials \altoVerse
          }
        \context NullVoice = sheetMusicBreaks {
          \global
          \sheetMusicBreaks
        }
        \context NullVoice = "alignMain" {
          \global
          \keepWithTag #'usePartials \sopranoVerse
        }
        \context NullVoice = "alignThird" {
          \global
          \keepWithTag #'usePartials \thirdVerseAlign
        }
        \new Lyrics \lyricsto "alignMain" {
          \verseOne
        }
        \new Lyrics \lyricsto "alignMain" {
          \verseTwo
        }
        \new Lyrics \lyricsto "alignThird" {
          \verseThree
        }
      >>
      \context Staff = lower <<
        \clef bass
        \partCombine
          {
            \global
            \keepWithTag #'usePartials \tenorVerse
          }
          {
            \global
            \keepWithTag #'usePartials \bassVerse
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
        \context NullVoice = breaks {
          \global
          \keepWithTag #'usePartials \sheetMusicRefrainBreaks
        }
        \context NullVoice = align {
          \global
          \keepWithTag #'usePartials \alignChorus
        }
        \new Lyrics \lyricsto "align" {
          \chorusLyrics
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
  \markup {
    \column {
      \vspace #1
      \huge \bold "CODA: (sung after the chorus on the final verse)"
    }
  }
  \score {
    \context ChoirStaff <<
      \override Score.BarNumber.break-visibility = ##(#f #f #f)
      \context Staff = upper <<
        \partCombine
          {
            \global
            \keepWithTag #'usePartials \sopranoCoda
          }
          {
            \global
            \keepWithTag #'usePartials \altoCoda
          }
        \context NullVoice = align {
          \global
          \keepWithTag #'usePartials \sopranoCoda
        }
        \context NullVoice = breaks {
          \global
          \keepWithTag #'usePartials \SheetMusicCodaBreaks
        }
        \new Lyrics \lyricsto "align" {
          \codaLyrics
        }
      >>
      \context Staff = lower <<
        \clef bass
        \partCombine
          {
            \global
            \keepWithTag #'usePartials \tenorCoda
          }
          {
            \global
            \keepWithTag #'usePartials \bassCoda
          }
      >>
    >>
    \SheetMusicChorusLayout
  }
}
