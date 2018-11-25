\version "2.19.49"

\include "Words-and-music.ly"
\include "../../../LilypondTemplates/standard-elements.ly"

VerseTitleMarkup = \markup {
    \fill-line {
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
        \fontsize #-4
        \column {
          \line {
            "Hymn:"
            \fromproperty #'header:poet
          }
          \line {
            "Tune:"
            \fromproperty #'header:tune
          }
          \line {
            "Composer:"
            \fromproperty #'header:composer
          }
          \line {
            "Arranger:"
            \fromproperty #'header:arranger
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
        \vspace #2
        \override #'(line-width . 60)
        \center-column {
          \abs-fontsize #24
          \italic
          \wordwrap-field #'header:scripture
        }
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
            \keepWithTag #'usePartials \sopranoVerse
          }
          {
            \global
            \keepWithTag #'usePartials \altoVerse
          }
        \context NullVoice = slideMusicBreaks {
          \global
          \keepWithTag #'usePartials \slideMusicBreaks
        }
        \context NullVoice = align {
          \global
          \keepWithTag #'usePartials \sopranoVerse
        }
        \new Lyrics \lyricsto "align" {
          \huge \verseOne
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
    \SlideLayout
  }
  \VerseTitleMarkup
  \score {
    <<
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
        \context NullVoice = slideMusicBreaks {
          \global
          \keepWithTag #'usePartials \slideMusicBreaks
        }
        \context NullVoice = align {
          \global
          \keepWithTag #'usePartials' \sopranoVerse
        }
        \new Lyrics \lyricsto "align" {
          \huge \verseTwo
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
    \SlideLayout
  }
  \VerseTitleMarkup
  \score {
    <<
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
        \context NullVoice = slideMusicBreaks {
          \global
          \keepWithTag #'usePartials \slideMusicBreaks
        }
        \context NullVoice = align {
          \global
          \keepWithTag #'usePartials \thirdVerseAlign
        }
        \new Lyrics \lyricsto "align" {
          \huge \verseThree
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
    \SlideLayout
  }
  \markup {
    \abs-fontsize #40
    \bold
    "Chorus:"
  }
  \score {
    <<
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
          \keepWithTag #'usePartials \slideMusicRefrainBreaks
        }
        \context NullVoice = align {
          \global
          \keepWithTag #'usePartials \alignChorus
        }
        \new Lyrics \lyricsto "align" {
          \huge \chorusLyrics
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
    \SlideLayout
  }
  \score {
    <<
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
    \SlideLayout
  }
}
