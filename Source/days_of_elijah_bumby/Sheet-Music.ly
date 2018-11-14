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
            \char ##x2022
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
      \context Staff = upper <<
        \partCombine
          {
            \global
            \keepWithTag #'(sheetRhythms usePartials) \SopranoVerseMusic
          }
          {
            \global
            \keepWithTag #'(sheetRhythms usePartials) \AltoVerseMusic
          }
        \context NullVoice = breaks {
          \global
          \keepWithTag #'usePartials \SheetMusicVerseBreaks
        }
        \context NullVoice = align {
          \global
          \keepWithTag #'(sheetRhythms usePartials) \SheetMusicAlign
        }
        \new Lyrics \lyricsto "align" {
          \VerseOneLyrics
        }
        \new Lyrics \lyricsto "align" {
          \VerseTwoLyrics
        }
      >>
      \context Staff = lower \with { printPartCombineTexts = ##f } <<
        \clef bass
        \partcombine
          {
            \global
            \keepWithTag #'(sheetRhythms usePartials) \TenorVerseMusic
          }
          {
            \global
            \keepWithTag #'(sheetRhythms usePartials) \BassVerseMusic
          }
      >>
    >>
    \SheetMusicVerseLayout
  }
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
  \markup {	
    \huge \bold "Coda:"
  }
  \score {
    \context ChoirStaff <<
      \override Score.BarNumber.break-visibility = ##(#f #f #f)
      \context Staff = upper <<
        \partCombine
          {
            \global
            \keepWithTag #'usePartials \SopranoCodaMusic
          }
          {
            \global
            \keepWithTag #'usePartials \AltoCodaMusic
          }
        \context NullVoice = breaks {
          \global
          \keepWithTag #'usePartials \SheetMusicCodaBreaks
        }
        \context NullVoice = alignTop {
            \global
            \keepWithTag #'usePartials \AlignTopCodaMusic
        }
        \context NullVoice = alignBot {
            \global
            \keepWithTag #'usePartials \AlignBotCodaMusic
        }
        \new Lyrics \lyricsto "alignTop" {
          \CodaLyrics
        }
      >>
      \context Staff = lower <<
        \clef bass
        {
          \partCombine
            {
              \global
              \keepWithTag #'usePartials \TenorCodaMusic
            }
            {
              \global
              \keepWithTag #'usePartials \BassCodaMusic
            }
          <<
            \context Voice = tenor {
              \voiceOne \TenorCodaTailMusic
            }
            \context Voice = bass {
              \voiceTwo \BassCodeTailMusic
            }
          >>
        }
      >>
      \new Lyrics \lyricsto "alignBot" {
        \CodaBotLyrics
      }
    >>
    \SheetMusicChorusLayout
  }
}
