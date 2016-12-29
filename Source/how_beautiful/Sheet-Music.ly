\version "2.19.49"

\include "Words-and-music.ly"

#(set-global-staff-size 18)

\book {
  \bookOutputName #(string-append build_dir songNumber " - " title " - Sheet Music")
  \paper {
    #(set-paper-size "letter")
    
    %
    % Turn on to see spacing details while you tweek the layout
    %
    % annotate-spacing = ##t
    
    %
    % Various variables that can be used to tweak vertical spacing
    %
    system-system-spacing.basic-distance = #10
    system-system-spacing.minimum-distance = #6
    score-markup-spacing.basic-distance = #0
    markup-system-spacing.basic-distance = #0
    
    indent = 0
    left-margin = 0.75\in
    right-margin = 0.75\in
    top-margin = 0.25\in
    bottom-margin = 0.25\in
    print-page-number = ##f
    ragged-right = ##f

    oddFooterMarkup = \markup {
      \fontsize #-2
      \on-the-fly \last-page {
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
            \char ##x2022 "arr. "
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
      \override #'(baseline-skip . 3.5)
      \column {
        \override #'(baseline-skip . 3.5)
        \column {
          \abs-fontsize #20
          \bold
          \fill-line {
            \fromproperty #'header:lhs
            \override #'(line-width . 85)
            \wordwrap-field #'header:title
            \fromproperty #'header:rhs
          }
          \vspace #0.5
          \fill-line {
            \override #'(line-width . 20) ""
            \override #'(line-width . 80) \center-column {
              \abs-fontsize #10
              \italic \wordwrap-field #'header:scripture
            }
            \override #'(line-width . 20) ""
          }
          \vspace #0.5
        }
      }
    }
  }
  \score {
    % Verses Section
    \context ChoirStaff <<
      \override Score.BarNumber.break-visibility = ##(#f #f #f)
      \context Staff = upper <<
        \context Voice = sopranos {
          \voiceOne {
            \global
            \keepWithTag #'usePartials' \sopranoVerse
          }
        }
        \context Voice = altos {
          \voiceTwo {
            \global
            \keepWithTag #'usePartials' \altoVerse
          }
        }
        \context NullVoice = breaks {
          \global
          \keepWithTag #'usePartials' \sheetMusicBreaks 
        }
        \context NullVoice = align {
          \global
          \keepWithTag #'usePartials' \alignVerse
        }
        \new Lyrics \lyricsto "sopranos" {
          \verseOne \verseCommon
        }
        \new Lyrics \lyricsto "sopranos" {
          \verseTwo
        }
        \new Lyrics \lyricsto "align" {
          \verseThree
        }
        \new Lyrics \lyricsto "sopranos" {
          \verseFour
        }
      >>
      \context Staff = lower <<
        \clef bass
        \context Voice = tenors {
          \voiceOne {
            \global
            \keepWithTag #'usePartials' \tenorVerse
          }
        }
        \context Voice = basses {
          \voiceTwo {
            \global
            \keepWithTag #'usePartials' \bassVerse
          }
        }
      >>
    >>
      
    \layout {
      \context {
        \Lyrics
        \override LyricText.font-size = #0
        \override LyricText.self-alignment-X = #CENTER
        \override LyricSpace.minimum-distance = \defaultMinimumWordSeparation
      }
      \context {
        \Staff
        \override NoteHead.font-size = #1
      }

      ragged-last = ##f
    }
  }
  \markup {	
    \huge \bold "Bridge (between verse 2 and 3):"
  }
  \score {
    \context ChoirStaff <<
      \override Score.BarNumber.break-visibility = ##(#f #f #f)
      \context Staff = upper <<
        \context Voice = sopranos {
          \voiceOne {
            \global
            \keepWithTag #'usePartials' \sopranoBridge
          }
        }
        \context Voice = altos {
          \voiceTwo {
            \global
            \keepWithTag #'usePartials' \altoBridge
          }
        }
        \context NullVoice = breaks {
          \global
          \keepWithTag #'usePartials' \sheetMusicBridgeBreaks
        }
        \new Lyrics \lyricsto "sopranos" {
          \bridgeLyrics
        }
      >>
      \context Staff = lower <<
        \clef bass
        \context Voice = tenors {
          \voiceOne {
            \global
            \keepWithTag #'usePartials' \tenorBridge
          }
        }
        \context Voice = basses {
          \voiceTwo {
            \global
            \keepWithTag #'usePartials' \bassBridge
          }
        }
      >>
    >>
    \layout {
      \context {
        \Lyrics
        \override LyricText.font-size = #0
        \override LyricText.self-alignment-X = #CENTER
        \override LyricSpace.minimum-distance = \defaultMinimumWordSeparation
      }
      \context {
        \Staff
        \override NoteHead.font-size = #1
      }

      ragged-last = ##f
    }
  }
}
