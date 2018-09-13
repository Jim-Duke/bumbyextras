\version "2.19.49"

\include "Words-and-music.ly"
\include "../../../LilypondTemplates/midi.ly"

#(ly:parser-define! (string->symbol "outputName")
   (if (null? (ly:parser-lookup (string->symbol "build_dir")))
       "Audio"
       (string-append build_dir songNumber " - " title " - Audio")))

defaultTempo = 100

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
            \keepWithTag #'usePartials \sopranoVerse
            \removeWithTag #'usePartials \sopranoChorus
            \removeWithTag #'usePartials \sopranoVerse
            \removeWithTag #'usePartials \sopranoChorus
            \removeWithTag #'usePartials \sopranoVerse
            \removeWithTag #'usePartials \sopranoChorus
            \removeWithTag #'usePartials \sopranoCoda
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
            \keepWithTag #'usePartials \altoVerse
            \removeWithTag #'usePartials \altoChorus
            \removeWithTag #'usePartials \altoVerse
            \removeWithTag #'usePartials \altoChorus
            \removeWithTag #'usePartials \altoVerse
            \removeWithTag #'usePartials \altoChorus
            \removeWithTag #'usePartials \altoCoda
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
            \keepWithTag #'usePartials \tenorVerse
            \removeWithTag #'usePartials \tenorChorus
            \removeWithTag #'usePartials \tenorVerse
            \removeWithTag #'usePartials \tenorChorus
            \removeWithTag #'usePartials \tenorVerse
            \removeWithTag #'usePartials \tenorChorus
            \removeWithTag #'usePartials \tenorCoda
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
            \keepWithTag #'usePartials \bassVerse
            \removeWithTag #'usePartials \bassChorus
            \removeWithTag #'usePartials \bassVerse
            \removeWithTag #'usePartials \bassChorus
            \removeWithTag #'usePartials \bassVerse
            \removeWithTag #'usePartials \bassChorus
            \removeWithTag #'usePartials \bassCoda
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
            \keepWithTag #'usePartials \sopranoVerse
            \removeWithTag #'usePartials \sopranoChorus
            \removeWithTag #'usePartials \sopranoVerse
            \removeWithTag #'usePartials \sopranoChorus
            \removeWithTag #'usePartials \sopranoVerse
            \removeWithTag #'usePartials \sopranoChorus
            \removeWithTag #'usePartials \sopranoCoda
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
            \keepWithTag #'usePartials \altoVerse
            \removeWithTag #'usePartials \altoChorus
            \removeWithTag #'usePartials \altoVerse
            \removeWithTag #'usePartials \altoChorus
            \removeWithTag #'usePartials \altoVerse
            \removeWithTag #'usePartials \altoChorus
            \removeWithTag #'usePartials \altoCoda
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
            \keepWithTag #'usePartials \tenorVerse
            \removeWithTag #'usePartials \tenorChorus
            \removeWithTag #'usePartials \tenorVerse
            \removeWithTag #'usePartials \tenorChorus
            \removeWithTag #'usePartials \tenorVerse
            \removeWithTag #'usePartials \tenorChorus
            \removeWithTag #'usePartials \tenorCoda
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
            \keepWithTag #'usePartials \bassVerse
            \removeWithTag #'usePartials \bassChorus
            \removeWithTag #'usePartials \bassVerse
            \removeWithTag #'usePartials \bassChorus
            \removeWithTag #'usePartials \bassVerse
            \removeWithTag #'usePartials \bassChorus
            \removeWithTag #'usePartials \bassCoda
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
            \keepWithTag #'usePartials \sopranoVerse
            \removeWithTag #'usePartials \sopranoChorus
            \removeWithTag #'usePartials \sopranoVerse
            \removeWithTag #'usePartials \sopranoChorus
            \removeWithTag #'usePartials \sopranoVerse
            \removeWithTag #'usePartials \sopranoChorus
            \removeWithTag #'usePartials \sopranoCoda
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
            \keepWithTag #'usePartials \altoVerse
            \removeWithTag #'usePartials \altoChorus
            \removeWithTag #'usePartials \altoVerse
            \removeWithTag #'usePartials \altoChorus
            \removeWithTag #'usePartials \altoVerse
            \removeWithTag #'usePartials \altoChorus
            \removeWithTag #'usePartials \altoCoda
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
            \keepWithTag #'usePartials \tenorVerse
            \removeWithTag #'usePartials \tenorChorus
            \removeWithTag #'usePartials \tenorVerse
            \removeWithTag #'usePartials \tenorChorus
            \removeWithTag #'usePartials \tenorVerse
            \removeWithTag #'usePartials \tenorChorus
            \removeWithTag #'usePartials \tenorCoda
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
            \keepWithTag #'usePartials \bassVerse
            \removeWithTag #'usePartials \bassChorus
            \removeWithTag #'usePartials \bassVerse
            \removeWithTag #'usePartials \bassChorus
            \removeWithTag #'usePartials \bassVerse
            \removeWithTag #'usePartials \bassChorus
            \removeWithTag #'usePartials \bassCoda
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
            \keepWithTag #'usePartials \sopranoVerse
            \removeWithTag #'usePartials \sopranoChorus
            \removeWithTag #'usePartials \sopranoVerse
            \removeWithTag #'usePartials \sopranoChorus
            \removeWithTag #'usePartials \sopranoVerse
            \removeWithTag #'usePartials \sopranoChorus
            \removeWithTag #'usePartials \sopranoCoda
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
            \keepWithTag #'usePartials \altoVerse
            \removeWithTag #'usePartials \altoChorus
            \removeWithTag #'usePartials \altoVerse
            \removeWithTag #'usePartials \altoChorus
            \removeWithTag #'usePartials \altoVerse
            \removeWithTag #'usePartials \altoChorus
            \removeWithTag #'usePartials \altoCoda
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
            \keepWithTag #'usePartials \tenorVerse
            \removeWithTag #'usePartials \tenorChorus
            \removeWithTag #'usePartials \tenorVerse
            \removeWithTag #'usePartials \tenorChorus
            \removeWithTag #'usePartials \tenorVerse
            \removeWithTag #'usePartials \tenorChorus
            \removeWithTag #'usePartials \tenorCoda
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
            \keepWithTag #'usePartials \bassVerse
            \removeWithTag #'usePartials \bassChorus
            \removeWithTag #'usePartials \bassVerse
            \removeWithTag #'usePartials \bassChorus
            \removeWithTag #'usePartials \bassVerse
            \removeWithTag #'usePartials \bassChorus
            \removeWithTag #'usePartials \bassCoda
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
            \keepWithTag #'usePartials \sopranoVerse
            \removeWithTag #'usePartials \sopranoChorus
            \removeWithTag #'usePartials \sopranoVerse
            \removeWithTag #'usePartials \sopranoChorus
            \removeWithTag #'usePartials \sopranoVerse
            \removeWithTag #'usePartials \sopranoChorus
            \removeWithTag #'usePartials \sopranoCoda
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
            \keepWithTag #'usePartials \altoVerse
            \removeWithTag #'usePartials \altoChorus
            \removeWithTag #'usePartials \altoVerse
            \removeWithTag #'usePartials \altoChorus
            \removeWithTag #'usePartials \altoVerse
            \removeWithTag #'usePartials \altoChorus
            \removeWithTag #'usePartials \altoCoda
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
            \keepWithTag #'usePartials \tenorVerse
            \removeWithTag #'usePartials \tenorChorus
            \removeWithTag #'usePartials \tenorVerse
            \removeWithTag #'usePartials \tenorChorus
            \removeWithTag #'usePartials \tenorVerse
            \removeWithTag #'usePartials \tenorChorus
            \removeWithTag #'usePartials \tenorCoda
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
            \keepWithTag #'usePartials \bassVerse
            \removeWithTag #'usePartials \bassChorus
            \removeWithTag #'usePartials \bassVerse
            \removeWithTag #'usePartials \bassChorus
            \removeWithTag #'usePartials \bassVerse
            \removeWithTag #'usePartials \bassChorus
            \removeWithTag #'usePartials \bassCoda
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
