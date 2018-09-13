\version "2.19.49"

\include "Words-and-music.ly"
\include "../../../LilypondTemplates/midi.ly"

#(ly:parser-define! (string->symbol "outputName")
   (if (null? (ly:parser-lookup (string->symbol "BuildDir")))
       "Audio"
       (string-append BuildDir songNumber " - " title " - Audio")))

defaultTempo = 65

\book {
  \bookOutputName #(string-append outputName " - All")
  \score {
    \context ChoirStaff <<
      \context Staff = upper <<
        \context Voice = sopranos \with {
          midiInstrument = \allInstrument
          midiMaximumVolume = \allMaxVolume
          midiMinimumVolume = \allMinVolume
          midiPanPosition = \allPan
        } {
          \voiceOne {
            \global
            \keepWithTag #'(usePartials verseOneRhythms) \sopranoVerse
            \removeWithTag #'usePartials \sopranoRefrain
            \keepWithTag #'verseTwoRhythms \sopranoVerse
            \removeWithTag #'usePartials \sopranoRefrain
          }
        }
        \context Voice = altos \with {
          midiInstrument = \allInstrument
          midiMaximumVolume = \allMaxVolume
          midiMinimumVolume = \allMinVolume
          midiPanPosition = \allPan
        } {
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
        \context Voice = tenors \with {
          midiInstrument = \allInstrument
          midiMaximumVolume = \allMaxVolume
          midiMinimumVolume = \allMinVolume
          midiPanPosition = \allPan
        } {
          \voiceOne {
            \global
            \keepWithTag #'(usePartials verseOneRhythms) \tenorVerse
            \removeWithTag #'usePartials \tenorRefrain
            \keepWithTag #'verseOneRhythms \tenorVerse
            \removeWithTag #'usePartials \tenorRefrain
          }
        }
        \context Voice = basses \with {
          midiInstrument = \allInstrument
          midiMaximumVolume = \allMaxVolume
          midiMinimumVolume = \allMinVolume
          midiPanPosition = \allPan
        } {
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
      \tempo 4 = \defaultTempo
    }
  }
}

\book {
  \bookOutputName #(string-append outputName " - Soprano")
  \score {
    \context ChoirStaff <<
      \context Staff = upper <<
        \context Voice = sopranos \with {
          midiInstrument = \dominantInstrument
          midiMaximumVolume = \dominantMaxVolume
          midiMinimumVolume = \dominantMinVolume
          midiPanPosition = \dominantPan
        } {
          \voiceOne {
            \global
            \keepWithTag #'(usePartials verseOneRhythms) \sopranoVerse
            \removeWithTag #'usePartials \sopranoRefrain
            \keepWithTag #'verseTwoRhythms \sopranoVerse
            \removeWithTag #'usePartials \sopranoRefrain
          }
        }
        \context Voice = altos \with {
          midiInstrument = \diminishedInstrument
          midiMaximumVolume = \diminishedMaxVolume
          midiMinimumVolume = \diminishedMinVolume
          midiPanPosition = \diminishedPan
        } {
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
        \context Voice = tenors \with {
          midiInstrument = \diminishedInstrument
          midiMaximumVolume = \diminishedMaxVolume
          midiMinimumVolume = \diminishedMinVolume
          midiPanPosition = \diminishedPan
        } {
          \voiceOne {
            \global
            \keepWithTag #'(usePartials verseOneRhythms) \tenorVerse
            \removeWithTag #'usePartials \tenorRefrain
            \keepWithTag #'verseOneRhythms \tenorVerse
            \removeWithTag #'usePartials \tenorRefrain
          }
        }
        \context Voice = basses \with {
          midiInstrument = \diminishedInstrument
          midiMaximumVolume = \diminishedMaxVolume
          midiMinimumVolume = \diminishedMinVolume
          midiPanPosition = \diminishedPan
        } {
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
      \tempo 4 = \defaultTempo
    }
  }
}

\book {
  \bookOutputName #(string-append outputName " - Alto")
  \score {
    \context ChoirStaff <<
      \context Staff = upper <<
        \context Voice = sopranos \with {
          midiInstrument = \diminishedInstrument
          midiMaximumVolume = \diminishedMaxVolume
          midiMinimumVolume = \diminishedMinVolume
          midiPanPosition = \diminishedPan
        } {
          \voiceOne {
            \global
            \keepWithTag #'(usePartials verseOneRhythms) \sopranoVerse
            \removeWithTag #'usePartials \sopranoRefrain
            \keepWithTag #'verseTwoRhythms \sopranoVerse
            \removeWithTag #'usePartials \sopranoRefrain
          }
        }
        \context Voice = altos \with {
          midiInstrument = \dominantInstrument
          midiMaximumVolume = \dominantMaxVolume
          midiMinimumVolume = \dominantMinVolume
          midiPanPosition = \dominantPan
        } {
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
        \context Voice = tenors \with {
          midiInstrument = \diminishedInstrument
          midiMaximumVolume = \diminishedMaxVolume
          midiMinimumVolume = \diminishedMinVolume
          midiPanPosition = \diminishedPan
        } {
          \voiceOne {
            \global
            \keepWithTag #'(usePartials verseOneRhythms) \tenorVerse
            \removeWithTag #'usePartials \tenorRefrain
            \keepWithTag #'verseOneRhythms \tenorVerse
            \removeWithTag #'usePartials \tenorRefrain
          }
        }
        \context Voice = basses \with {
          midiInstrument = \diminishedInstrument
          midiMaximumVolume = \diminishedMaxVolume
          midiMinimumVolume = \diminishedMinVolume
          midiPanPosition = \diminishedPan
        } {
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
      \tempo 4 = \defaultTempo
    }
  }
}

\book {
  \bookOutputName #(string-append outputName " - Tenor")
  \score {
    \context ChoirStaff <<
      \context Staff = upper <<
        \context Voice = sopranos \with {
          midiInstrument = \diminishedInstrument
          midiMaximumVolume = \diminishedMaxVolume
          midiMinimumVolume = \diminishedMinVolume
          midiPanPosition = \diminishedPan
        } {
          \voiceOne {
            \global
            \keepWithTag #'(usePartials verseOneRhythms) \sopranoVerse
            \removeWithTag #'usePartials \sopranoRefrain
            \keepWithTag #'verseTwoRhythms \sopranoVerse
            \removeWithTag #'usePartials \sopranoRefrain
          }
        }
        \context Voice = altos \with {
          midiInstrument = \diminishedInstrument
          midiMaximumVolume = \diminishedMaxVolume
          midiMinimumVolume = \diminishedMinVolume
          midiPanPosition = \diminishedPan
        } {
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
        \context Voice = tenors \with {
          midiInstrument = \dominantInstrument
          midiMaximumVolume = \dominantMaxVolume
          midiMinimumVolume = \dominantMinVolume
          midiPanPosition = \dominantPan
        } {
          \voiceOne {
            \global
            \keepWithTag #'(usePartials verseOneRhythms) \tenorVerse
            \removeWithTag #'usePartials \tenorRefrain
            \keepWithTag #'verseOneRhythms \tenorVerse
            \removeWithTag #'usePartials \tenorRefrain
          }
        }
        \context Voice = basses \with {
          midiInstrument = \diminishedInstrument
          midiMaximumVolume = \diminishedMaxVolume
          midiMinimumVolume = \diminishedMinVolume
          midiPanPosition = \diminishedPan
        } {
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
      \tempo 4 = \defaultTempo
    }
  }
}

\book {
  \bookOutputName #(string-append outputName " - Bass")
  \score {
    \context ChoirStaff <<
      \context Staff = upper <<
        \context Voice = sopranos \with {
          midiInstrument = \diminishedInstrument
          midiMaximumVolume = \diminishedMaxVolume
          midiMinimumVolume = \diminishedMinVolume
          midiPanPosition = \diminishedPan
        } {
          \voiceOne {
            \global
            \keepWithTag #'(usePartials verseOneRhythms) \sopranoVerse
            \removeWithTag #'usePartials \sopranoRefrain
            \keepWithTag #'verseTwoRhythms \sopranoVerse
            \removeWithTag #'usePartials \sopranoRefrain
          }
        }
        \context Voice = altos \with {
          midiInstrument = \diminishedInstrument
          midiMaximumVolume = \diminishedMaxVolume
          midiMinimumVolume = \diminishedMinVolume
          midiPanPosition = \diminishedPan
        } {
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
        \context Voice = tenors \with {
          midiInstrument = \diminishedInstrument
          midiMaximumVolume = \diminishedMaxVolume
          midiMinimumVolume = \diminishedMinVolume
          midiPanPosition = \diminishedPan
        } {
          \voiceOne {
            \global
            \keepWithTag #'(usePartials verseOneRhythms) \tenorVerse
            \removeWithTag #'usePartials \tenorRefrain
            \keepWithTag #'verseOneRhythms \tenorVerse
            \removeWithTag #'usePartials \tenorRefrain
          }
        }
        \context Voice = basses \with {
          midiInstrument = \dominantInstrument
          midiMaximumVolume = \dominantMaxVolume
          midiMinimumVolume = \dominantMinVolume
          midiPanPosition = \dominantPan
        } {
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
      \tempo 4 = \defaultTempo
    }
  }
}
