\version "2.19.49"

\include "Words-and-music.ly"

defaultTempo = 135

\book {
  \bookOutputName #(string-append build_dir songNumber " - " title " - Audio - All")
  \score {
    \context ChoirStaff <<
      \context Staff = upper <<
        \context Voice = sopranos \with {
          midiInstrument = "voice oohs"
          midiMaximumVolume = \allMaxVolume
          midiMinimumVolume = \allMinVolume
          midiPanPosition = \allPan
        } {
          \voiceOne {
            \global
            \keepWithTag #'(usePartials sheetMusic) \sopranoVerse
            \keepWithTag #'sheetMusic \sopranoVerse
            \keepWithTag #'sheetMusic \sopranoVerse
            \keepWithTag #'sheetMusic \sopranoVerse
          }
        }
        \context Voice = altos \with {
          midiInstrument = "voice oohs"
          midiMaximumVolume = \allMaxVolume
          midiMinimumVolume = \allMinVolume
          midiPanPosition = \allPan
        } {
          \voiceTwo {
            \global
            \keepWithTag #'usePartials \silentVerse
            \removeWithTag #'usePartials \silentVerse
            \removeWithTag #'usePartials \altoVerse
            \removeWithTag #'usePartials \altoVerse
          }
        }
      >>
      \context Staff = lower <<
        \clef bass
        \context Voice = tenors \with {
          midiInstrument = "voice oohs"
          midiMaximumVolume = \allMaxVolume
          midiMinimumVolume = \allMinVolume
          midiPanPosition = \allPan
        } {
          \voiceOne {
            \global
            \keepWithTag #'usePartials \silentVerse
            \removeWithTag #'usePartials \silentVerse
            \removeWithTag #'usePartials \silentVerse
            \removeWithTag #'usePartials \tenorVerse
          }
        }
        \context Voice = basses \with {
          midiInstrument = "voice oohs"
          midiMaximumVolume = \allMaxVolume
          midiMinimumVolume = \allMinVolume
          midiPanPosition = \allPan
        } {
          \voiceTwo {
            \global
            \keepWithTag #'usePartials \silentVerse
            \removeWithTag #'usePartials \bassVerse
            \removeWithTag #'usePartials \bassVerse
            \removeWithTag #'usePartials \bassVerse
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
      \tempo 4 = \defaultTempo
    }
  }
}

\book {
  \bookOutputName #(string-append build_dir songNumber " - " title " - Audio - Soprano")
  \score {
    \context ChoirStaff <<
      \context Staff = upper <<
        \context Voice = sopranos \with {
          midiInstrument = "voice oohs"
          midiMaximumVolume = \dominantMaxVolume
          midiMinimumVolume = \dominantMinVolume
          midiPanPosition = \dominantPan
        } {
          \voiceOne {
            \global
            \keepWithTag #'(usePartials sheetMusic) \sopranoVerse
            \keepWithTag #'sheetMusic \sopranoVerse
            \keepWithTag #'sheetMusic \sopranoVerse
            \keepWithTag #'sheetMusic \sopranoVerse
          }
        }
        \context Voice = altos \with {
          midiInstrument = "voice oohs"
          midiMaximumVolume = \diminishedMaxVolume
          midiMinimumVolume = \diminishedMinVolume
          midiPanPosition = \diminishedPan
        } {
          \voiceTwo {
            \global
            \keepWithTag #'usePartials \silentVerse
            \removeWithTag #'usePartials \silentVerse
            \removeWithTag #'usePartials \altoVerse
            \removeWithTag #'usePartials \altoVerse
          }
        }
      >>
      \context Staff = lower <<
        \clef bass
        \context Voice = tenors \with {
          midiInstrument = "voice oohs"
          midiMaximumVolume = \diminishedMaxVolume
          midiMinimumVolume = \diminishedMinVolume
          midiPanPosition = \diminishedPan
        } {
          \voiceOne {
            \global
            \keepWithTag #'usePartials \silentVerse
            \removeWithTag #'usePartials \silentVerse
            \removeWithTag #'usePartials \silentVerse
            \removeWithTag #'usePartials \tenorVerse
          }
        }
        \context Voice = basses \with {
          midiInstrument = "voice oohs"
          midiMaximumVolume = \diminishedMaxVolume
          midiMinimumVolume = \diminishedMinVolume
          midiPanPosition = \diminishedPan
        } {
          \voiceTwo {
            \global
            \keepWithTag #'usePartials \silentVerse
            \removeWithTag #'usePartials \bassVerse
            \removeWithTag #'usePartials \bassVerse
            \removeWithTag #'usePartials \bassVerse
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
      \tempo 4 = \defaultTempo
    }
  }
}

\book {
  \bookOutputName #(string-append build_dir songNumber " - " title " - Audio - Alto")
  \score {
    \context ChoirStaff <<
      \context Staff = upper <<
        \context Voice = sopranos \with {
          midiInstrument = "voice oohs"
          midiMaximumVolume = \diminishedMaxVolume
          midiMinimumVolume = \diminishedMinVolume
          midiPanPosition = \diminishedPan
        } {
          \voiceOne {
            \global
            \keepWithTag #'(usePartials sheetMusic) \sopranoVerse
            \keepWithTag #'sheetMusic \sopranoVerse
            \keepWithTag #'sheetMusic \sopranoVerse
            \keepWithTag #'sheetMusic \sopranoVerse
          }
        }
        \context Voice = altos \with {
          midiInstrument = "voice oohs"
          midiMaximumVolume = \dominantMaxVolume
          midiMinimumVolume = \dominantMinVolume
          midiPanPosition = \dominantPan
        } {
          \voiceTwo {
            \global
            \keepWithTag #'usePartials \silentVerse
            \removeWithTag #'usePartials \silentVerse
            \removeWithTag #'usePartials \altoVerse
            \removeWithTag #'usePartials \altoVerse
          }
        }
      >>
      \context Staff = lower <<
        \clef bass
        \context Voice = tenors \with {
          midiInstrument = "voice oohs"
          midiMaximumVolume = \diminishedMaxVolume
          midiMinimumVolume = \diminishedMinVolume
          midiPanPosition = \diminishedPan
        } {
          \voiceOne {
            \global
            \keepWithTag #'usePartials \silentVerse
            \removeWithTag #'usePartials \silentVerse
            \removeWithTag #'usePartials \silentVerse
            \removeWithTag #'usePartials \tenorVerse
          }
        }
        \context Voice = basses \with {
          midiInstrument = "voice oohs"
          midiMaximumVolume = \diminishedMaxVolume
          midiMinimumVolume = \diminishedMinVolume
          midiPanPosition = \diminishedPan
        } {
          \voiceTwo {
            \global
            \keepWithTag #'usePartials \silentVerse
            \removeWithTag #'usePartials \bassVerse
            \removeWithTag #'usePartials \bassVerse
            \removeWithTag #'usePartials \bassVerse
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
      \tempo 4 = \defaultTempo
    }
  }
}

\book {
  \bookOutputName #(string-append build_dir songNumber " - " title " - Audio - Tenor")
  \score {
    \context ChoirStaff <<
      \context Staff = upper <<
        \context Voice = sopranos \with {
          midiInstrument = "voice oohs"
          midiMaximumVolume = \diminishedMaxVolume
          midiMinimumVolume = \diminishedMinVolume
          midiPanPosition = \diminishedPan
        } {
          \voiceOne {
            \global
            \keepWithTag #'(usePartials sheetMusic) \sopranoVerse
            \keepWithTag #'sheetMusic \sopranoVerse
            \keepWithTag #'sheetMusic \sopranoVerse
            \keepWithTag #'sheetMusic \sopranoVerse
          }
        }
        \context Voice = altos \with {
          midiInstrument = "voice oohs"
          midiMaximumVolume = \diminishedMaxVolume
          midiMinimumVolume = \diminishedMinVolume
          midiPanPosition = \diminishedPan
        } {
          \voiceTwo {
            \global
            \keepWithTag #'usePartials \silentVerse
            \removeWithTag #'usePartials \silentVerse
            \removeWithTag #'usePartials \altoVerse
            \removeWithTag #'usePartials \altoVerse
          }
        }
      >>
      \context Staff = lower <<
        \clef bass
        \context Voice = tenors \with {
          midiInstrument = "voice oohs"
          midiMaximumVolume = \dominantMaxVolume
          midiMinimumVolume = \dominantMinVolume
          midiPanPosition = \dominantPan
        } {
          \voiceOne {
            \global
            \keepWithTag #'usePartials \silentVerse
            \removeWithTag #'usePartials \silentVerse
            \removeWithTag #'usePartials \silentVerse
            \removeWithTag #'usePartials \tenorVerse
          }
        }
        \context Voice = basses \with {
          midiInstrument = "voice oohs"
          midiMaximumVolume = \diminishedMaxVolume
          midiMinimumVolume = \diminishedMinVolume
          midiPanPosition = \diminishedPan
        } {
          \voiceTwo {
            \global
            \keepWithTag #'usePartials \silentVerse
            \removeWithTag #'usePartials \bassVerse
            \removeWithTag #'usePartials \bassVerse
            \removeWithTag #'usePartials \bassVerse
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
      \tempo 4 = \defaultTempo
    }
  }
}

\book {
  \bookOutputName #(string-append build_dir songNumber " - " title " - Audio - Bass")
  \score {
    \context ChoirStaff <<
      \context Staff = upper <<
        \context Voice = sopranos \with {
          midiInstrument = "voice oohs"
          midiMaximumVolume = \diminishedMaxVolume
          midiMinimumVolume = \diminishedMinVolume
          midiPanPosition = \diminishedPan
        } {
          \voiceOne {
            \global
            \keepWithTag #'(usePartials sheetMusic) \sopranoVerse
            \keepWithTag #'sheetMusic \sopranoVerse
            \keepWithTag #'sheetMusic \sopranoVerse
            \keepWithTag #'sheetMusic \sopranoVerse
          }
        }
        \context Voice = altos \with {
          midiInstrument = "voice oohs"
          midiMaximumVolume = \diminishedMaxVolume
          midiMinimumVolume = \diminishedMinVolume
          midiPanPosition = \diminishedPan
        } {
          \voiceTwo {
            \global
            \keepWithTag #'usePartials \silentVerse
            \removeWithTag #'usePartials \silentVerse
            \removeWithTag #'usePartials \altoVerse
            \removeWithTag #'usePartials \altoVerse
          }
        }
      >>
      \context Staff = lower <<
        \clef bass
        \context Voice = tenors \with {
          midiInstrument = "voice oohs"
          midiMaximumVolume = \diminishedMaxVolume
          midiMinimumVolume = \diminishedMinVolume
          midiPanPosition = \diminishedPan
        } {
          \voiceOne {
            \global
            \keepWithTag #'usePartials \silentVerse
            \removeWithTag #'usePartials \silentVerse
            \removeWithTag #'usePartials \silentVerse
            \removeWithTag #'usePartials \tenorVerse
          }
        }
        \context Voice = basses \with {
          midiInstrument = "voice oohs"
          midiMaximumVolume = \dominantMaxVolume
          midiMinimumVolume = \dominantMinVolume
          midiPanPosition = \dominantPan
        } {
          \voiceTwo {
            \global
            \keepWithTag #'usePartials \silentVerse
            \removeWithTag #'usePartials \bassVerse
            \removeWithTag #'usePartials \bassVerse
            \removeWithTag #'usePartials \bassVerse
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
      \tempo 4 = \defaultTempo
    }
  }
}
