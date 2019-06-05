\version "2.19.49"

\include "Words-and-music.ly"
\include "../../../LilypondTemplates/midi.ly"

SopranoUnfolded = {
  \global
  \keepWithTag #'verseOneA \SopranoVerseBodyMusic
  \keepWithTag #'verseOneA \SopranoVerseFirstEnding
  \keepWithTag #'verseOneB \SopranoVerseBodyMusic
  \keepWithTag #'verseOneB \SopranoVerseSecondEnding
  \SopranoChorusMusic
  \keepWithTag #'verseTwoA \SopranoVerseBodyMusic
  \keepWithTag #'verseTwoA \SopranoVerseFirstEnding
  \keepWithTag #'verseTwoB \SopranoVerseBodyMusic
  \keepWithTag #'verseTwoB \SopranoVerseSecondEnding
  \SopranoChorusMusic
  \keepWithTag #'verseThreeA \SopranoVerseBodyMusic
  \keepWithTag #'verseThreeA \SopranoVerseFirstEnding
  \keepWithTag #'verseThreeB \SopranoVerseBodyMusic
  \keepWithTag #'verseThreeB \SopranoVerseSecondEnding
  \SopranoChorusMusic
}

AltoUnfolded = {
  \global
  \keepWithTag #'verseOneA \AltoVerseBodyMusic
  \keepWithTag #'verseOneA \AltoVerseFirstEnding
  \keepWithTag #'verseOneB \AltoVerseBodyMusic
  \keepWithTag #'verseOneB \AltoVerseSecondEnding
  \AltoChorusMusic
  \keepWithTag #'verseTwoA \AltoVerseBodyMusic
  \keepWithTag #'verseTwoA \AltoVerseFirstEnding
  \keepWithTag #'verseTwoB \AltoVerseBodyMusic
  \keepWithTag #'verseTwoB \AltoVerseSecondEnding
  \AltoChorusMusic
  \keepWithTag #'verseThreeA \AltoVerseBodyMusic
  \keepWithTag #'verseThreeA \AltoVerseFirstEnding
  \keepWithTag #'verseThreeB \AltoVerseBodyMusic
  \keepWithTag #'verseThreeB \AltoVerseSecondEnding
  \AltoChorusMusic
}

TenorUnfolded = {
  \global
  \keepWithTag #'verseOneA \TenorVerseBodyMusic
  \keepWithTag #'verseOneA \TenorVerseFirstEnding
  \keepWithTag #'verseOneB \TenorVerseBodyMusic
  \keepWithTag #'verseOneB \TenorVerseSecondEnding
  \TenorChorusMusic
  \keepWithTag #'verseTwoA \TenorVerseBodyMusic
  \keepWithTag #'verseTwoA \TenorVerseFirstEnding
  \keepWithTag #'verseTwoB \TenorVerseBodyMusic
  \keepWithTag #'verseTwoB \TenorVerseSecondEnding
  \TenorChorusMusic
  \keepWithTag #'verseThreeA \TenorVerseBodyMusic
  \keepWithTag #'verseThreeA \TenorVerseFirstEnding
  \keepWithTag #'verseThreeB \TenorVerseBodyMusic
  \keepWithTag #'verseThreeB \TenorVerseSecondEnding
  \TenorChorusMusic
}

BassUnfolded = {
  \global
  \keepWithTag #'verseOneA \BassVerseBodyMusic
  \keepWithTag #'verseOneA \BassVerseFirstEnding
  \keepWithTag #'verseOneB \BassVerseBodyMusic
  \keepWithTag #'verseOneB \BassVerseSecondEnding
  \BassChorusMusic
  \keepWithTag #'verseTwoA \BassVerseBodyMusic
  \keepWithTag #'verseTwoA \BassVerseFirstEnding
  \keepWithTag #'verseTwoB \BassVerseBodyMusic
  \keepWithTag #'verseTwoB \BassVerseSecondEnding
  \BassChorusMusic
  \keepWithTag #'verseThreeA \BassVerseBodyMusic
  \keepWithTag #'verseThreeA \BassVerseFirstEnding
  \keepWithTag #'verseThreeB \BassVerseBodyMusic
  \keepWithTag #'verseThreeB \BassVerseSecondEnding
  \BassChorusMusic
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
          \voiceOne \SopranoUnfolded
        }
        \context Voice = altos \with {
          midiInstrument = \allInstrument
          midiMaximumVolume = \allMaxVolume
          midiMinimumVolume = \allMinVolume
          midiPanPosition = \allPan
        } {
          \voiceTwo \AltoUnfolded
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
          \voiceOne \TenorUnfolded
        }
        \context Voice = basses \with {
          midiInstrument = \allInstrument
          midiMaximumVolume = \allMaxVolume
          midiMinimumVolume = \allMinVolume
          midiPanPosition = \allPan
        } {
          \voiceTwo \BassUnfolded
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
          \voiceOne \SopranoUnfolded
        }
        \context Voice = altos \with {
          midiInstrument = \diminishedInstrument
          midiMaximumVolume = \diminishedMaxVolume
          midiMinimumVolume = \diminishedMinVolume
          midiPanPosition = \diminishedPan
        } {
          \voiceTwo \AltoUnfolded
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
          \voiceOne \TenorUnfolded
        }
        \context Voice = basses \with {
          midiInstrument = \diminishedInstrument
          midiMaximumVolume = \diminishedMaxVolume
          midiMinimumVolume = \diminishedMinVolume
          midiPanPosition = \diminishedPan
        } {
          \voiceTwo \BassUnfolded
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
          \voiceOne \SopranoUnfolded
        }
        \context Voice = altos \with {
          midiInstrument = \dominantInstrument
          midiMaximumVolume = \dominantMaxVolume
          midiMinimumVolume = \dominantMinVolume
          midiPanPosition = \dominantPan
        } {
          \voiceTwo \AltoUnfolded
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
          \voiceOne \TenorUnfolded
        }
        \context Voice = basses \with {
          midiInstrument = \diminishedInstrument
          midiMaximumVolume = \diminishedMaxVolume
          midiMinimumVolume = \diminishedMinVolume
          midiPanPosition = \diminishedPan
        } {
          \voiceTwo \BassUnfolded
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
          \voiceOne \SopranoUnfolded
        }
        \context Voice = altos \with {
          midiInstrument = \diminishedInstrument
          midiMaximumVolume = \diminishedMaxVolume
          midiMinimumVolume = \diminishedMinVolume
          midiPanPosition = \diminishedPan
        } {
          \voiceTwo \AltoUnfolded
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
          \voiceOne \TenorUnfolded
        }
        \context Voice = basses \with {
          midiInstrument = \diminishedInstrument
          midiMaximumVolume = \diminishedMaxVolume
          midiMinimumVolume = \diminishedMinVolume
          midiPanPosition = \diminishedPan
        } {
          \voiceTwo \BassUnfolded
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
          \voiceOne \SopranoUnfolded
        }
        \context Voice = altos \with {
          midiInstrument = \diminishedInstrument
          midiMaximumVolume = \diminishedMaxVolume
          midiMinimumVolume = \diminishedMinVolume
          midiPanPosition = \diminishedPan
        } {
          \voiceTwo \AltoUnfolded
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
          \voiceOne \TenorUnfolded
        }
        \context Voice = basses \with {
          midiInstrument = \dominantInstrument
          midiMaximumVolume = \dominantMaxVolume
          midiMinimumVolume = \dominantMinVolume
          midiPanPosition = \dominantPan
        } {
          \voiceTwo \BassUnfolded
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
