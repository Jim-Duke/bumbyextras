\version "2.19.49"

\include "Words-and-music.ly"
\include "../../../LilypondTemplates/standard-elements.ly"

#(ly:parser-define! (string->symbol "outputName")
   (if (null? (ly:parser-lookup (string->symbol "BuildDir")))
       "Slides"
       (string-append BuildDir SongNumber " - " Title " - Slides")))

\book {
  \bookOutputName \outputName
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
  \score {
    <<
      \override Score.BarNumber.break-visibility = ##(#f #f #f)
      \context Staff = upper \with { printPartCombineTexts = ##f } <<
        \partcombine
          {
            \global
            \keepWithTag #'usePartials \SopranoVerseMusic
          }
          {
            \global
            \keepWithTag #'usePartials \AltoVerseMusic
          }
        \new NullVoice = breaks {
          \global
          \keepWithTag #'usePartials \SlidesVerseBreaks
        }
        \new NullVoice = alignVoice {
          \global
          \keepWithTag #'usePartials \SopranoVerseMusic
        }
        \new Lyrics \lyricsto "alignVoice" {
          \huge \VerseOne
        }
      >>
      \context Staff = lower \with { printPartCombineTexts = ##f } <<
        \clef bass
        \partcombine
          {
            \global
            \keepWithTag #'usePartials \TenorVerseMusic
          }
          {
            \global
            \keepWithTag #'usePartials \BassVerseMusic
          }
      >>
    >>
    \SlideLayout
  }
  \score {
    <<
      \override Score.BarNumber.break-visibility = ##(#f #f #f)
      \context Staff = upper \with { printPartCombineTexts = ##f } <<
        \partcombine
          {
            \global
            \keepWithTag #'usePartials \SopranoVerseMusic
          }
          {
            \global
            \keepWithTag #'usePartials \AltoVerseMusic
          }
        \new NullVoice = breaks {
          \global
          \keepWithTag #'usePartials \SlidesVerseBreaks
        }
        \new NullVoice = alignVoice {
          \global
          \keepWithTag #'usePartials \SopranoVerseMusic
        }
        \new Lyrics \lyricsto "alignVoice" {
          \huge \VerseTwo
        }
      >>
      \context Staff = lower \with { printPartCombineTexts = ##f } <<
        \clef bass
        \partcombine
          {
            \global
            \keepWithTag #'usePartials \TenorVerseMusic
          }
          {
            \global
            \keepWithTag #'usePartials \BassVerseMusic
          }
      >>
    >>
    \SlideLayout
  }
  \score {
    <<
      \override Score.BarNumber.break-visibility = ##(#f #f #f)
      \context Staff = upper \with { printPartCombineTexts = ##f } <<
        \partcombine
          {
            \global
            \keepWithTag #'usePartials \SopranoVerseMusic
          }
          {
            \global
            \keepWithTag #'usePartials \AltoVerseMusic
          }
        \new NullVoice = breaks {
          \global
          \keepWithTag #'usePartials \SlidesVerseBreaks
        }
        \new NullVoice = alignVoice {
          \global
          \keepWithTag #'usePartials \SopranoVerseMusic
        }
        \new Lyrics \lyricsto "alignVoice" {
          \huge \VerseThree
        }
      >>
      \context Staff = lower \with { printPartCombineTexts = ##f } <<
        \clef bass
        \partcombine
          {
            \global
            \keepWithTag #'usePartials \TenorVerseMusic
          }
          {
            \global
            \keepWithTag #'usePartials \BassVerseMusic
          }
      >>
    >>
    \SlideLayout
  }
  \score {
    <<
      \override Score.BarNumber.break-visibility = ##(#f #f #f)
      \context Staff = upper \with { printPartCombineTexts = ##f } <<
        \partcombine
          {
            \global
            \keepWithTag #'usePartials \SopranoVerseMusic
          }
          {
            \global
            \keepWithTag #'usePartials \AltoVerseMusic
          }
        \new NullVoice = breaks {
          \global
          \keepWithTag #'usePartials \SlidesVerseBreaks
        }
        \new NullVoice = alignVoice {
          \global
          \keepWithTag #'usePartials \SopranoVerseMusic
        }
        \new Lyrics \lyricsto "alignVoice" {
          \huge \VerseFour
        }
      >>
      \context Staff = lower \with { printPartCombineTexts = ##f } <<
        \clef bass
        \partcombine
          {
            \global
            \keepWithTag #'usePartials \TenorVerseMusic
          }
          {
            \global
            \keepWithTag #'usePartials \BassVerseMusic
          }
      >>
    >>
    \SlideLayout
  }
  \score {
    <<
      \override Score.BarNumber.break-visibility = ##(#f #f #f)
      \context Staff = upper \with { printPartCombineTexts = ##f } <<
        \partcombine
          {
            \global
            \keepWithTag #'usePartials \SopranoVerseMusic
          }
          {
            \global
            \keepWithTag #'usePartials \AltoVerseMusic
          }
        \new NullVoice = breaks {
          \global
          \keepWithTag #'usePartials \SlidesVerseBreaks
        }
        \new NullVoice = alignVoice {
          \global
          \keepWithTag #'usePartials \SopranoVerseMusic
        }
        \new Lyrics \lyricsto "alignVoice" {
          \huge \VerseFive
        }
      >>
      \context Staff = lower \with { printPartCombineTexts = ##f } <<
        \clef bass
        \partcombine
          {
            \global
            \keepWithTag #'usePartials \TenorVerseMusic
          }
          {
            \global
            \keepWithTag #'usePartials \BassVerseMusic
          }
      >>
    >>
    \SlideLayout
  }
}
