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
    system-system-spacing.basic-distance = #12
    system-system-spacing.minimum-distance = #8
    score-markup-spacing.basic-distance = #0
    markup-system-spacing.basic-distance = #0
    
    indent = 0
    left-margin = 0.75\in
    right-margin = 0.75\in
    top-margin = 0.25\in
    bottom-margin = 0.25\in
    print-page-number = ##f
    ragged-bottom = ##t

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
          }
          \line {
            "Composer:"
            \fromproperty #'header:composer
          }
          \line {
            "Arranger:"
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
        }
      }
    }
  }

  \score {
    % Verses Section
    \context ChoirStaff <<
      \override Score.BarNumber.break-visibility = ##(#f #f #f)
      %\override Score.BarNumber.break-visibility = ##(#t #t #t)
      %\set Score.barNumberVisibility = #all-bar-numbers-visible
      \context Staff = upper <<
        \context Voice = "sopranos" {
          \voiceOne {
            \global
            \override NoteHead #'font-size = #1
            \keepWithTag #'usePartials' \sopranoVerse
          }
        }
        \context Voice = "altos" {
          \voiceTwo {
            \global
            \override NoteHead #'font-size = #1
            \keepWithTag #'usePartials' \altoVerse
          }
        }
        \context NullVoice = sheetMusicBreaks {
          \global
          \sheetMusicBreaks
        }
        \context NullVoice = "align" {
          \global
          \keepWithTag #'usePartials' \thirdVerseAlign
        }
        \new Lyrics \lyricsto "sopranos" {
          \once \override LyricText.self-alignment-X = #CENTER
          \verseOne
        }
        \new Lyrics \lyricsto "sopranos" {
          \once \override LyricText.self-alignment-X = #CENTER
          \verseTwo
        }
        \new Lyrics \lyricsto "align" {
          \once \override LyricText.self-alignment-X = #CENTER
          \verseThree
        }
      >>
      \context Staff = lower <<
        \clef bass
        \context Voice = tenors {
          \voiceOne {
            \global
            \override NoteHead #'font-size = #1
            \keepWithTag #'usePartials' \tenorVerse
          }
        }
        \context Voice = basses {
          \voiceTwo {
            \global
            \override NoteHead #'font-size = #1
            \keepWithTag #'usePartials' \bassVerse
          }
        }
      >>
    >>
      
    \layout {
      \context {
        \Lyrics \override LyricText #'font-size = #0
      }

      ragged-last = ##f
    }
  }
  \pageBreak
  \markup {
    \huge \bold "Refrain:"
  }
  \score {
    \context ChoirStaff <<
      \override Score.BarNumber.break-visibility = ##(#f #f #f)
      %\override Score.BarNumber.break-visibility = ##(#t #t #t)
      %\set Score.barNumberVisibility = #all-bar-numbers-visible
      \context Staff = upper <<
        \context Voice = sopranos {
          \voiceOne {
            \global
            \override NoteHead #'font-size = #1
            \keepWithTag #'usePartials' \sopranoChorus
          }
        }
        \context Voice = altos {
          \voiceTwo {
            \global
            \override NoteHead #'font-size = #1
            \keepWithTag #'usePartials' \altoChorus
          }
        }
        \context NullVoice = breaks {
          \global
          \keepWithTag #'usePartials' \sheetMusicRefrainBreaks
        }
        \new Lyrics \lyricsto "sopranos" {
          \once \override LyricText.self-alignment-X = #CENTER
          \chorusLyrics
        }
      >>
      \context Staff = lower <<
        \clef bass
        \context Voice = tenors {
          \voiceOne {
            \global
            \override NoteHead #'font-size = #1
            \keepWithTag #'usePartials' \tenorChorus
          }
        }
        \context Voice = basses {
          \voiceTwo {
            \global
            \override NoteHead #'font-size = #1
            \keepWithTag #'usePartials' \bassChorus
          }
        }
      >>
    >>
    \layout {
      \context {
        \Lyrics \override LyricText #'font-size = #0
      }
    }
  }
  \markup {
    \column {
      \vspace #1
      \huge \bold "CODA:"
    }
  }
  \score {
    \context ChoirStaff <<
      \override Score.BarNumber.break-visibility = ##(#f #f #f)
      %\override Score.BarNumber.break-visibility = ##(#t #t #t)
      %\set Score.barNumberVisibility = #all-bar-numbers-visible
      \context Staff = upper <<
        \context Voice = sopranos {
          \voiceOne {
            \global
            \override NoteHead #'font-size = #1
            \keepWithTag #'usePartials' \sopranoCoda
          }
        }
        \context Voice = altos {
          \voiceTwo {
            \global
            \override NoteHead #'font-size = #1
            \keepWithTag #'usePartials' \altoCoda
          }
        }
        \new Lyrics \lyricsto "sopranos" {
          \once \override LyricText.self-alignment-X = #CENTER
          \codaLyrics
        }
      >>
      \context Staff = lower <<
        \clef bass
        \context Voice = tenors {
          \voiceOne {
            \global
            \override NoteHead #'font-size = #1
            \keepWithTag #'usePartials' \tenorCoda
          }
        }
        \context Voice = basses {
          \voiceTwo {
            \global
            \override NoteHead #'font-size = #1
            \keepWithTag #'usePartials' \bassCoda
          }
        }
      >>
    >>
    \layout {
      \context {
        \Lyrics \override LyricText #'font-size = #0
      }

      ragged-last = ##f
    }
  }
}
