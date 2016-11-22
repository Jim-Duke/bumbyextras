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
            \keepWithTag #'(usePartials verseOneRhythms) \sopranoVerse
            \removeWithTag #'usePartials \sopranoRefrain
            \keepWithTag #'verseTwoRhythms \sopranoVerse
            \removeWithTag #'usePartials \sopranoRefrain
          }
        }
        \context Voice = altos {
          \voiceTwo {
            \global
            \keepWithTag #'(usePartials verseOneRhythms) \altoVerse
            \removeWithTag #'usePartials \altoRefrain
            \keepWithTag #'verseOneRhythms \altoVerse
            \removeWithTag #'usePartials \altoRefrain
          }
        }
      >>
      \context Staff = lower <<
        \clef bass
        \context Voice = tenors {
          \voiceOne {
            \global
            \keepWithTag #'(usePartials verseOneRhythms) \tenorVerse
            \removeWithTag #'usePartials \tenorRefrain
            \keepWithTag #'verseOneRhythms \tenorVerse
            \removeWithTag #'usePartials \tenorRefrain
          }
        }
        \context Voice = basses {
          \voiceTwo {
            \global
            \keepWithTag #'(usePartials verseOneRhythms) \bassVerse
            \removeWithTag #'usePartials \bassRefrain
            \keepWithTag #'verseOneRhythms \bassVerse
            \removeWithTag #'usePartials \bassRefrain
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
      \tempo 4 = 65
    }
  }
}