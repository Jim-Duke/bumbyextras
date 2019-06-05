\version "2.19.49"

\include "Words-and-music.ly"
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
            \keepWithTag #'verseOne \SopranoVerseMusic
          }
          {
            \global
            \keepWithTag #'verseOne \AltoVerseMusic
          }
        \new NullVoice = breaks {
          \global
          \SlidesVerseBreaks
        }
        \new NullVoice = alignVoice {
          \global
          \keepWithTag #'verseOne \SopranoVerseMusic
        }
        \new Lyrics \lyricsto "alignVoice" {
          \huge \VerseOne
        }
      >>
      \context Staff = lower <<
        \clef bass
        \partCombine
          {
            \global
            \keepWithTag #'verseOne \TenorVerseMusic
          }
          {
            \global
            \keepWithTag #'verseOne \BassVerseMusic
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
            \keepWithTag #'verseTwo \SopranoVerseMusic
          }
          {
            \global
            \keepWithTag #'verseTwo \AltoVerseMusic
          }
        \new NullVoice = breaks {
          \global
          \SlidesVerseBreaks
        }
        \new NullVoice = alignVoice {
          \global
          \keepWithTag #'verseTwo \SopranoVerseMusic
        }
        \new Lyrics \lyricsto "alignVoice" {
          \huge \VerseTwo
        }
      >>
      \context Staff = lower <<
        \clef bass
        \partCombine
          {
            \global
            \keepWithTag #'verseTwo \TenorVerseMusic
          }
          {
            \global
            \keepWithTag #'verseTwo \BassVerseMusic
          }
      >>
    >>
    \SlideLayout
  }
  \pageBreak
  \markup { \bold "Chorus" } \noPageBreak
  \score {
    <<
      \override Score.BarNumber.break-visibility = ##(#f #f #f)
      \context Staff = upper <<
        \new Voice = sopranos {
          \voiceOne
          {
            \global
            \SopranoChorusMusic
          }
        }
        \new Voice = altos {
          \voiceTwo
          {
            \global
            \AltoChorusMusic
          }
        }
        \new NullVoice = breaks {
          \global
          \SlidesVerseBreaks
        }
        \new NullVoice = alignVoiceA {
          \global
          \SopranoChorusMusic
        }
        \new NullVoice = alignVoiceB {
          \global
          \AltoChorusMusic
        }
        \new Lyrics \lyricsto "alignVoiceA" {
          \huge \ChorusA
        }
        \new Lyrics \lyricsto "alignVoiceB" {
          \huge \ChorusB
        }
      >>
      \context Staff = lower <<
        \clef bass
        \new Voice = tenors {
          \voiceOne
          {
            \global
            \TenorChorusMusic
          }
        }
        \new Voice = basses {
          \voiceTwo
          {
            \global
            \BassChorusMusic
          }
        }
      >>
    >>
    \SlideLayout
  }
}
