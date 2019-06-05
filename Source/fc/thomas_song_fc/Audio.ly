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
            \keepWithTag #'verseOne \SopranoVerseBodyMusic
            \SopranoVerseEndingMusic
            \keepWithTag #'verseTwo \SopranoVerseBodyMusic
            \SopranoVerseEndingMusic
            \keepWithTag #'(verseTwo slideMusic) \SopranoChorusMusic r8
            \keepWithTag #'verseThree \SopranoVerseBodyMusic
            \SopranoVerseEndingMusic
            \keepWithTag #'verseFour \SopranoVerseBodyMusic
            \SopranoVerseEndingMusic
            \keepWithTag #'(verseFour slideMusic) \SopranoChorusMusic
            \removeWithTag #'usePartials \SopranoCodaMusic
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
            \keepWithTag #'verseOne \AltoVerseBodyMusic
            \AltoVerseEndingMusic
            \keepWithTag #'verseTwo \AltoVerseBodyMusic
            \AltoVerseEndingMusic
            \keepWithTag #'verseTwo \AltoChorusMusic r8
            \keepWithTag #'verseThree \AltoVerseBodyMusic
            \AltoVerseEndingMusic
            \keepWithTag #'verseFour \AltoVerseBodyMusic
            \AltoVerseEndingMusic
            \keepWithTag #'verseFour \AltoChorusMusic
            \AltoCodaMusic
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
            \keepWithTag #'verseOne \TenorVerseBodyMusic
            \TenorVerseEndingMusic
            \keepWithTag #'verseTwo \TenorVerseBodyMusic
            \TenorVerseEndingMusic
            \keepWithTag #'verseTwo \TenorChorusMusic r8
            \keepWithTag #'verseThree \TenorVerseBodyMusic
            \TenorVerseEndingMusic
            \keepWithTag #'verseFour \TenorVerseBodyMusic
            \TenorVerseEndingMusic
            \keepWithTag #'verseFour \TenorChorusMusic
            \TenorCodaMusic
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
            \keepWithTag #'verseOne \BassVerseBodyMusic
            \BassVerseEndingMusic
            \keepWithTag #'verseTwo \BassVerseBodyMusic
            \BassVerseEndingMusic
            \keepWithTag #'verseTwo \BassChorusMusic r8
            \keepWithTag #'verseThree \BassVerseBodyMusic
            \BassVerseEndingMusic
            \keepWithTag #'verseFour \BassVerseBodyMusic
            \BassVerseEndingMusic
            \keepWithTag #'verseFour \BassChorusMusic
            \BassCodaMusic
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
           \keepWithTag #'verseOne \SopranoVerseBodyMusic
           \SopranoVerseEndingMusic
           \keepWithTag #'verseTwo \SopranoVerseBodyMusic
           \SopranoVerseEndingMusic
           \keepWithTag #'(verseTwo slideMusic) \SopranoChorusMusic r8
           \keepWithTag #'verseThree \SopranoVerseBodyMusic
           \SopranoVerseEndingMusic
           \keepWithTag #'verseFour \SopranoVerseBodyMusic
           \SopranoVerseEndingMusic
           \keepWithTag #'(verseFour slideMusic) \SopranoChorusMusic
           \removeWithTag #'usePartials \SopranoCodaMusic
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
           \keepWithTag #'verseOne \AltoVerseBodyMusic
           \AltoVerseEndingMusic
           \keepWithTag #'verseTwo \AltoVerseBodyMusic
           \AltoVerseEndingMusic
           \keepWithTag #'verseTwo \AltoChorusMusic r8
           \keepWithTag #'verseThree \AltoVerseBodyMusic
           \AltoVerseEndingMusic
           \keepWithTag #'verseFour \AltoVerseBodyMusic
           \AltoVerseEndingMusic
           \keepWithTag #'verseFour \AltoChorusMusic
           \AltoCodaMusic
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
           \keepWithTag #'verseOne \TenorVerseBodyMusic
           \TenorVerseEndingMusic
           \keepWithTag #'verseTwo \TenorVerseBodyMusic
           \TenorVerseEndingMusic
           \keepWithTag #'verseTwo \TenorChorusMusic r8
           \keepWithTag #'verseThree \TenorVerseBodyMusic
           \TenorVerseEndingMusic
           \keepWithTag #'verseFour \TenorVerseBodyMusic
           \TenorVerseEndingMusic
           \keepWithTag #'verseFour \TenorChorusMusic
           \TenorCodaMusic
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
           \keepWithTag #'verseOne \BassVerseBodyMusic
           \BassVerseEndingMusic
           \keepWithTag #'verseTwo \BassVerseBodyMusic
           \BassVerseEndingMusic
           \keepWithTag #'verseTwo \BassChorusMusic r8
           \keepWithTag #'verseThree \BassVerseBodyMusic
           \BassVerseEndingMusic
           \keepWithTag #'verseFour \BassVerseBodyMusic
           \BassVerseEndingMusic
           \keepWithTag #'verseFour \BassChorusMusic
           \BassCodaMusic
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
            \keepWithTag #'verseOne \SopranoVerseBodyMusic
            \SopranoVerseEndingMusic
            \keepWithTag #'verseTwo \SopranoVerseBodyMusic
            \SopranoVerseEndingMusic
            \keepWithTag #'(verseTwo slideMusic) \SopranoChorusMusic r8
            \keepWithTag #'verseThree \SopranoVerseBodyMusic
            \SopranoVerseEndingMusic
            \keepWithTag #'verseFour \SopranoVerseBodyMusic
            \SopranoVerseEndingMusic
            \keepWithTag #'(verseFour slideMusic) \SopranoChorusMusic
            \removeWithTag #'usePartials \SopranoCodaMusic
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
            \keepWithTag #'verseOne \AltoVerseBodyMusic
            \AltoVerseEndingMusic
            \keepWithTag #'verseTwo \AltoVerseBodyMusic
            \AltoVerseEndingMusic
            \keepWithTag #'verseTwo \AltoChorusMusic r8
            \keepWithTag #'verseThree \AltoVerseBodyMusic
            \AltoVerseEndingMusic
            \keepWithTag #'verseFour \AltoVerseBodyMusic
            \AltoVerseEndingMusic
            \keepWithTag #'verseFour \AltoChorusMusic
            \AltoCodaMusic
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
            \keepWithTag #'verseOne \TenorVerseBodyMusic
            \TenorVerseEndingMusic
            \keepWithTag #'verseTwo \TenorVerseBodyMusic
            \TenorVerseEndingMusic
            \keepWithTag #'verseTwo \TenorChorusMusic r8
            \keepWithTag #'verseThree \TenorVerseBodyMusic
            \TenorVerseEndingMusic
            \keepWithTag #'verseFour \TenorVerseBodyMusic
            \TenorVerseEndingMusic
            \keepWithTag #'verseFour \TenorChorusMusic
            \TenorCodaMusic
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
            \keepWithTag #'verseOne \BassVerseBodyMusic
            \BassVerseEndingMusic
            \keepWithTag #'verseTwo \BassVerseBodyMusic
            \BassVerseEndingMusic
            \keepWithTag #'verseTwo \BassChorusMusic r8
            \keepWithTag #'verseThree \BassVerseBodyMusic
            \BassVerseEndingMusic
            \keepWithTag #'verseFour \BassVerseBodyMusic
            \BassVerseEndingMusic
            \keepWithTag #'verseFour \BassChorusMusic
            \BassCodaMusic
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
            \keepWithTag #'verseOne \SopranoVerseBodyMusic
            \SopranoVerseEndingMusic
            \keepWithTag #'verseTwo \SopranoVerseBodyMusic
            \SopranoVerseEndingMusic
            \keepWithTag #'(verseTwo slideMusic) \SopranoChorusMusic r8
            \keepWithTag #'verseThree \SopranoVerseBodyMusic
            \SopranoVerseEndingMusic
            \keepWithTag #'verseFour \SopranoVerseBodyMusic
            \SopranoVerseEndingMusic
            \keepWithTag #'(verseFour slideMusic) \SopranoChorusMusic
            \removeWithTag #'usePartials \SopranoCodaMusic
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
            \keepWithTag #'verseOne \AltoVerseBodyMusic
            \AltoVerseEndingMusic
            \keepWithTag #'verseTwo \AltoVerseBodyMusic
            \AltoVerseEndingMusic
            \keepWithTag #'verseTwo \AltoChorusMusic r8
            \keepWithTag #'verseThree \AltoVerseBodyMusic
            \AltoVerseEndingMusic
            \keepWithTag #'verseFour \AltoVerseBodyMusic
            \AltoVerseEndingMusic
            \keepWithTag #'verseFour \AltoChorusMusic
            \AltoCodaMusic
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
            \keepWithTag #'verseOne \TenorVerseBodyMusic
            \TenorVerseEndingMusic
            \keepWithTag #'verseTwo \TenorVerseBodyMusic
            \TenorVerseEndingMusic
            \keepWithTag #'verseTwo \TenorChorusMusic r8
            \keepWithTag #'verseThree \TenorVerseBodyMusic
            \TenorVerseEndingMusic
            \keepWithTag #'verseFour \TenorVerseBodyMusic
            \TenorVerseEndingMusic
            \keepWithTag #'verseFour \TenorChorusMusic
            \TenorCodaMusic
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
            \keepWithTag #'verseOne \BassVerseBodyMusic
            \BassVerseEndingMusic
            \keepWithTag #'verseTwo \BassVerseBodyMusic
            \BassVerseEndingMusic
            \keepWithTag #'verseTwo \BassChorusMusic r8
            \keepWithTag #'verseThree \BassVerseBodyMusic
            \BassVerseEndingMusic
            \keepWithTag #'verseFour \BassVerseBodyMusic
            \BassVerseEndingMusic
            \keepWithTag #'verseFour \BassChorusMusic
            \BassCodaMusic
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
            \keepWithTag #'verseOne \SopranoVerseBodyMusic
            \SopranoVerseEndingMusic
            \keepWithTag #'verseTwo \SopranoVerseBodyMusic
            \SopranoVerseEndingMusic
            \keepWithTag #'(verseTwo slideMusic) \SopranoChorusMusic r8
            \keepWithTag #'verseThree \SopranoVerseBodyMusic
            \SopranoVerseEndingMusic
            \keepWithTag #'verseFour \SopranoVerseBodyMusic
            \SopranoVerseEndingMusic
            \keepWithTag #'(verseFour slideMusic) \SopranoChorusMusic
            \removeWithTag #'usePartials \SopranoCodaMusic
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
            \keepWithTag #'verseOne \AltoVerseBodyMusic
            \AltoVerseEndingMusic
            \keepWithTag #'verseTwo \AltoVerseBodyMusic
            \AltoVerseEndingMusic
            \keepWithTag #'verseTwo \AltoChorusMusic r8
            \keepWithTag #'verseThree \AltoVerseBodyMusic
            \AltoVerseEndingMusic
            \keepWithTag #'verseFour \AltoVerseBodyMusic
            \AltoVerseEndingMusic
            \keepWithTag #'verseFour \AltoChorusMusic
            \AltoCodaMusic
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
            \keepWithTag #'verseOne \TenorVerseBodyMusic
            \TenorVerseEndingMusic
            \keepWithTag #'verseTwo \TenorVerseBodyMusic
            \TenorVerseEndingMusic
            \keepWithTag #'verseTwo \TenorChorusMusic r8
            \keepWithTag #'verseThree \TenorVerseBodyMusic
            \TenorVerseEndingMusic
            \keepWithTag #'verseFour \TenorVerseBodyMusic
            \TenorVerseEndingMusic
            \keepWithTag #'verseFour \TenorChorusMusic
            \TenorCodaMusic
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
            \keepWithTag #'verseOne \BassVerseBodyMusic
            \BassVerseEndingMusic
            \keepWithTag #'verseTwo \BassVerseBodyMusic
            \BassVerseEndingMusic
            \keepWithTag #'verseTwo \BassChorusMusic r8
            \keepWithTag #'verseThree \BassVerseBodyMusic
            \BassVerseEndingMusic
            \keepWithTag #'verseFour \BassVerseBodyMusic
            \BassVerseEndingMusic
            \keepWithTag #'verseFour \BassChorusMusic
            \BassCodaMusic
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
