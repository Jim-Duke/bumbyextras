\version "2.19.49"

\include "Words-and-music.ly"

SlideStaffStaffSpacing = #20

\include "../../../LilypondTemplates/standard-elements.ly"

VerseTitleMarkup = \markup {
    \fill-line {
      \null
      \raise #1
      \override #'(line-width . 70)
      \center-column {
        \abs-fontsize #40
        \bold
        \Title
      }
      {
        \abs-fontsize #40
        \bold
        \raise #1
        \SongNumber
      }
    }
  }

\book {
  \paper {
    #(set-paper-size "arch alandscape" )

    %
    % Turn on to see spacing details while you tweek the layout
    %
    % annotate-spacing = ##t
    
    indent = 0
    left-margin = 0.25\in
    right-margin = 0.25\in
    top-margin = 0.25\in
    bottom-margin = 0.25\in
    print-page-number = ##f
    ragged-bottom = ##t
    oddFooterMarkup = \markup {
      \on-the-fly #first-page \column {
        \fontsize #-2
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
      \center-column {
        \fill-line {
          \null
          {
            \abs-fontsize #44
            \bold
            \fromproperty #'header:songNumber
          }
        }
        \vspace #3
        \override #'(line-width . 70)
        \center-column {
          \abs-fontsize #48
          \bold
          \wordwrap-field #'header:title
        }
        \SlideScripture
      }
    }
    scoreTitleMarkup = ##f
    #(layout-set-staff-size 44)
  }
  \pageBreak
  \VerseTitleMarkup
  \score {
    <<
      \override Score.BarNumber.break-visibility = ##(#f #f #f)
      \context Staff = upper <<
        \partCombine
          {
            \global
            \keepWithTag #'(usePartials verseOneSlideRhythms) \SopranoVerseMusic
          }
          {
            \global
            \keepWithTag #'(usePartials verseOneSlideRhythms) \AltoVerseMusic
          }
        \context NullVoice = SlideMusicBreaks {
          \global
          \keepWithTag #'(usePartials verseOneSlideRhythms) \SlideMusicBreaks
        }
        \context NullVoice = align {
          \global
          \keepWithTag #'(usePartials verseOneSlideRhythms) \SopranoVerseMusic
        }
        \new Lyrics \lyricsto "align" {
          \huge \keepWithTag #'(verseOneSlideRhythms) \VerseOneLyrics
        }
      >>
      \context Staff = lower <<
        \clef bass
        \partCombine
          {
            \global
            \keepWithTag #'(usePartials verseOneSlideRhythms) \TenorVerseMusic
          }
          {
            \global
            \keepWithTag #'(usePartials verseOneSlideRhythms) \BassVerseMusic
          }
      >>
    >>
    \SlideLayout
  }
  \VerseTitleMarkup
  \score {
    <<
      \override Score.BarNumber.break-visibility = ##(#f #f #f)
      \context Staff = upper <<
        \partCombine
          {
            \global
            \keepWithTag #'(usePartials verseTwoSlideRhythms) \SopranoVerseMusic
          }
          {
            \global
            \keepWithTag #'(usePartials verseTwoSlideRhythms) \AltoVerseMusic
          }
        \context NullVoice = SlideMusicBreaks {
          \global
          \keepWithTag #'(usePartials verseTwoSlideRhythms) \SlideMusicBreaks
        }
        \context NullVoice = align {
          \global
          \keepWithTag #'(usePartials verseTwoSlideRhythms) \SopranoVerseMusic
        }
        \new Lyrics \lyricsto "align" {
          \huge \keepWithTag #'(verseTwoSlideRhythms) \VerseTwoLyrics
        }
      >>
      \context Staff = lower <<
        \clef bass
        \partCombine
          {
            \global
            \keepWithTag #'(usePartials verseTwoSlideRhythms) \TenorVerseMusic
          }
          {
            \global
            \keepWithTag #'(usePartials verseTwoSlideRhythms) \BassVerseMusic
          }
      >>
    >>
    \SlideLayout
  }
  \pageBreak
  \markup {
    \abs-fontsize #40
    \bold
    "Chorus:"
  } \noPageBreak
  \score {
    <<
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
          \keepWithTag #'usePartials \SlideChorusBreaks
        }
        \context NullVoice = align {
          \global
          \keepWithTag #'usePartials \SopranoChorusMusic
        }
        \new Lyrics \lyricsto "align" {
          \huge \ChorusLyrics
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
    \SlideLayout
  }
  \pageBreak
  \markup {
    \abs-fontsize #40
    \bold
    "CODA:"
  } \noPageBreak
  \score {
    <<
      \override Score.BarNumber.break-visibility = ##(#f #f #f)
      \context Staff = upper <<
        \partCombine
          {
            \global
            \SopranoCodaMusic
          }
          {
            \global
            \AltoCodaMusic
          }
        \context NullVoice = breaks {
          \global
          \SlideCodaBreaks
        }
        \context NullVoice = alignTop {
          \global
          \AlignTopCodaMusic
        }
        \context NullVoice = alignBot {
          \global
          \AlignBotCodaMusic
        }
        \new Lyrics \lyricsto "alignTop" {
          \huge \CodaLyrics
        }
      >>
      \context Staff = lower <<
        \clef bass
        {
          \partCombine
            {
              \global
              \TenorCodaMusic
            }
            {
              \global
              \BassCodaMusic
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
        \huge \CodaBotLyrics
      }
    >>
    \SlideLayout
  }
}
