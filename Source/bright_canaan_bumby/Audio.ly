\version "2.19.49"

\include "Words-and-music.ly"
\include "../../../LilypondTemplates/midi.ly"

\book {
  \bookOutputName "Audio_all"
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
            \keepWithTag #'usePartials \SopranoVerseMusic
            \removeWithTag #'usePartials \SopranoChorusMusic
            \removeWithTag #'usePartials \SopranoVerseMusic
            \removeWithTag #'usePartials \SopranoChorusMusic
            \removeWithTag #'usePartials \SopranoVerseMusic
            \removeWithTag #'usePartials \SopranoChorusMusic
            \removeWithTag #'usePartials \SopranoVerseMusic
            \removeWithTag #'usePartials \SopranoChorusLastVerseMusic
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
            \keepWithTag #'usePartials \AltoVerseMusic
            \removeWithTag #'usePartials \AltoChorusMusic
            \removeWithTag #'usePartials \AltoVerseMusic
            \removeWithTag #'usePartials \AltoChorusMusic
            \removeWithTag #'usePartials \AltoVerseMusic
            \removeWithTag #'usePartials \AltoChorusMusic
            \removeWithTag #'usePartials \AltoVerseMusic
            \removeWithTag #'usePartials \AltoChorusMusic
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
            \keepWithTag #'usePartials \TenorVerseMusic
            \removeWithTag #'usePartials \TenorChorusMusic
            \removeWithTag #'usePartials \TenorVerseMusic
            \removeWithTag #'usePartials \TenorChorusMusic
            \removeWithTag #'usePartials \TenorVerseMusic
            \removeWithTag #'usePartials \TenorChorusMusic
            \removeWithTag #'usePartials \TenorVerseMusic
            \removeWithTag #'usePartials \TenorChorusMusic
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
            \keepWithTag #'usePartials \BassVerseMusic
            \removeWithTag #'usePartials \BassChorusMusic
            \removeWithTag #'usePartials \BassVerseMusic
            \removeWithTag #'usePartials \BassChorusMusic
            \removeWithTag #'usePartials \BassVerseMusic
            \removeWithTag #'usePartials \BassChorusMusic
            \removeWithTag #'usePartials \BassVerseMusic
            \removeWithTag #'usePartials \BassChorusMusic
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
    }
  }
}

\book {
  \bookOutputName "Audio_soprano"
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
            \keepWithTag #'usePartials \SopranoVerseMusic
            \removeWithTag #'usePartials \SopranoChorusMusic
            \removeWithTag #'usePartials \SopranoVerseMusic
            \removeWithTag #'usePartials \SopranoChorusMusic
            \removeWithTag #'usePartials \SopranoVerseMusic
            \removeWithTag #'usePartials \SopranoChorusMusic
            \removeWithTag #'usePartials \SopranoVerseMusic
            \removeWithTag #'usePartials \SopranoChorusMusic
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
            \keepWithTag #'usePartials \AltoVerseMusic
            \removeWithTag #'usePartials \AltoChorusMusic
            \removeWithTag #'usePartials \AltoVerseMusic
            \removeWithTag #'usePartials \AltoChorusMusic
            \removeWithTag #'usePartials \AltoVerseMusic
            \removeWithTag #'usePartials \AltoChorusMusic
            \removeWithTag #'usePartials \AltoVerseMusic
            \removeWithTag #'usePartials \AltoChorusMusic
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
            \keepWithTag #'usePartials \TenorVerseMusic
            \removeWithTag #'usePartials \TenorChorusMusic
            \removeWithTag #'usePartials \TenorVerseMusic
            \removeWithTag #'usePartials \TenorChorusMusic
            \removeWithTag #'usePartials \TenorVerseMusic
            \removeWithTag #'usePartials \TenorChorusMusic
            \removeWithTag #'usePartials \TenorVerseMusic
            \removeWithTag #'usePartials \TenorChorusMusic
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
            \keepWithTag #'usePartials \BassVerseMusic
            \removeWithTag #'usePartials \BassChorusMusic
            \removeWithTag #'usePartials \BassVerseMusic
            \removeWithTag #'usePartials \BassChorusMusic
            \removeWithTag #'usePartials \BassVerseMusic
            \removeWithTag #'usePartials \BassChorusMusic
            \removeWithTag #'usePartials \BassVerseMusic
            \removeWithTag #'usePartials \BassChorusMusic
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
    }
  }
}

\book {
  \bookOutputName "Audio_alto"
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
            \keepWithTag #'usePartials \SopranoVerseMusic
            \removeWithTag #'usePartials \SopranoChorusMusic
            \removeWithTag #'usePartials \SopranoVerseMusic
            \removeWithTag #'usePartials \SopranoChorusMusic
            \removeWithTag #'usePartials \SopranoVerseMusic
            \removeWithTag #'usePartials \SopranoChorusMusic
            \removeWithTag #'usePartials \SopranoVerseMusic
            \removeWithTag #'usePartials \SopranoChorusMusic
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
            \keepWithTag #'usePartials \AltoVerseMusic
            \removeWithTag #'usePartials \AltoChorusMusic
            \removeWithTag #'usePartials \AltoVerseMusic
            \removeWithTag #'usePartials \AltoChorusMusic
            \removeWithTag #'usePartials \AltoVerseMusic
            \removeWithTag #'usePartials \AltoChorusMusic
            \removeWithTag #'usePartials \AltoVerseMusic
            \removeWithTag #'usePartials \AltoChorusMusic
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
            \keepWithTag #'usePartials \TenorVerseMusic
            \removeWithTag #'usePartials \TenorChorusMusic
            \removeWithTag #'usePartials \TenorVerseMusic
            \removeWithTag #'usePartials \TenorChorusMusic
            \removeWithTag #'usePartials \TenorVerseMusic
            \removeWithTag #'usePartials \TenorChorusMusic
            \removeWithTag #'usePartials \TenorVerseMusic
            \removeWithTag #'usePartials \TenorChorusMusic
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
            \keepWithTag #'usePartials \BassVerseMusic
            \removeWithTag #'usePartials \BassChorusMusic
            \removeWithTag #'usePartials \BassVerseMusic
            \removeWithTag #'usePartials \BassChorusMusic
            \removeWithTag #'usePartials \BassVerseMusic
            \removeWithTag #'usePartials \BassChorusMusic
            \removeWithTag #'usePartials \BassVerseMusic
            \removeWithTag #'usePartials \BassChorusMusic
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
    }
  }
}

\book {
  \bookOutputName "Audio_tenor"
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
            \keepWithTag #'usePartials \SopranoVerseMusic
            \removeWithTag #'usePartials \SopranoChorusMusic
            \removeWithTag #'usePartials \SopranoVerseMusic
            \removeWithTag #'usePartials \SopranoChorusMusic
            \removeWithTag #'usePartials \SopranoVerseMusic
            \removeWithTag #'usePartials \SopranoChorusMusic
            \removeWithTag #'usePartials \SopranoVerseMusic
            \removeWithTag #'usePartials \SopranoChorusMusic
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
            \keepWithTag #'usePartials \AltoVerseMusic
            \removeWithTag #'usePartials \AltoChorusMusic
            \removeWithTag #'usePartials \AltoVerseMusic
            \removeWithTag #'usePartials \AltoChorusMusic
            \removeWithTag #'usePartials \AltoVerseMusic
            \removeWithTag #'usePartials \AltoChorusMusic
            \removeWithTag #'usePartials \AltoVerseMusic
            \removeWithTag #'usePartials \AltoChorusMusic
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
            \keepWithTag #'usePartials \TenorVerseMusic
            \removeWithTag #'usePartials \TenorChorusMusic
            \removeWithTag #'usePartials \TenorVerseMusic
            \removeWithTag #'usePartials \TenorChorusMusic
            \removeWithTag #'usePartials \TenorVerseMusic
            \removeWithTag #'usePartials \TenorChorusMusic
            \removeWithTag #'usePartials \TenorVerseMusic
            \removeWithTag #'usePartials \TenorChorusMusic
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
            \keepWithTag #'usePartials \BassVerseMusic
            \removeWithTag #'usePartials \BassChorusMusic
            \removeWithTag #'usePartials \BassVerseMusic
            \removeWithTag #'usePartials \BassChorusMusic
            \removeWithTag #'usePartials \BassVerseMusic
            \removeWithTag #'usePartials \BassChorusMusic
            \removeWithTag #'usePartials \BassVerseMusic
            \removeWithTag #'usePartials \BassChorusMusic
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
    }
  }
}

\book {
  \bookOutputName "Audio_bass"
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
            \keepWithTag #'usePartials \SopranoVerseMusic
            \removeWithTag #'usePartials \SopranoChorusMusic
            \removeWithTag #'usePartials \SopranoVerseMusic
            \removeWithTag #'usePartials \SopranoChorusMusic
            \removeWithTag #'usePartials \SopranoVerseMusic
            \removeWithTag #'usePartials \SopranoChorusMusic
            \removeWithTag #'usePartials \SopranoVerseMusic
            \removeWithTag #'usePartials \SopranoChorusMusic
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
            \keepWithTag #'usePartials \AltoVerseMusic
            \removeWithTag #'usePartials \AltoChorusMusic
            \removeWithTag #'usePartials \AltoVerseMusic
            \removeWithTag #'usePartials \AltoChorusMusic
            \removeWithTag #'usePartials \AltoVerseMusic
            \removeWithTag #'usePartials \AltoChorusMusic
            \removeWithTag #'usePartials \AltoVerseMusic
            \removeWithTag #'usePartials \AltoChorusMusic
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
            \keepWithTag #'usePartials \TenorVerseMusic
            \removeWithTag #'usePartials \TenorChorusMusic
            \removeWithTag #'usePartials \TenorVerseMusic
            \removeWithTag #'usePartials \TenorChorusMusic
            \removeWithTag #'usePartials \TenorVerseMusic
            \removeWithTag #'usePartials \TenorChorusMusic
            \removeWithTag #'usePartials \TenorVerseMusic
            \removeWithTag #'usePartials \TenorChorusMusic
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
            \keepWithTag #'usePartials \BassVerseMusic
            \removeWithTag #'usePartials \BassChorusMusic
            \removeWithTag #'usePartials \BassVerseMusic
            \removeWithTag #'usePartials \BassChorusMusic
            \removeWithTag #'usePartials \BassVerseMusic
            \removeWithTag #'usePartials \BassChorusMusic
            \removeWithTag #'usePartials \BassVerseMusic
            \removeWithTag #'usePartials \BassChorusMusic
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
    }
  }
}
