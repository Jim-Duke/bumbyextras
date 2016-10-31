\version "2.19.49"

\include "Words-and-music.ly"

\book {
  \bookOutputName #(string-append build_dir songNumber " - " title " - Audio")
  \score {
    \context ChoirStaff <<
      \context Staff = upper <<
        \context Voice = sopranos {
          \voiceOne {
            \global
            \sopranoVerse
          }
        }
        \context Voice = altos {
          \voiceTwo {
            \global
            \altoVerse
          }
        }
      >>
      \context Staff = lower <<
        \clef bass
        \context Voice = tenors {
          \voiceOne {
            \global
            \tenorVerse
          }
        }
        \context Voice = basses {
          \voiceTwo {
            \global
            \bassVerse
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
      \tempo 4 = 110
    }
  }
}