\version "2.19.49"

\include "Words-and-music.ly"

SlideStaffStaffSpacing = #16

\include "../../../LilypondTemplates/standard-elements.ly"

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
  \score {
    <<
      \override Score.BarNumber.break-visibility = ##(#f #f #f)
      \context Staff = upper <<
        \partCombine
          {
            \global
            \keepWithTag #'verseOne \SopranoVerseBodyMusic
            \SopranoVerseEndingMusic
          }
          {
            \global
            \keepWithTag #'verseOne \AltoVerseBodyMusic
            \AltoVerseEndingMusic
          }
        \new NullVoice = breaks {
          \global
          \keepWithTag #'(usePartials verseOne) \SlidesVerseBreaks
        }
        \new NullVoice = alignVoice {
          \global
          \keepWithTag #'verseOne \SopranoVerseBodyMusic
          \SopranoVerseEndingMusic
        }
        \new Lyrics \lyricsto "alignVoice" {
          \huge \removeWithTag #'sheetMusic { \VerseOne }
        }
      >>
      \context Staff = lower <<
        \clef bass
        \partCombine
          {
            \global
            \keepWithTag #'verseOne \TenorVerseBodyMusic
            \TenorVerseEndingMusic
          }
          {
            \global
            \keepWithTag #'verseOne \BassVerseBodyMusic
            \BassVerseEndingMusic
          }
      >>
    >>
    \SlideLayout
  }
  \pageBreak
  \score {
    <<
      \override Score.BarNumber.break-visibility = ##(#f #f #f)
      \context Staff = upper <<
        \partCombine
          {
            \global
            \keepWithTag #'(verseTwo usePartials) \SopranoVerseBodyMusic
            \SopranoVerseEndingMusic
            \keepWithTag #'(verseTwo slideMusic) \SopranoChorusMusic
          }
          {
            \global
            \keepWithTag #'(verseTwo usePartials) \AltoVerseBodyMusic
            \AltoVerseEndingMusic
            \keepWithTag #'(verseTwo) \AltoChorusMusic
          }
        \new NullVoice = breaks {
          \global
          \keepWithTag #'(usePartials verseTwo) \SlidesVerseBreaks
          \keepWithTag #'(verseTwo) \SlidesChorusBreaks
        }
        \new NullVoice = alignVoice {
          \global
          \keepWithTag #'(verseTwo usePartials) \SopranoVerseBodyMusic
          \SopranoVerseEndingMusic
          \keepWithTag #'(verseTwo slideMusic) \SopranoChorusMusic
        }
        \new Lyrics \lyricsto "alignVoice" {
          \huge \removeWithTag #'sheetMusic { \VerseTwo }
        }
      >>
      \context Staff = lower <<
        \clef bass
        \partCombine
          {
            \global
            \keepWithTag #'(verseTwo usePartials) \TenorVerseBodyMusic
            \TenorVerseEndingMusic
            \keepWithTag #'(verseTwo) \TenorChorusMusic
          }
          {
            \global
            \keepWithTag #'(verseTwo usePartials) \BassVerseBodyMusic
            \BassVerseEndingMusic
            \keepWithTag #'(verseTwo) \BassChorusMusic
          }
      >>
    >>
    \SlideLayout
  }
  \pageBreak
  \score {
    <<
      \override Score.BarNumber.break-visibility = ##(#f #f #f)
      \context Staff = upper <<
        \partCombine
          {
            \global
            \keepWithTag #'verseThree \SopranoVerseBodyMusic
            \SopranoVerseEndingMusic
          }
          {
            \global
            \keepWithTag #'verseThree \AltoVerseBodyMusic
            \AltoVerseEndingMusic
          }
        \new NullVoice = breaks {
          \global
          \keepWithTag #'(usePartials verseThree) \SlidesVerseBreaks
        }
        \new NullVoice = alignVoice {
          \global
          \keepWithTag #'verseThree \SopranoVerseBodyMusic
          \SopranoVerseEndingMusic
        }
        \new Lyrics \lyricsto "alignVoice" {
          \huge \removeWithTag #'sheetMusic { \VerseThree }
        }
      >>
      \context Staff = lower <<
        \clef bass
        \partCombine
          {
            \global
            \keepWithTag #'verseThree \TenorVerseBodyMusic
            \TenorVerseEndingMusic
          }
          {
            \global
            \keepWithTag #'verseThree \BassVerseBodyMusic
            \BassVerseEndingMusic
          }
      >>
    >>
    \SlideLayout
  }
  \pageBreak
  \score {
    <<
      \override Score.BarNumber.break-visibility = ##(#f #f #f)
      \context Staff = upper <<
        \partCombine
          {
            \global
            \keepWithTag #'(verseFour usePartials) \SopranoVerseBodyMusic
            \SopranoVerseEndingMusic
            \keepWithTag #'(verseFour slideMusic) \SopranoChorusMusic
          }
          {
            \global
            \keepWithTag #'(verseFour usePartials) \AltoVerseBodyMusic
            \AltoVerseEndingMusic
            \keepWithTag #'(verseFour) \AltoChorusMusic
          }
        \new NullVoice = breaks {
          \global
          \keepWithTag #'(usePartials verseFour) \SlidesVerseBreaks
          \keepWithTag #'(verseFour) \SlidesChorusBreaks
        }
        \new NullVoice = alignVoice {
          \global
          \keepWithTag #'(verseFour usePartials) \SopranoVerseBodyMusic
          \SopranoVerseEndingMusic
          \keepWithTag #'(verseFour slideMusic) \SopranoChorusMusic
        }
        \new Lyrics \lyricsto "alignVoice" {
          \huge \removeWithTag #'sheetMusic { \VerseFour }
        }
      >>
      \context Staff = lower <<
        \clef bass
        \partCombine
          {
            \global
            \keepWithTag #'(verseFour usePartials) \TenorVerseBodyMusic
            \TenorVerseEndingMusic
            \keepWithTag #'(verseFour) \TenorChorusMusic
          }
          {
            \global
            \keepWithTag #'(verseFour usePartials) \BassVerseBodyMusic
            \BassVerseEndingMusic
            \keepWithTag #'(verseFour) \BassChorusMusic
          }
      >>
    >>
    \SlideLayout
  }
  \pageBreak
  \score {
    <<
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
        \new NullVoice = breaks {
          \global
          \keepWithTag #'usePartials \SlidesCodaBreaks
        }
        \new NullVoice = alignVoice {
          \global
          \keepWithTag #'usePartials \SopranoCodaMusic
        }
        \new Lyrics \lyricsto "alignVoice" {
          \huge \Coda
        }
      >>
      \context Staff = lower <<
        \clef bass
        \partCombine
          {
            \global
            \keepWithTag #'usePartials \TenorCodaMusic
          }
          {
            \global
            \keepWithTag #'usePartials \BassCodaMusic
          }
      >>
    >>
    \SlideLayout
  }
}
