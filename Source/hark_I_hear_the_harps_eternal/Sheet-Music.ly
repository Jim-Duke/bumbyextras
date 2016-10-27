\version "2.18.2"
\include "english.ly"

\include "Words-and-music.ly"

#(set-global-staff-size 16)
% Standard full page format.
\book {
  \paper {
    #(set-paper-size "letter")
    indent = 0
    left-margin = 1\in
    right-margin = 1\in
    top-margin = 0.2\in
    bottom-margin = 0.25\in
    print-page-number = ##f
    oddFooterMarkup = \markup {
      \fontsize #-2
      \on-the-fly \last-page {
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
            \char ##x2022 "arr. "
            \fromproperty #'header:arranger
          }
          \line {
            \fromproperty #'header:copyright
          }
          \line {
            \fromproperty #'header:license
          }
          \vspace #0.25
          \line {
            "Engraved using Lilypond (www.lilypond.org) for www.acapellaworship.org.  PDF "
          }
          \line {
            "This hymn may be freely copied and distributed and we encourage its use in congregational acapella singing in worship everywhere."
          }
        }
      }
    }
    bookTitleMarkup = \markup {
      \override #'(baseline-skip . 3.5)
      \column {
        \fill-line { \fromproperty #'header:dedication }
        \override #'(baseline-skip . 3.5)
        \column {
          \abs-fontsize #20
          \bold
          \fill-line {
            ""
            \fromproperty #'header:title
            \fromproperty #'header:songNumber
          }
          \fill-line {
            \large \bold
            \fromproperty #'header:subtitle
          }
          \fill-line {
            \smaller \bold
            \fromproperty #'header:subsubtitle
          }
          \vspace #1
        }
      }
    }
  }

  \score {
    \context ChoirStaff <<
      \context Staff = upper <<
        \context Voice = sopranos {
          \voiceOne {
            \global
            \partial 4
            \sopranoVerse
          }
        }
        \context Voice = altos {
          \voiceTwo {
            \global
            \partial 4
            \altoVerse
          }
        }
        \context Lyrics = one { \verseOne }
        \context Lyrics = two \verseTwo
        \context Lyrics = three \verseThree
      >>
      \context Staff = lower <<
        \clef bass
        \context Voice = tenors {
          \voiceOne {
            \global
            \partial 4
            \tenorVerse
          }
        }
        \context Voice = basses {
          \voiceTwo {
            \global
            \partial 4
            \bassVerse
          }
        }
      >>
    >>
    \layout {}
  }
  \markup {
    \huge \bold "Chorus:"
  }
  \score {
    \context ChoirStaff <<
      \context Staff = upper <<
        \context Voice = sopranos {
          \voiceOne {
            \global
            \partial 4
            \sopranoChorus
          }
        }
        \context Voice = altos {
          \voiceTwo {
            \global
            \partial 4
            \altoChorus
          }
        }
        \context Lyrics = chorus \chorus
      >>
      \context Staff = lower <<
        \clef bass
        \context Voice = tenors {
          \voiceOne {
            \global
            \partial 4
            \tenorChorus
          }
        }
        \context Voice = basses {
          \voiceTwo {
            \global
            \partial 4
            \bassChorus
          }
        }
      >>
    >>
    \layout {}
  }
  \markup {
    \vspace #2
    \larger {
      \fill-line {
        ""
        \column {
          \verseFourText
          \vspace #1
          \verseFiveText
        }
        ""
        \column {
          \verseSixText
          \vspace #1
          \verseSevenText
        }
        ""
      }
    }
  }
  %
  % Extra additional score containing all the music so we can have a single MIDI file
  %
  \score {
    \context ChoirStaff <<
      \context Staff = upper <<
        \context Voice = sopranos {
          \voiceOne {
            \global
            \partial 4
            \sopranoVerse
            \sopranoChorus
          }
        }
        \context Voice = altos {
          \voiceTwo {
            \global
            \partial 4
            \altoVerse
            \altoChorus
          }
        }
      >>
      \context Staff = lower <<
        \clef bass
        \context Voice = tenors {
          \voiceOne {
            \global
            \partial 4
            \tenorVerse
            \tenorChorus
          }
        }
        \context Voice = basses {
          \voiceTwo {
            \global
            \partial 4
            \bassVerse
            \bassChorus
          }
        }
      >>
    >>
    \midi {
      \context {
        \Staff
        \remove "Staff_performer"
      }
      \context {
        \Voice
          \consists "Staff_performer"
      }
      \tempo 4 = 90
    }
  }
}