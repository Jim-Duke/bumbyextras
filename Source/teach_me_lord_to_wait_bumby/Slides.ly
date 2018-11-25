\version "2.19.49"

\include "Words-and-music.ly"

SlideLyricFontSize = 2.5

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
  \VerseTitleMarkup \noPageBreak
  \score {
    <<
      \override Score.BarNumber.break-visibility = ##(#f #f #f)
      \context Staff = upper <<
        \partCombine
          {
            \global
            \keepWithTag #'(usePartials verseOneRhythms) \sopranoVerse
          }
          {
            \global
            \keepWithTag #'(usePartials verseOneRhythms) \altoVerse
          }
        \context NullVoice = slideMusicBreaks {
          \global
          \slideMusicBreaks
        }
        \context NullVoice = align {
          \global
          \keepWithTag #'(usePartials verseOneRhythms) \sopranoVerse
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
            \keepWithTag #'(usePartials verseOneRhythms) \tenorVerse
          }
          {
            \global
            \keepWithTag #'(usePartials verseOneRhythms) \bassVerse
          }
      >>
    >>
    \SlideLayout
  }
  \VerseTitleMarkup \noPageBreak
  \score {
    <<
      \override Score.BarNumber.break-visibility = ##(#f #f #f)
      \context Staff = upper <<
        \partCombine
          {
            \global
            \keepWithTag #'(usePartials verseTwoRhythms) \sopranoVerse
          }
          {
            \global
            \keepWithTag #'(usePartials verseTwoRhythms) \altoVerse
          }
        \context NullVoice = slideMusicBreaks {
          \global
          \slideMusicBreaks
        }
        \context NullVoice = align {
          \global
          \keepWithTag #'(usePartials verseTwoRhythms) \sopranoVerse
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
            \keepWithTag #'(usePartials verseTwoRhythms) \tenorVerse
          }
          {
            \global
            \keepWithTag #'(usePartials verseTwoRhythms) \bassVerse
          }
      >>
    >>
    \SlideLayout
  }
  \pageBreak
  \markup {
    \abs-fontsize #40
    \bold "Chorus:"
  }
  \score {
    <<
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
        \context NullVoice = slideChorusBreaks {
          \global
          \slideChorusBreaks
        }
        \context NullVoice = align {
          \global
          \keepWithTag #'usePartials \sopranoChorus
        }
        \context NullVoice = echoAlign {
          \global
          \keepWithTag #'usePartials \EchoAlign
        }
        \new Lyrics \lyricsto "align" {
          \huge \chorusLyrics
        }
        \new Lyrics \lyricsto "echoAlign" {
          \huge \EchoLyrics
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
}
