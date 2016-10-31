\version "2.19.49"

\include "Words-and-music.ly"

\book {
  \bookOutputName #(string-append build_dir songNumber " - " title " - Audio")
  \score {
    \new ChoirStaff <<
      \new Staff {
        \new Voice = "sopranos" {
          \global
          \keepWithTag #'(usePartials sheetMusic) \sopranoVerse
          \keepWithTag #'sheetMusic \sopranoVerse
          \keepWithTag #'sheetMusic \sopranoVerse
          \keepWithTag #'sheetMusic \sopranoVerse
        }
      }
      \new Staff {
        \new Voice = "altos" {
          \global
          \keepWithTag #'usePartials \silentVerse
          \removeWithTag #'usePartials \silentVerse
          \removeWithTag #'usePartials \altoVerse
          \removeWithTag #'usePartials \altoVerse
        }
      }
      \new Staff {
        \new Voice = "tenors" {
          \clef bass
          \global
          \keepWithTag #'usePartials \silentVerse
          \removeWithTag #'usePartials \silentVerse
          \removeWithTag #'usePartials \silentVerse
          \removeWithTag #'usePartials \tenorVerse
        }
      }
      \new Staff {
        \new Voice = "basses" {
          \clef bass
          \global
          \keepWithTag #'usePartials \silentVerse
          \removeWithTag #'usePartials \bassVerse
          \removeWithTag #'usePartials \bassVerse
          \removeWithTag #'usePartials \bassVerse
        }
      }
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
      \tempo 4 = 135
    }
  }
}
