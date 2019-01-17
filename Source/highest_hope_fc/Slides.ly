\version "2.19.49"

\include "Words-and-music.ly"

SlideStaffStaffSpacing = #16.0

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
  
CodaMarkup = \markup {
  \abs-fontsize #40
  \bold
  "CODA:"
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
  \VerseTitleMarkup \noPageBreak
  \score {
    <<
      \override Score.BarNumber.break-visibility = ##(#f #f #f)
      \context Staff = upper \with { printPartCombineTexts = ##f } <<
        \partCombine
          {
            \global
            \SopranoVerseOneIntro
            \keepWithTag #'verseOneSlide \SopranoCommon
            \keepWithTag #'verseOneSlide \SopranoRefrain
          }
          {
            \global
            \AltoVerseOneIntro
            \keepWithTag #'verseOneSlide \AltoCommon
            \AltoRefrain
          }
        \new NullVoice = breaks {
          \global
          \SlideVerseOneIntroBreaks
          \SlideCommonBreaksOne
          \SlideRefrainBreaks
        }
        \context NullVoice = align {
          \global
          \SopranoVerseOneIntro
          \keepWithTag #'verseOneSlide \SopranoCommon
          \keepWithTag #'verseOneSlide \SopranoRefrain
        }
        \new Lyrics \lyricsto "align" {
          \huge \VerseOneIntro \VerseOneCommon \Refrain
        }
      >>
      \context Staff = lower \with { printPartCombineTexts = ##f } <<
        \clef bass
        \partCombine
          {
            \global
            \TenorVerseOneIntro
            \keepWithTag #'verseOneSlide \TenorCommon
            \TenorRefrain
          }
          {
            \global
            \BassVerseOneIntro
            \keepWithTag #'verseOneSlide \BassCommon
            \BassRefrain
          }
      >>
    >>
    \SlideLayout
  }
  \pageBreak
  \VerseTitleMarkup \noPageBreak
  \score {
    <<
      \override Score.BarNumber.break-visibility = ##(#f #f #f)
      \context Staff = upper \with { printPartCombineTexts = ##f } <<
        \partCombine
          {
            \global
            \keepWithTag #'verseTwoSlide \SopranoCommon
            \keepWithTag #'verseTwoSlide \SopranoRefrain
          }
          {
            \global
            \keepWithTag #'verseTwoSlide \AltoCommon
            \AltoRefrain
          }
        \new NullVoice = breaks {
          \global
          \SlideCommonBreaksTwo
          \SlideRefrainBreaks
        }
        \context NullVoice = align {
          \global
          \keepWithTag #'verseTwoSlide \SopranoCommon
          \keepWithTag #'verseTwoSlide \SopranoRefrain
        }
        \new Lyrics \lyricsto "align" {
          \huge
          \keepWithTag #'verseTwoSlide \VerseTwoCommon
          \Refrain
        }
      >>
      \context Staff = lower \with { printPartCombineTexts = ##f } <<
        \clef bass
        \partCombine
          {
            \global
            \keepWithTag #'verseTwoSlide \TenorCommon
            \TenorRefrain
          }
          {
            \global
            \keepWithTag #'verseTwoSlide \BassCommon
            \BassRefrain
          }
      >>
    >>
    \SlideLayout
  }
  \pageBreak
  \CodaMarkup \noPageBreak
  \score {
    <<
      \override Score.BarNumber.break-visibility = ##(#f #f #f)
      \context Staff = upper \with { printPartCombineTexts = ##f } <<
        \partCombine
          {
            \global
            \keepWithTag #'verseOneSlide \SopranoCoda
            \keepWithTag #'verseOneSlide \SopranoCommon
            \keepWithTag #'verseOneSlide \SopranoRefrain
          }
          {
            \global
            \AltoCoda
            \keepWithTag #'verseOneSlide \AltoCommon
            \keepWithTag #'verseOneSlide \AltoRefrain
          }
        \new NullVoice = breaks {
          \global
          \SlideCodaBreaks
          \SlideCommonBreaksOne
          \SlideRefrainBreaks
        }
        \context NullVoice = align {
          \global
          \keepWithTag #'verseOneSlide \SopranoCoda
          \keepWithTag #'verseOneSlide \SopranoCommon
          \keepWithTag #'verseOneSlide \SopranoRefrain
        }
        \new Lyrics \lyricsto "align" {
          \huge
          \Coda
          \keepWithTag #'verseOneSlide \VerseOneCommon
          \Refrain
        }
      >>
      \context Staff = lower \with { printPartCombineTexts = ##f } <<
        \clef bass
        \partCombine
          {
            \global
            \TenorCoda
            \keepWithTag #'verseOneSlide \TenorCommon
            \TenorRefrain
          }
          {
            \global
            \BassCoda
            \keepWithTag #'verseOneSlide \BassCommon
            \BassRefrain
          }
      >>
    >>
    \SlideLayout
  }
}
