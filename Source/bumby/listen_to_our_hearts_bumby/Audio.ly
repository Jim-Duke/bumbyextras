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
            \keepWithTag #'(usePartials verseOneSlidesRhythms) \SopranoVerseMusic
            \removeWithTag #'usePartials \SopranoRefrainMusic
            \keepWithTag #'verseTwoSlidesRhythms \SopranoVerseMusic
            \removeWithTag #'usePartials \SopranoRefrainMusic
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
            \keepWithTag #'(usePartials verseOneSlidesRhythms) \AltoVerseMusic
            \removeWithTag #'usePartials \AltoRefrainMusic
            \keepWithTag #'verseTwoSlidesRhythms \AltoVerseMusic
            \removeWithTag #'usePartials \AltoRefrainMusic
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
            \keepWithTag #'(usePartials verseOneSlidesRhythms) \TenorVerseMusic
            \removeWithTag #'usePartials \TenorRefrainMusic
            \keepWithTag #'verseTwoSlidesRhythms \TenorVerseMusic
            \removeWithTag #'usePartials \TenorRefrainMusic
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
            \keepWithTag #'(usePartials verseOneSlidesRhythms) \BassVerseMusic
            \removeWithTag #'usePartials \BassRefrainMusic
            \keepWithTag #'verseTwoSlidesRhythms \BassVerseMusic
            \removeWithTag #'usePartials \BassRefrainMusic
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
            \keepWithTag #'(usePartials verseOneSlidesRhythms) \SopranoVerseMusic
            \removeWithTag #'usePartials \SopranoRefrainMusic
            \keepWithTag #'verseTwoSlidesRhythms \SopranoVerseMusic
            \removeWithTag #'usePartials \SopranoRefrainMusic
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
            \keepWithTag #'(usePartials verseOneSlidesRhythms) \AltoVerseMusic
            \removeWithTag #'usePartials \AltoRefrainMusic
            \keepWithTag #'verseTwoSlidesRhythms \AltoVerseMusic
            \removeWithTag #'usePartials \AltoRefrainMusic
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
            \keepWithTag #'(usePartials verseOneSlidesRhythms) \TenorVerseMusic
            \removeWithTag #'usePartials \TenorRefrainMusic
            \keepWithTag #'verseTwoSlidesRhythms \TenorVerseMusic
            \removeWithTag #'usePartials \TenorRefrainMusic
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
            \keepWithTag #'(usePartials verseOneSlidesRhythms) \BassVerseMusic
            \removeWithTag #'usePartials \BassRefrainMusic
            \keepWithTag #'verseTwoSlidesRhythms \BassVerseMusic
            \removeWithTag #'usePartials \BassRefrainMusic
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
            \keepWithTag #'(usePartials verseOneSlidesRhythms) \SopranoVerseMusic
            \removeWithTag #'usePartials \SopranoRefrainMusic
            \keepWithTag #'verseTwoSlidesRhythms \SopranoVerseMusic
            \removeWithTag #'usePartials \SopranoRefrainMusic
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
            \keepWithTag #'(usePartials verseOneSlidesRhythms) \AltoVerseMusic
            \removeWithTag #'usePartials \AltoRefrainMusic
            \keepWithTag #'verseTwoSlidesRhythms \AltoVerseMusic
            \removeWithTag #'usePartials \AltoRefrainMusic
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
            \keepWithTag #'(usePartials verseOneSlidesRhythms) \TenorVerseMusic
            \removeWithTag #'usePartials \TenorRefrainMusic
            \keepWithTag #'verseTwoSlidesRhythms \TenorVerseMusic
            \removeWithTag #'usePartials \TenorRefrainMusic
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
            \keepWithTag #'(usePartials verseOneSlidesRhythms) \BassVerseMusic
            \removeWithTag #'usePartials \BassRefrainMusic
            \keepWithTag #'verseTwoSlidesRhythms \BassVerseMusic
            \removeWithTag #'usePartials \BassRefrainMusic
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
            \keepWithTag #'(usePartials verseOneSlidesRhythms) \SopranoVerseMusic
            \removeWithTag #'usePartials \SopranoRefrainMusic
            \keepWithTag #'verseTwoSlidesRhythms \SopranoVerseMusic
            \removeWithTag #'usePartials \SopranoRefrainMusic
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
            \keepWithTag #'(usePartials verseOneSlidesRhythms) \AltoVerseMusic
            \removeWithTag #'usePartials \AltoRefrainMusic
            \keepWithTag #'verseTwoSlidesRhythms \AltoVerseMusic
            \removeWithTag #'usePartials \AltoRefrainMusic
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
            \keepWithTag #'(usePartials verseOneSlidesRhythms) \TenorVerseMusic
            \removeWithTag #'usePartials \TenorRefrainMusic
            \keepWithTag #'verseTwoSlidesRhythms \TenorVerseMusic
            \removeWithTag #'usePartials \TenorRefrainMusic
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
            \keepWithTag #'(usePartials verseOneSlidesRhythms) \BassVerseMusic
            \removeWithTag #'usePartials \BassRefrainMusic
            \keepWithTag #'verseTwoSlidesRhythms \BassVerseMusic
            \removeWithTag #'usePartials \BassRefrainMusic
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
            \keepWithTag #'(usePartials verseOneSlidesRhythms) \SopranoVerseMusic
            \removeWithTag #'usePartials \SopranoRefrainMusic
            \keepWithTag #'verseTwoSlidesRhythms \SopranoVerseMusic
            \removeWithTag #'usePartials \SopranoRefrainMusic
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
            \keepWithTag #'(usePartials verseOneSlidesRhythms) \AltoVerseMusic
            \removeWithTag #'usePartials \AltoRefrainMusic
            \keepWithTag #'verseTwoSlidesRhythms \AltoVerseMusic
            \removeWithTag #'usePartials \AltoRefrainMusic
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
            \keepWithTag #'(usePartials verseOneSlidesRhythms) \TenorVerseMusic
            \removeWithTag #'usePartials \TenorRefrainMusic
            \keepWithTag #'verseTwoSlidesRhythms \TenorVerseMusic
            \removeWithTag #'usePartials \TenorRefrainMusic
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
            \keepWithTag #'(usePartials verseOneSlidesRhythms) \BassVerseMusic
            \removeWithTag #'usePartials \BassRefrainMusic
            \keepWithTag #'verseTwoSlidesRhythms \BassVerseMusic
            \removeWithTag #'usePartials \BassRefrainMusic
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
