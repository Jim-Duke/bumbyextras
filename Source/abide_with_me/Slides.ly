\version "2.19.49"

\include "Words-and-music.ly"

#(set-global-staff-size 44)

wordSeparation = #1.5

\book {
  \bookOutputName #(string-append build_dir songNumber " - " title " - Slides")
  \paper {
    #(set-paper-size "arch a" 'landscape )

    %
    % Turn on to see spacing details while you tweek the layout
    %
    % annotate-spacing = ##t
    
    indent = 0
    left-margin = 0.25\in
    right-margin = 0.25\in
    top-margin = 0.25\in
    bottom-margin = 0.25\in
    print-page-number = ##f
    ragged-bottom = ##t
    oddFooterMarkup = \markup {
      \on-the-fly #first-page \column {
        \fontsize #-2
        \column {
          \line {
            "Hymn:"
            \fromproperty #'header:meter
            \char ##x2022
            \fromproperty #'header:poet
          }
          \line {
            "Tune:"
            \fromproperty #'header:tune
            \char ##x2022
            \fromproperty #'header:composer
          }
          \line {
            \fromproperty #'header:copyright
          }
          \line {
            \fromproperty #'header:license
          }
        }
      }
    }
    bookTitleMarkup = \markup {
      \center-column {
        \fill-line {
          \null
          {
            \abs-fontsize #44
            \bold
            \fromproperty #'header:songNumber
          }
        }
        \vspace #3
        \override #'(line-width . 70)
        \center-column {
          \abs-fontsize #48
          \bold
          \wordwrap-field #'header:title
        }
        \fromproperty #'header:scripture
      }
    }
    scoreTitleMarkup = ##f
  }
  \pageBreak

  \score {
    <<
      \override Score.BarNumber.break-visibility = ##(#f #f #f)
      \context Staff = upper <<
        \context Voice = sopranos {
          \voiceOne {
            \global
            \sopranoVerse
          }
        }
        \context Voice = altos {
          \voiceTwo {
            \global
            \altoVerse
          }
        }
        \context NullVoice = slideMusicBreaks {
          \global
          \slideMusicBreaks
        }
      >>
      \new Lyrics \lyricsto "sopranos" {
        \huge \verseOne
      }
      \context Staff = lower <<
        \clef bass
        \context Voice = tenors {
          \voiceOne {
            \global
            \tenorVerse
          }
        }
        \context Voice = basses {
          \voiceTwo {
            \global
            \bassVerse
          }
        }
      >>
    >>
    \layout {
      \context {
        \Lyrics
        \override LyricText.self-alignment-X = #CENTER
        \override LyricSpace.minimum-distance = \wordSeparation
      }
      \context {
        \Staff
        \override StaffSymbol.thickness = \defaultStaffLineThickness
      }
    }
  }
  \score {
    <<
      \override Score.BarNumber.break-visibility = ##(#f #f #f)
      \context Staff = upper <<
        \context Voice = sopranos {
          \voiceOne {
            \global
            \sopranoVerse
          }
        }
        \context Voice = altos {
          \voiceTwo {
            \global
            \altoVerse
          }
        }
        \context NullVoice = slideMusicBreaks {
          \global
          \slideMusicBreaks
        }
        \new Lyrics \lyricsto "sopranos" {
          \huge \verseTwo
        }
      >>
      \context Staff = lower <<
        \clef bass
        \context Voice = tenors {
          \voiceOne {
            \global
            \tenorVerse
          }
        }
        \context Voice = basses {
          \voiceTwo {
            \global
            \bassVerse
          }
        }
      >>
    >>
    \layout {
      \context {
        \Lyrics
        \override LyricText.self-alignment-X = #CENTER
        \override LyricSpace.minimum-distance = \wordSeparation
      }
      \context {
        \Staff
        \override StaffSymbol.thickness = \defaultStaffLineThickness
      }
    }
  }
  \score {
    <<
      \override Score.BarNumber.break-visibility = ##(#f #f #f)
      \context Staff = upper <<
        \context Voice = sopranos {
          \voiceOne {
            \global
            \sopranoVerse
          }
        }
        \context Voice = altos {
          \voiceTwo {
            \global
            \altoVerse
          }
        }
        \context NullVoice = slideMusicBreaks {
          \global
          \slideMusicBreaks
        }
        \new Lyrics \lyricsto "sopranos" {
          \huge \verseThree
        }
      >>
      \context Staff = lower <<
        \clef bass
        \context Voice = tenors {
          \voiceOne {
            \global
            \tenorVerse
          }
        }
        \context Voice = basses {
          \voiceTwo {
            \global
            \bassVerse
          }
        }
      >>
    >>
    \layout {
      \context {
        \Lyrics
        \override LyricText.self-alignment-X = #CENTER
        \override LyricText.font-size = #-0.2
        \override LyricSpace.minimum-distance = \wordSeparation
      }
      \context {
        \Staff
        \override StaffSymbol.thickness = \defaultStaffLineThickness
      }
    }
  }
  \score {
    <<
      \override Score.BarNumber.break-visibility = ##(#f #f #f)
      \context Staff = upper <<
        \context Voice = sopranos {
          \voiceOne {
            \global
            \sopranoVerse
          }
        }
        \context Voice = altos {
          \voiceTwo {
            \global
            \altoVerse
          }
        }
        \context NullVoice = slideMusicBreaks {
          \global
          \slideMusicBreaks
        }
        \new Lyrics \lyricsto "sopranos" {
          \huge \verseFour
        }
      >>
      \context Staff = lower <<
        \clef bass
        \context Voice = tenors {
          \voiceOne {
            \global
            \tenorVerse
          }
        }
        \context Voice = basses {
          \voiceTwo {
            \global
            \bassVerse
          }
        }
      >>
    >>
    \layout {
      \context {
        \Lyrics
        \override LyricSpace.minimum-distance = \wordSeparation
        \override LyricText.font-size = #-0.1
        \override LyricText.self-alignment-X = #CENTER
      }
      \context {
        \Staff
        \override StaffSymbol.thickness = \defaultStaffLineThickness
      }
    }
  }
  \score {
    <<
      \override Score.BarNumber.break-visibility = ##(#f #f #f)
      \context Staff = upper <<
        \context Voice = sopranos {
          \voiceOne {
            \global
            \sopranoVerse
          }
        }
        \context Voice = altos {
          \voiceTwo {
            \global
            \altoVerse
          }
        }
        \context NullVoice = slideMusicBreaks {
          \global
          \slideMusicBreaks
        }
        \new Lyrics \lyricsto "sopranos" {
          \huge \verseFive
        }
      >>
      \context Staff = lower <<
        \clef bass
        \context Voice = tenors {
          \voiceOne {
            \global
            \tenorVerse
          }
        }
        \context Voice = basses {
          \voiceTwo {
            \global
            \bassVerse
          }
        }
      >>
    >>
    \layout {
      \context {
        \Lyrics
        \override LyricSpace.minimum-distance = \wordSeparation
        \override LyricText.font-size = #-0.1
        \override LyricText.self-alignment-X = #CENTER
      }
      \context {
        \Staff
        \override StaffSymbol.thickness = \defaultStaffLineThickness
      }
    }
  }
  \score {
    <<
      \override Score.BarNumber.break-visibility = ##(#f #f #f)
      \context Staff = upper <<
        \context Voice = sopranos {
          \voiceOne {
            \global
            \sopranoVerse
          }
        }
        \context Voice = altos {
          \voiceTwo {
            \global
            \altoVerse
          }
        }
        \context NullVoice = slideMusicBreaks {
          \global
          \slideMusicBreaks
        }
        \new Lyrics \lyricsto "sopranos" {
          \huge \verseSix
        }
      >>
      \context Staff = lower <<
        \clef bass
        \context Voice = tenors {
          \voiceOne {
            \global
            \tenorVerse
          }
        }
        \context Voice = basses {
          \voiceTwo {
            \global
            \bassVerse
          }
        }
      >>
    >>
    \layout {
      \context {
        \Lyrics
        \override LyricSpace.minimum-distance = \wordSeparation
        \override LyricText.font-size = #-0.9
        \override LyricText.self-alignment-X = #CENTER
      }
      \context {
        \Staff
        \override StaffSymbol.thickness = \defaultStaffLineThickness
      }
    }
  }
}
