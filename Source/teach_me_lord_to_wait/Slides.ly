\version "2.19.49"

\include "Words-and-music.ly"

#(set-global-staff-size 44)

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
            \char ##x2022
            "arr:"
            \fromproperty #'header:arranger
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
        \vspace #2
        \override #'(line-width . 60)
        \center-column {
          \abs-fontsize #24
          \italic
          \wordwrap-field #'header:scripture
        }
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
        \context NullVoice = align {
          \global
          \keepWithTag #'usePartials' \verseOneAlign
        }
        \new Lyrics \lyricsto "align" {
          \once \override LyricText.self-alignment-X = #CENTER
          \huge \verseOne
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
        \Lyrics \override LyricSpace #'minimum-distance = #1.5
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
        \context NullVoice = align {
          \global
          \keepWithTag #'usePartials' \verseTwoAlign
        }
        \new Lyrics \lyricsto "align" {
          \once \override LyricText.self-alignment-X = #CENTER
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
        \override LyricSpace #'minimum-distance = #1.5
      }
    }
  }
  \pageBreak
  \score {
    <<
      \override Score.BarNumber.break-visibility = ##(#f #f #f)
      \context Staff = upper <<
        \context Voice = sopranos {
          \voiceOne {
            \global
            \sopranoChorus
          }
        }
        \context Voice = altos {
          \voiceTwo {
            \global
            \altoChorus
          }
        }
        \context NullVoice = slideChorusBreaks {
          \global
          \slideChorusBreaks
        }
        \new Lyrics \lyricsto "sopranos" {
          \once \override LyricText.self-alignment-X = #CENTER
          \huge \chorusLyrics
        }
      >>
      \context Staff = lower <<
        \clef bass
        \context Voice = tenors {
          \voiceOne {
            \global
            \override Voice.TextScript.font-size = #3
            \tenorChorus
          }
        }
        \context Voice = basses {
          \voiceTwo {
            \global
            \bassChorus
          }
        }
      >>
    >>
    \layout {
      ragged-last = ##f
      
      \context {
        \Lyrics
        \override LyricSpace #'minimum-distance = #1.5
      }
    }
  }
}
