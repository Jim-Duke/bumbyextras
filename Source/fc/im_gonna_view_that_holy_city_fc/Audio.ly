\version "2.19.49"

\include "Words-and-music.ly"
\include "../../../LilypondTemplates/midi.ly"

SopranoUnfoldedMusic = {
  \global
  \keepWithTag #'verseOne \SopranoVerseBody
  \keepWithTag #'verseOne \SopranoVerseMidiRepeat
  \SopranoVerseEnd
  \keepWithTag #'verseTwo \SopranoVerseBody
  \keepWithTag #'verseTwo \SopranoVerseMidiRepeat
  \keepWithTag #'verseOne \SopranoVerseMidiRepeat
  \SopranoVerseEnd
  \keepWithTag #'verseThree \SopranoVerseBody
  \keepWithTag #'verseThree \SopranoVerseMidiRepeat
  \keepWithTag #'verseTwo \SopranoVerseMidiRepeat
  \keepWithTag #'verseOne \SopranoVerseMidiRepeat
  \SopranoVerseEnd
  \keepWithTag #'verseFour \SopranoVerseBody
  \keepWithTag #'verseFour \SopranoVerseMidiRepeat
  \keepWithTag #'verseThree \SopranoVerseMidiRepeat
  \keepWithTag #'verseTwo \SopranoVerseMidiRepeat
  \keepWithTag #'verseOne \SopranoVerseMidiRepeat
  \SopranoVerseEnd
  \keepWithTag #'verseFive \SopranoVerseBody
  \keepWithTag #'verseFive \SopranoVerseMidiRepeat
  \keepWithTag #'verseFour \SopranoVerseMidiRepeat
  \keepWithTag #'verseThree \SopranoVerseMidiRepeat
  \keepWithTag #'verseTwo \SopranoVerseMidiRepeat
  \keepWithTag #'verseOne \SopranoVerseMidiRepeat
  \SopranoVerseEnd
}

AltoUnfoldedMusic = {
  \global
  \keepWithTag #'verseOne \AltoVerseBody
  \keepWithTag #'verseOne \AltoVerseMidiRepeat
  \AltoVerseEnd
  \keepWithTag #'verseTwo \AltoVerseBody
  \keepWithTag #'verseTwo \AltoVerseMidiRepeat
  \keepWithTag #'verseOne \AltoVerseMidiRepeat
  \AltoVerseEnd
  \keepWithTag #'verseThree \AltoVerseBody
  \keepWithTag #'verseThree \AltoVerseMidiRepeat
  \keepWithTag #'verseTwo \AltoVerseMidiRepeat
  \keepWithTag #'verseOne \AltoVerseMidiRepeat
  \AltoVerseEnd
  \keepWithTag #'verseFour \AltoVerseBody
  \keepWithTag #'verseFour \AltoVerseMidiRepeat
  \keepWithTag #'verseThree \AltoVerseMidiRepeat
  \keepWithTag #'verseTwo \AltoVerseMidiRepeat
  \keepWithTag #'verseOne \AltoVerseMidiRepeat
  \AltoVerseEnd
  \keepWithTag #'verseFive \AltoVerseBody
  \keepWithTag #'verseFive \AltoVerseMidiRepeat
  \keepWithTag #'verseFour \AltoVerseMidiRepeat
  \keepWithTag #'verseThree \AltoVerseMidiRepeat
  \keepWithTag #'verseTwo \AltoVerseMidiRepeat
  \keepWithTag #'verseOne \AltoVerseMidiRepeat
  \AltoVerseEnd
}

TenorUnfoldedMusic = {
  \global
  \keepWithTag #'verseOne \TenorVerseBody
  \keepWithTag #'verseOne \TenorVerseMidiRepeat
  \TenorVerseEnd
  \keepWithTag #'verseTwo \TenorVerseBody
  \keepWithTag #'verseTwo \TenorVerseMidiRepeat
  \keepWithTag #'verseOne \TenorVerseMidiRepeat
  \TenorVerseEnd
  \keepWithTag #'verseThree \TenorVerseBody
  \keepWithTag #'verseThree \TenorVerseMidiRepeat
  \keepWithTag #'verseTwo \TenorVerseMidiRepeat
  \keepWithTag #'verseOne \TenorVerseMidiRepeat
  \TenorVerseEnd
  \keepWithTag #'verseFour \TenorVerseBody
  \keepWithTag #'verseFour \TenorVerseMidiRepeat
  \keepWithTag #'verseThree \TenorVerseMidiRepeat
  \keepWithTag #'verseTwo \TenorVerseMidiRepeat
  \keepWithTag #'verseOne \TenorVerseMidiRepeat
  \TenorVerseEnd
  \keepWithTag #'verseFive \TenorVerseBody
  \keepWithTag #'verseFive \TenorVerseMidiRepeat
  \keepWithTag #'verseFour \TenorVerseMidiRepeat
  \keepWithTag #'verseThree \TenorVerseMidiRepeat
  \keepWithTag #'verseTwo \TenorVerseMidiRepeat
  \keepWithTag #'verseOne \TenorVerseMidiRepeat
  \TenorVerseEnd
}

BassUnfoldedMusic = {
  \global
  \keepWithTag #'verseOne \BassVerseBody
  \keepWithTag #'verseOne \BassVerseMidiRepeat
  \BassVerseEnd
  \keepWithTag #'verseTwo \BassVerseBody
  \keepWithTag #'verseTwo \BassVerseMidiRepeat
  \keepWithTag #'verseOne \BassVerseMidiRepeat
  \BassVerseEnd
  \keepWithTag #'verseThree \BassVerseBody
  \keepWithTag #'verseThree \BassVerseMidiRepeat
  \keepWithTag #'verseTwo \BassVerseMidiRepeat
  \keepWithTag #'verseOne \BassVerseMidiRepeat
  \BassVerseEnd
  \keepWithTag #'verseFour \BassVerseBody
  \keepWithTag #'verseFour \BassVerseMidiRepeat
  \keepWithTag #'verseThree \BassVerseMidiRepeat
  \keepWithTag #'verseTwo \BassVerseMidiRepeat
  \keepWithTag #'verseOne \BassVerseMidiRepeat
  \BassVerseEnd
  \keepWithTag #'verseFive \BassVerseBody
  \keepWithTag #'verseFive \BassVerseMidiRepeat
  \keepWithTag #'verseFour \BassVerseMidiRepeat
  \keepWithTag #'verseThree \BassVerseMidiRepeat
  \keepWithTag #'verseTwo \BassVerseMidiRepeat
  \keepWithTag #'verseOne \BassVerseMidiRepeat
  \BassVerseEnd
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
          \voiceOne \SopranoUnfoldedMusic
        }
        \context Voice = altos \with {
          midiInstrument = \allInstrument
          midiMaximumVolume = \allMaxVolume
          midiMinimumVolume = \allMinVolume
          midiPanPosition = \allPan
        } {
          \voiceTwo \AltoUnfoldedMusic
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
          \voiceOne \TenorUnfoldedMusic
        }
        \context Voice = basses \with {
          midiInstrument = \allInstrument
          midiMaximumVolume = \allMaxVolume
          midiMinimumVolume = \allMinVolume
          midiPanPosition = \allPan
        } {
          \voiceTwo \BassUnfoldedMusic
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
          \voiceOne \SopranoUnfoldedMusic
        }
        \context Voice = altos \with {
          midiInstrument = \diminishedInstrument
          midiMaximumVolume = \diminishedMaxVolume
          midiMinimumVolume = \diminishedMinVolume
          midiPanPosition = \diminishedPan
        } {
          \voiceTwo \AltoUnfoldedMusic
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
          \voiceOne \TenorUnfoldedMusic
        }
        \context Voice = basses \with {
          midiInstrument = \diminishedInstrument
          midiMaximumVolume = \diminishedMaxVolume
          midiMinimumVolume = \diminishedMinVolume
          midiPanPosition = \diminishedPan
        } {
          \voiceTwo \BassUnfoldedMusic
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
          \voiceOne \SopranoUnfoldedMusic
        }
        \context Voice = altos \with {
          midiInstrument = \dominantInstrument
          midiMaximumVolume = \dominantMaxVolume
          midiMinimumVolume = \dominantMinVolume
          midiPanPosition = \dominantPan
        } {
          \voiceTwo \AltoUnfoldedMusic
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
          \voiceOne \TenorUnfoldedMusic
        }
        \context Voice = basses \with {
          midiInstrument = \diminishedInstrument
          midiMaximumVolume = \diminishedMaxVolume
          midiMinimumVolume = \diminishedMinVolume
          midiPanPosition = \diminishedPan
        } {
          \voiceTwo \BassUnfoldedMusic
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
          \voiceOne \SopranoUnfoldedMusic
        }
        \context Voice = altos \with {
          midiInstrument = \diminishedInstrument
          midiMaximumVolume = \diminishedMaxVolume
          midiMinimumVolume = \diminishedMinVolume
          midiPanPosition = \diminishedPan
        } {
          \voiceTwo \AltoUnfoldedMusic
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
          \voiceOne \TenorUnfoldedMusic
        }
        \context Voice = basses \with {
          midiInstrument = \diminishedInstrument
          midiMaximumVolume = \diminishedMaxVolume
          midiMinimumVolume = \diminishedMinVolume
          midiPanPosition = \diminishedPan
        } {
          \voiceTwo \BassUnfoldedMusic
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
          \voiceOne \SopranoUnfoldedMusic
        }
        \context Voice = altos \with {
          midiInstrument = \diminishedInstrument
          midiMaximumVolume = \diminishedMaxVolume
          midiMinimumVolume = \diminishedMinVolume
          midiPanPosition = \diminishedPan
        } {
          \voiceTwo \AltoUnfoldedMusic
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
          \voiceOne \TenorUnfoldedMusic
        }
        \context Voice = basses \with {
          midiInstrument = \dominantInstrument
          midiMaximumVolume = \dominantMaxVolume
          midiMinimumVolume = \dominantMinVolume
          midiPanPosition = \dominantPan
        } {
          \voiceTwo \BassUnfoldedMusic
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
