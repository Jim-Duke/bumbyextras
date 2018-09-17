\version "2.19.49"

\include "Words-and-music.ly"
\include "../../../LilypondTemplates/midi.ly"

#(ly:parser-define! (string->symbol "outputName")
   (if (null? (ly:parser-lookup (string->symbol "BuildDir")))
       "Audio"
       (string-append BuildDir SongNumber " - " Title " - Audio")))

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
            \keepWithTag #'verseOneRhythms \SopranoVerseMusic
            \SopranoChorusMusic
            \keepWithTag #'verseTwoRhythms \SopranoVerseMusic
            \SopranoChorusMusic
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
            \keepWithTag #'verseOneRhythms \AltoVerseMusic
            \AltoChorusMusic
            \keepWithTag #'verseTwoRhythms \AltoVerseMusic
            \AltoChorusMusic
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
            \keepWithTag #'verseOneRhythms \TenorVerseMusic
            \TenorChorusMusic
            \keepWithTag #'verseTwoRhythms \TenorVerseMusic
            \TenorChorusMusic
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
            \keepWithTag #'verseOneRhythms \BassVerseMusic
            \BassChorusMusic
            \keepWithTag #'verseTwoRhythms \BassVerseMusic
            \BassChorusMusic
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
            \keepWithTag #'verseOneRhythms \SopranoVerseMusic
            \SopranoChorusMusic
            \keepWithTag #'verseTwoRhythms \SopranoVerseMusic
            \SopranoChorusMusic
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
            \keepWithTag #'verseOneRhythms \AltoVerseMusic
            \AltoChorusMusic
            \keepWithTag #'verseTwoRhythms \AltoVerseMusic
            \AltoChorusMusic
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
            \keepWithTag #'verseOneRhythms \TenorVerseMusic
            \TenorChorusMusic
            \keepWithTag #'verseTwoRhythms \TenorVerseMusic
            \TenorChorusMusic
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
            \keepWithTag #'verseOneRhythms \BassVerseMusic
            \BassChorusMusic
            \keepWithTag #'verseTwoRhythms \BassVerseMusic
            \BassChorusMusic
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
            \keepWithTag #'verseOneRhythms \SopranoVerseMusic
            \SopranoChorusMusic
            \keepWithTag #'verseTwoRhythms \SopranoVerseMusic
            \SopranoChorusMusic
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
            \keepWithTag #'verseOneRhythms \AltoVerseMusic
            \AltoChorusMusic
            \keepWithTag #'verseTwoRhythms \AltoVerseMusic
            \AltoChorusMusic
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
            \keepWithTag #'verseOneRhythms \TenorVerseMusic
            \TenorChorusMusic
            \keepWithTag #'verseTwoRhythms \TenorVerseMusic
            \TenorChorusMusic
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
            \keepWithTag #'verseOneRhythms \BassVerseMusic
            \BassChorusMusic
            \keepWithTag #'verseTwoRhythms \BassVerseMusic
            \BassChorusMusic
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
            \keepWithTag #'verseOneRhythms \SopranoVerseMusic
            \SopranoChorusMusic
            \keepWithTag #'verseTwoRhythms \SopranoVerseMusic
            \SopranoChorusMusic
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
            \keepWithTag #'verseOneRhythms \AltoVerseMusic
            \AltoChorusMusic
            \keepWithTag #'verseTwoRhythms \AltoVerseMusic
            \AltoChorusMusic
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
            \keepWithTag #'verseOneRhythms \TenorVerseMusic
            \TenorChorusMusic
            \keepWithTag #'verseTwoRhythms \TenorVerseMusic
            \TenorChorusMusic
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
            \keepWithTag #'verseOneRhythms \BassVerseMusic
            \BassChorusMusic
            \keepWithTag #'verseTwoRhythms \BassVerseMusic
            \BassChorusMusic
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
            \keepWithTag #'verseOneRhythms \SopranoVerseMusic
            \SopranoChorusMusic
            \keepWithTag #'verseTwoRhythms \SopranoVerseMusic
            \SopranoChorusMusic
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
            \keepWithTag #'verseOneRhythms \AltoVerseMusic
            \AltoChorusMusic
            \keepWithTag #'verseTwoRhythms \AltoVerseMusic
            \AltoChorusMusic
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
            \keepWithTag #'verseOneRhythms \TenorVerseMusic
            \TenorChorusMusic
            \keepWithTag #'verseTwoRhythms \TenorVerseMusic
            \TenorChorusMusic
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
            \keepWithTag #'verseOneRhythms \BassVerseMusic
            \BassChorusMusic
            \keepWithTag #'verseTwoRhythms \BassVerseMusic
            \BassChorusMusic
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
