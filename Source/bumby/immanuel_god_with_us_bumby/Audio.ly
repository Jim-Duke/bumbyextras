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
            \keepWithTag #'(verseOne forMIDI) \SopranoVerseBody
            \keepWithTag #'(forMIDI) \SopranoFirstRepeatPart
            \keepWithTag #'(verseTwo forMIDI) \SopranoVerseBody
            \keepWithTag #'(forMIDI) \SopranoFirstRepeatPart
            \keepWithTag #'(verseThree forMIDI) \SopranoVerseBody
            \keepWithTag #'(forMIDI) \SopranoSecondRepeatPart
            \keepWithTag #'(forMIDI) \SopranoEnding
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
            \keepWithTag #'(verseOne forMIDI) \AltoVerseBody
            \keepWithTag #'(forMIDI) \AltoFirstRepeatPart
            \keepWithTag #'(verseTwo forMIDI) \AltoVerseBody
            \keepWithTag #'(forMIDI) \AltoFirstRepeatPart
            \keepWithTag #'(verseThree forMIDI) \AltoVerseBody
            \keepWithTag #'(forMIDI) \AltoSecondRepeatPart
            \keepWithTag #'(forMIDI) \AltoEnding
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
            \keepWithTag #'(verseOne forMIDI) \TenorVerseBody
            \keepWithTag #'(forMIDI) \TenorFirstRepeatPart
            \keepWithTag #'(verseTwo forMIDI) \TenorVerseBody
            \keepWithTag #'(forMIDI) \TenorFirstRepeatPart
            \keepWithTag #'(verseThree forMIDI) \TenorVerseBody
            \keepWithTag #'(forMIDI) \TenorSecondRepeatPart
            \keepWithTag #'(forMIDI) \TenorEnding
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
            \keepWithTag #'(verseOne forMIDI) \BassVerseBody
            \keepWithTag #'(forMIDI) \BassFirstRepeatPart
            \keepWithTag #'(verseTwo forMIDI) \BassVerseBody
            \keepWithTag #'(forMIDI) \BassFirstRepeatPart
            \keepWithTag #'(verseThree forMIDI) \BassVerseBody
            \keepWithTag #'(forMIDI) \BassSecondRepeatPart
            \keepWithTag #'(forMIDI) \BassEnding
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
            \keepWithTag #'(verseOne forMIDI) \SopranoVerseBody
            \keepWithTag #'(forMIDI) \SopranoFirstRepeatPart
            \keepWithTag #'(verseTwo forMIDI) \SopranoVerseBody
            \keepWithTag #'(forMIDI) \SopranoFirstRepeatPart
            \keepWithTag #'(verseThree forMIDI) \SopranoVerseBody
            \keepWithTag #'(forMIDI) \SopranoSecondRepeatPart
            \keepWithTag #'(forMIDI) \SopranoEnding
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
            \keepWithTag #'(verseOne forMIDI) \AltoVerseBody
            \keepWithTag #'(forMIDI) \AltoFirstRepeatPart
            \keepWithTag #'(verseTwo forMIDI) \AltoVerseBody
            \keepWithTag #'(forMIDI) \AltoFirstRepeatPart
            \keepWithTag #'(verseThree forMIDI) \AltoVerseBody
            \keepWithTag #'(forMIDI) \AltoSecondRepeatPart
            \keepWithTag #'(forMIDI) \AltoEnding
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
            \keepWithTag #'(verseOne forMIDI) \TenorVerseBody
            \keepWithTag #'(forMIDI) \TenorFirstRepeatPart
            \keepWithTag #'(verseTwo forMIDI) \TenorVerseBody
            \keepWithTag #'(forMIDI) \TenorFirstRepeatPart
            \keepWithTag #'(verseThree forMIDI) \TenorVerseBody
            \keepWithTag #'(forMIDI) \TenorSecondRepeatPart
            \keepWithTag #'(forMIDI) \TenorEnding
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
            \keepWithTag #'(verseOne forMIDI) \BassVerseBody
            \keepWithTag #'(forMIDI) \BassFirstRepeatPart
            \keepWithTag #'(verseTwo forMIDI) \BassVerseBody
            \keepWithTag #'(forMIDI) \BassFirstRepeatPart
            \keepWithTag #'(verseThree forMIDI) \BassVerseBody
            \keepWithTag #'(forMIDI) \BassSecondRepeatPart
            \keepWithTag #'(forMIDI) \BassEnding
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
            \keepWithTag #'(verseOne forMIDI) \SopranoVerseBody
            \keepWithTag #'(forMIDI) \SopranoFirstRepeatPart
            \keepWithTag #'(verseTwo forMIDI) \SopranoVerseBody
            \keepWithTag #'(forMIDI) \SopranoFirstRepeatPart
            \keepWithTag #'(verseThree forMIDI) \SopranoVerseBody
            \keepWithTag #'(forMIDI) \SopranoSecondRepeatPart
            \keepWithTag #'(forMIDI) \SopranoEnding
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
            \keepWithTag #'(verseOne forMIDI) \AltoVerseBody
            \keepWithTag #'(forMIDI) \AltoFirstRepeatPart
            \keepWithTag #'(verseTwo forMIDI) \AltoVerseBody
            \keepWithTag #'(forMIDI) \AltoFirstRepeatPart
            \keepWithTag #'(verseThree forMIDI) \AltoVerseBody
            \keepWithTag #'(forMIDI) \AltoSecondRepeatPart
            \keepWithTag #'(forMIDI) \AltoEnding
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
            \keepWithTag #'(verseOne forMIDI) \TenorVerseBody
            \keepWithTag #'(forMIDI) \TenorFirstRepeatPart
            \keepWithTag #'(verseTwo forMIDI) \TenorVerseBody
            \keepWithTag #'(forMIDI) \TenorFirstRepeatPart
            \keepWithTag #'(verseThree forMIDI) \TenorVerseBody
            \keepWithTag #'(forMIDI) \TenorSecondRepeatPart
            \keepWithTag #'(forMIDI) \TenorEnding
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
            \keepWithTag #'(verseOne forMIDI) \BassVerseBody
            \keepWithTag #'(forMIDI) \BassFirstRepeatPart
            \keepWithTag #'(verseTwo forMIDI) \BassVerseBody
            \keepWithTag #'(forMIDI) \BassFirstRepeatPart
            \keepWithTag #'(verseThree forMIDI) \BassVerseBody
            \keepWithTag #'(forMIDI) \BassSecondRepeatPart
            \keepWithTag #'(forMIDI) \BassEnding
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
            \keepWithTag #'(verseOne forMIDI) \SopranoVerseBody
            \keepWithTag #'(forMIDI) \SopranoFirstRepeatPart
            \keepWithTag #'(verseTwo forMIDI) \SopranoVerseBody
            \keepWithTag #'(forMIDI) \SopranoFirstRepeatPart
            \keepWithTag #'(verseThree forMIDI) \SopranoVerseBody
            \keepWithTag #'(forMIDI) \SopranoSecondRepeatPart
            \keepWithTag #'(forMIDI) \SopranoEnding
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
            \keepWithTag #'(verseOne forMIDI) \AltoVerseBody
            \keepWithTag #'(forMIDI) \AltoFirstRepeatPart
            \keepWithTag #'(verseTwo forMIDI) \AltoVerseBody
            \keepWithTag #'(forMIDI) \AltoFirstRepeatPart
            \keepWithTag #'(verseThree forMIDI) \AltoVerseBody
            \keepWithTag #'(forMIDI) \AltoSecondRepeatPart
            \keepWithTag #'(forMIDI) \AltoEnding
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
            \keepWithTag #'(verseOne forMIDI) \TenorVerseBody
            \keepWithTag #'(forMIDI) \TenorFirstRepeatPart
            \keepWithTag #'(verseTwo forMIDI) \TenorVerseBody
            \keepWithTag #'(forMIDI) \TenorFirstRepeatPart
            \keepWithTag #'(verseThree forMIDI) \TenorVerseBody
            \keepWithTag #'(forMIDI) \TenorSecondRepeatPart
            \keepWithTag #'(forMIDI) \TenorEnding
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
            \keepWithTag #'(verseOne forMIDI) \BassVerseBody
            \keepWithTag #'(forMIDI) \BassFirstRepeatPart
            \keepWithTag #'(verseTwo forMIDI) \BassVerseBody
            \keepWithTag #'(forMIDI) \BassFirstRepeatPart
            \keepWithTag #'(verseThree forMIDI) \BassVerseBody
            \keepWithTag #'(forMIDI) \BassSecondRepeatPart
            \keepWithTag #'(forMIDI) \BassEnding
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
            \keepWithTag #'(verseOne forMIDI) \SopranoVerseBody
            \keepWithTag #'(forMIDI) \SopranoFirstRepeatPart
            \keepWithTag #'(verseTwo forMIDI) \SopranoVerseBody
            \keepWithTag #'(forMIDI) \SopranoFirstRepeatPart
            \keepWithTag #'(verseThree forMIDI) \SopranoVerseBody
            \keepWithTag #'(forMIDI) \SopranoSecondRepeatPart
            \keepWithTag #'(forMIDI) \SopranoEnding
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
            \keepWithTag #'(verseOne forMIDI) \AltoVerseBody
            \keepWithTag #'(forMIDI) \AltoFirstRepeatPart
            \keepWithTag #'(verseTwo forMIDI) \AltoVerseBody
            \keepWithTag #'(forMIDI) \AltoFirstRepeatPart
            \keepWithTag #'(verseThree forMIDI) \AltoVerseBody
            \keepWithTag #'(forMIDI) \AltoSecondRepeatPart
            \keepWithTag #'(forMIDI) \AltoEnding
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
            \keepWithTag #'(verseOne forMIDI) \TenorVerseBody
            \keepWithTag #'(forMIDI) \TenorFirstRepeatPart
            \keepWithTag #'(verseTwo forMIDI) \TenorVerseBody
            \keepWithTag #'(forMIDI) \TenorFirstRepeatPart
            \keepWithTag #'(verseThree forMIDI) \TenorVerseBody
            \keepWithTag #'(forMIDI) \TenorSecondRepeatPart
            \keepWithTag #'(forMIDI) \TenorEnding
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
            \keepWithTag #'(verseOne forMIDI) \BassVerseBody
            \keepWithTag #'(forMIDI) \BassFirstRepeatPart
            \keepWithTag #'(verseTwo forMIDI) \BassVerseBody
            \keepWithTag #'(forMIDI) \BassFirstRepeatPart
            \keepWithTag #'(verseThree forMIDI) \BassVerseBody
            \keepWithTag #'(forMIDI) \BassSecondRepeatPart
            \keepWithTag #'(forMIDI) \BassEnding
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
