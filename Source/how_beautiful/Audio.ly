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
            \sopranoVerse s4 \sopranoBridge
          }
        }
        \context Voice = altos {
          \voiceTwo {
            \global
            \altoVerse s4 \altoBridge
          }
        }
      >>
      \context Staff = lower <<
        \clef bass
        \context Voice = tenors {
          \voiceOne {
            \global
            \tenorVerse s4 \tenorBridge
          }
        }
        \context Voice = basses {
          \voiceTwo {
            \global
            \bassVerse s4 \bassBridge
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
