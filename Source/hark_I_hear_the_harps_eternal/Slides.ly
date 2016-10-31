\version "2.19.49"

\include "Words-and-music.ly"

#(set-global-staff-size 36)
% Standard full page format.
\book {
  \bookOutputName #(string-append build_dir songNumber " - " title " - Slides")
  \paper {
    #(set-paper-size "arch a" 'landscape )

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
        \abs-fontsize #48
        \bold
        \fromproperty #'header:title
        \vspace #2
        \fromproperty #'header:scripture
      }
    }
    scoreTitleMarkup = \markup {
      \override #'(baseline-skip . 3.5)
      \column {
        \fill-line {
          \null
          {
            \abs-fontsize #32
            \fromproperty #'header:title
          }
          {
            \abs-fontsize #32
            \fromproperty #'header:songNumber
          }
        }
      }
    }
  }
  \pageBreak

  \score {
    \context ChoirStaff <<
      \override Score.BarNumber.break-visibility = ##(#f #f #f)
      \context Staff = upper <<
        \context Voice = sopranos {
          \voiceOne {
            \global
            \keepWithTag #'usePartials' \sopranoVerse
          }
        }
        \context Voice = altos {
          \voiceTwo {
            \global
            \keepWithTag #'usePartials' \altoVerse
          }
        }
        \new NullVoice = breaks {
          \global
          \keepWithTag #'usePartials' \slideMusicVerseBreaks
        }
        \context Lyrics \lyricsto "sopranos" { \huge \verseOne }
      >>
      \context Staff = lower <<
        \clef bass
        \context Voice = tenors {
          \voiceOne {
            \global
            \keepWithTag #'usePartials' \tenorVerse
          }
        }
        \context Voice = basses {
          \voiceTwo {
            \global
            \keepWithTag #'usePartials' \bassVerse
          }
        }
      >>
    >>
    \layout {}
  }
  \score {
    \context ChoirStaff <<
      \override Score.BarNumber.break-visibility = ##(#f #f #f)
      \context Staff = upper <<
        \context Voice = sopranos {
          \voiceOne {
            \global
            \keepWithTag #'usePartials' \sopranoVerse
          }
        }
        \context Voice = altos {
          \voiceTwo {
            \global
            \keepWithTag #'usePartials' \altoVerse
          }
        }
        \new NullVoice = breaks {
          \global
          \keepWithTag #'usePartials' \slideMusicVerseBreaks
        }
        \context Lyrics \lyricsto "sopranos" { \huge \verseTwo }
      >>
      \context Staff = lower <<
        \clef bass
        \context Voice = tenors {
          \voiceOne {
            \global
            \keepWithTag #'usePartials' \tenorVerse
          }
        }
        \context Voice = basses {
          \voiceTwo {
            \global
            \keepWithTag #'usePartials' \bassVerse
          }
        }
      >>
    >>
    \layout {}
  }
  \score {
    \context ChoirStaff <<
      \override Score.BarNumber.break-visibility = ##(#f #f #f)
      \context Staff = upper <<
        \context Voice = sopranos {
          \voiceOne {
            \global
            \keepWithTag #'usePartials' \sopranoVerse
          }
        }
        \context Voice = altos {
          \voiceTwo {
            \global
            \keepWithTag #'usePartials' \altoVerse
          }
        }
        \new NullVoice = breaks {
          \global
          \keepWithTag #'usePartials' \slideMusicVerseBreaks
        }
        \context Lyrics \lyricsto "sopranos" { \huge \verseThree }
      >>
      \context Staff = lower <<
        \clef bass
        \context Voice = tenors {
          \voiceOne {
            \global
            \keepWithTag #'usePartials' \tenorVerse
          }
        }
        \context Voice = basses {
          \voiceTwo {
            \global
            \keepWithTag #'usePartials' \bassVerse
          }
        }
      >>
    >>
    \layout {}
  }
  \pageBreak
  \score {
    \context ChoirStaff <<
      \override Score.BarNumber.break-visibility = ##(#f #f #f)
      \context Staff = upper <<
        \context Voice = sopranos {
          \voiceOne {
            \global
            \keepWithTag #'usePartials' \sopranoChorus
          }
        }
        \context Voice = altos {
          \voiceTwo {
            \global
            \keepWithTag #'usePartials' \altoChorus
          }
        }
        \new NullVoice = breaks {
          \global
          \keepWithTag #'usePartials' \slideMusicChorusBreaks
        }
        \context Lyrics \lyricsto "sopranos" { \huge \chorus }
      >>
      \context Staff = lower <<
        \clef bass
        \context Voice = tenors {
          \voiceOne {
            \global
            \keepWithTag #'usePartials' \tenorChorus
          }
        }
        \context Voice = basses {
          \voiceTwo {
            \global
            \keepWithTag #'usePartials' \bassChorus
          }
        }
      >>
    >>
    \layout {}
    \header {
      title = \markup \bold { \fill-line { "Chorus:" "" } }
    }
  }
}
