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
            \wordwrap-field #'header:copyright
          }
          \vspace #0.4
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
            \keepWithTag #'(usePartials verseOneSlidesRhythms) \SopranoVerseMusic
          }
          {
            \global
            \keepWithTag #'(usePartials verseOneSlidesRhythms) \AltoVerseMusic
          }
        \context NullVoice = slideMusicVerseBreaks {
          \global
          \SlideMusicVerseOneBreaks
        }
        \context NullVoice = alignVoice {
          \global
          \keepWithTag #'(usePartials verseOneSlidesRhythms) \SopranoVerseMusic
        }
      >>
      \new Lyrics \lyricsto "alignVoice" {
        \huge \removeWithTag #'sheetMusicRhythms \VerseOneLyrics
      }
      \context Staff = lower <<
        \clef bass
        \partCombine
          {
            \global
            \keepWithTag #'(usePartials verseOneSlidesRhythms) \TenorVerseMusic
          }
          {
            \global
            \keepWithTag #'(usePartials verseOneSlidesRhythms) \BassVerseMusic
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
            \keepWithTag #'(usePartials verseTwoSlidesRhythms) \SopranoVerseMusic
          }
          {
            \global
            \keepWithTag #'(usePartials verseTwoSlidesRhythms) \AltoVerseMusic
          }
        \context NullVoice = slideMusicBreaks {
          \global
          \SlideMusicVerseTwoBreaks
        }
        \context NullVoice = alignVoice {
          \global
          \keepWithTag #'(usePartials verseTwoSlidesRhythms) \SopranoVerseMusic
        }
        \new Lyrics \lyricsto "alignVoice" {
          \huge \removeWithTag #'sheetMusicRhythms \VerseTwoLyrics
        }
      >>
      \context Staff = lower <<
        \clef bass
        \partCombine
          {
            \global
            \keepWithTag #'(usePartials verseTwoSlidesRhythms) \TenorVerseMusic
          }
          {
            \global
            \keepWithTag #'(usePartials verseTwoSlidesRhythms) \BassVerseMusic
          }
      >>
    >>
    \SlideLayout
  }
  \pageBreak
  \markup {
    \abs-fontsize #40
    \bold
    "Refrain:"
  } \noPageBreak
  \score {
    <<
      \override Score.BarNumber.break-visibility = ##(#f #f #f)
      \context Staff = upper \with { printPartCombineTexts = ##f } <<
        \partCombine
          {
            \global
            \keepWithTag #'usePartials \SopranoRefrainMusic
          }
          {
            \global
            \keepWithTag #'usePartials \AltoRefrainMusic
          }
        \context NullVoice = slideMusicRefrainBreaks {
          \global
          \SlideMusicRefrainBreaks
        }
        \context NullVoice = alignTop {
          \global
          \keepWithTag #'usePartials \SopranoRefrainMusic
        }
        \context NullVoice = alignBot {
          \global
          \keepWithTag #'usePartials \AltLyricsAlign
        }
      >>
      \new Lyrics \lyricsto "alignTop" {
        \huge \RefrainLyrics
      }
      \new Lyrics \lyricsto "alignBot" {
        \huge \AltRefrainLyrics
      }
      \context Staff = lower \with { printPartCombineTexts = ##f } <<
        \clef bass
        \partCombine
          {
            \global
            \keepWithTag #'usePartials \TenorRefrainMusic
          }
          {
            \global
            \keepWithTag #'usePartials \BassRefrainMusic
          }
      >>
    >>
    \SlideLayout
  }
}
