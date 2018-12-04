\version "2.19.49"

\include "Words-and-music.ly"

SlideStaffStaffSpacing = #16

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
            \char ##x2022 "arr."
            \fromproperty #'header:arranger
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
            \keepWithTag #'(usePartials verseOneSlidesRhythms) \SopranoVerseMusic
          }
          {
            \global
            \keepWithTag #'(usePartials verseOneSlidesRhythms) \AltoVerseMusic
          }
        \new NullVoice = breaks {
          \global
          \keepWithTag #'usePartials \SlidesVerseBreaks
        }
        \new NullVoice = alignVoice {
          \global
          \keepWithTag #'(usePartials verseOneSlidesRhythms) \SopranoVerseMusic
        }
        \new Lyrics \lyricsto "alignVoice" {
          \huge \keepWithTag #'verseOneSlidesRhythm \VerseOne
        }
      >>
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
        \new NullVoice = breaks {
          \global
          \keepWithTag #'usePartials \SlidesVerseBreaks
        }
        \new NullVoice = alignVoice {
          \global
          \keepWithTag #'(usePartials verseTwoSlidesRhythms) \SopranoVerseMusic
        }
        \new Lyrics \lyricsto "alignVoice" {
          \huge \keepWithTag #'verseTwoSlidesRhythm \VerseTwo
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
        \new NullVoice = breaks {
          \global
          \keepWithTag #'usePartials \SlidesChorusBreaks
        }
        \new NullVoice = alignVoice {
          \global
          \keepWithTag #'usePartials \SopranoChorusMusic
        }
        \new Lyrics \lyricsto "alignVoice" {
          \huge \Chorus
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
  \score {
    <<
      \override Score.BarNumber.break-visibility = ##(#f #f #f)
      \context Staff = upper <<
        \partCombine
          {
            \global
            \keepWithTag #'usePartials \SopranoChorusTailMusic
          }
          {
            \global
            \keepWithTag #'usePartials \AltoChorusTailMusic
          }
        \new NullVoice = breaks {
          \global
          \keepWithTag #'usePartials \SlidesChorusTailBreaks
        }
        \new NullVoice = alignVoice {
          \global
          \keepWithTag #'usePartials \SopranoChorusTailMusic
        }
        \new Lyrics \lyricsto "alignVoice" {
          \huge \ChorusTail
        }
      >>
      \context Staff = lower <<
        \clef bass
        \partCombine
          {
            \global
            \keepWithTag #'usePartials \TenorChorusTailMusic
          }
          {
            \global
            \keepWithTag #'usePartials \BassChorusTailMusic
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
            \keepWithTag #'usePartials \SopranoChorusTailMusic
          }
          {
            \global
            \keepWithTag #'usePartials \AltoChorusTailMusic
          }
        \new NullVoice = breaks {
          \global
          \keepWithTag #'usePartials \SlidesChorusTailBreaks
        }
        \new NullVoice = alignVoice {
          \global
          \keepWithTag #'usePartials \SopranoChorusTailMusic
        }
        \new Lyrics \lyricsto "alignVoice" {
          \huge \ChorusTail
        }
      >>
      \context Staff = lower <<
        \clef bass
        \partCombine
          {
            \global
            \keepWithTag #'usePartials \TenorChorusTailMusic
          }
          {
            \global
            \keepWithTag #'usePartials \BassChorusTailMusic
          }
      >>
    >>
    \SlideLayout
  }
}
