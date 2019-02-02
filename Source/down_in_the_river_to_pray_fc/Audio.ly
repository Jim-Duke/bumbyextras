\version "2.19.49"

\include "Words-and-music.ly"
\include "../../../LilypondTemplates/midi.ly"

SopranoUnrolled = {
  \global
  \keepWithTag #'(usePartials verseOne) \SopranoPartOneMusic
  \keepWithTag #'verseOne \SopranoPartTwoMusic
  \keepWithTag #'verseTwo \SopranoPartOneMusic
  \keepWithTag #'verseTwo \SopranoPartTwoMusic
  \keepWithTag #'verseThree \SopranoPartOneMusic
  \keepWithTag #'verseThree \SopranoPartTwoMusic
  \keepWithTag #'verseFour \SopranoPartOneMusic
  \keepWithTag #'verseFour \SopranoPartTwoMusic
  \keepWithTag #'verseFive \SopranoPartOneMusic
  \keepWithTag #'verseFive \SopranoPartTwoMusic
  \keepWithTag #'verseTwo \SopranoPartOneMusic
}

AltoUnrolled = {
  \global
  \keepWithTag #'(usePartials verseOne) \AltoPartOneMusic
  \keepWithTag #'verseOne \AltoPartTwoMusic
  \keepWithTag #'verseTwo \AltoPartOneMusic
  \keepWithTag #'verseTwo \AltoPartTwoMusic
  \keepWithTag #'verseThree \AltoPartOneMusic
  \keepWithTag #'verseThree \AltoPartTwoMusic
  \keepWithTag #'verseFour \AltoPartOneMusic
  \keepWithTag #'verseFour \AltoPartTwoMusic
  \keepWithTag #'verseFive \AltoPartOneMusic
  \keepWithTag #'verseFive \AltoPartTwoMusic
  \keepWithTag #'verseTwo \AltoPartOneMusic
}

TenorUnrolled = {
  \global
  \keepWithTag #'(usePartials verseOne) \TenorPartOneMusic
  \keepWithTag #'verseOne \TenorPartTwoMusic
  \keepWithTag #'verseTwo \TenorPartOneMusic
  \keepWithTag #'verseTwo \TenorPartTwoMusic
  \keepWithTag #'verseThree \TenorPartOneMusic
  \keepWithTag #'verseThree \TenorPartTwoMusic
  \keepWithTag #'verseFour \TenorPartOneMusic
  \keepWithTag #'verseFour \TenorPartTwoMusic
  \keepWithTag #'verseFive \TenorPartOneMusic
  \keepWithTag #'verseFive \TenorPartTwoMusic
  \keepWithTag #'verseTwo \TenorPartOneMusic
}

BassUnrolled = {
  \global
  \keepWithTag #'(usePartials verseOne) \BassPartOneMusic
  \keepWithTag #'verseOne \BassPartTwoMusic
  \keepWithTag #'verseTwo \BassPartOneMusic
  \keepWithTag #'verseTwo \BassPartTwoMusic
  \keepWithTag #'verseThree \BassPartOneMusic
  \keepWithTag #'verseThree \BassPartTwoMusic
  \keepWithTag #'verseFour \BassPartOneMusic
  \keepWithTag #'verseFour \BassPartTwoMusic
  \keepWithTag #'verseFive \BassPartOneMusic
  \keepWithTag #'verseFive \BassPartTwoMusic
  \keepWithTag #'verseTwo \BassPartOneMusic
}

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
          \voiceOne \SopranoUnrolled
        }
        \context Voice = altos \with {
          midiInstrument = \allInstrument
          midiMaximumVolume = \allMaxVolume
          midiMinimumVolume = \allMinVolume
          midiPanPosition = \allPan
        } {
          \voiceTwo \AltoUnrolled
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
          \voiceOne \TenorUnrolled
        }
        \context Voice = basses \with {
          midiInstrument = \allInstrument
          midiMaximumVolume = \allMaxVolume
          midiMinimumVolume = \allMinVolume
          midiPanPosition = \allPan
        } {
          \voiceTwo \BassUnrolled
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
          \voiceOne \SopranoUnrolled
        }
        \context Voice = altos \with {
          midiInstrument = \diminishedInstrument
          midiMaximumVolume = \diminishedMaxVolume
          midiMinimumVolume = \diminishedMinVolume
          midiPanPosition = \diminishedPan
        } {
          \voiceTwo \AltoUnrolled
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
          \voiceOne \TenorUnrolled
        }
        \context Voice = basses \with {
          midiInstrument = \diminishedInstrument
          midiMaximumVolume = \diminishedMaxVolume
          midiMinimumVolume = \diminishedMinVolume
          midiPanPosition = \diminishedPan
        } {
          \voiceTwo \BassUnrolled
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
          \voiceOne \SopranoUnrolled
        }
        \context Voice = altos \with {
          midiInstrument = \dominantInstrument
          midiMaximumVolume = \dominantMaxVolume
          midiMinimumVolume = \dominantMinVolume
          midiPanPosition = \dominantPan
        } {
          \voiceTwo \AltoUnrolled
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
          \voiceOne \TenorUnrolled
        }
        \context Voice = basses \with {
          midiInstrument = \diminishedInstrument
          midiMaximumVolume = \diminishedMaxVolume
          midiMinimumVolume = \diminishedMinVolume
          midiPanPosition = \diminishedPan
        } {
          \voiceTwo \BassUnrolled
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
          \voiceOne \SopranoUnrolled
        }
        \context Voice = altos \with {
          midiInstrument = \diminishedInstrument
          midiMaximumVolume = \diminishedMaxVolume
          midiMinimumVolume = \diminishedMinVolume
          midiPanPosition = \diminishedPan
        } {
          \voiceTwo \AltoUnrolled
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
          \voiceOne \TenorUnrolled
        }
        \context Voice = basses \with {
          midiInstrument = \diminishedInstrument
          midiMaximumVolume = \diminishedMaxVolume
          midiMinimumVolume = \diminishedMinVolume
          midiPanPosition = \diminishedPan
        } {
          \voiceTwo \BassUnrolled
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
          \voiceOne \SopranoUnrolled
        }
        \context Voice = altos \with {
          midiInstrument = \diminishedInstrument
          midiMaximumVolume = \diminishedMaxVolume
          midiMinimumVolume = \diminishedMinVolume
          midiPanPosition = \diminishedPan
        } {
          \voiceTwo \AltoUnrolled
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
          \voiceOne \TenorUnrolled
        }
        \context Voice = basses \with {
          midiInstrument = \dominantInstrument
          midiMaximumVolume = \dominantMaxVolume
          midiMinimumVolume = \dominantMinVolume
          midiPanPosition = \dominantPan
        } {
          \voiceTwo \BassUnrolled
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
