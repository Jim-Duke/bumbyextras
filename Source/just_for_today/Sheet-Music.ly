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
            \char ##x2022 "altered"
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
        }
      }
    }
  }

  \score {
    \context ChoirStaff <<
      \override Score.BarNumber.break-visibility = ##(#f #f #f)
      \context Staff = upper <<
        \context Voice = sopranos {
          \voiceOne {
            \global
            \override NoteHead #'font-size = #1
            \keepWithTag #'(usePartials sheetMusicRhythms) \sopranoVerse
          }
        }
        \context Voice = altos {
          \voiceTwo {
            \global
            \override NoteHead #'font-size = #1
            \keepWithTag #'(usePartials sheetMusicRhythms) \altoVerse
          }
        }
        \context NullVoice = sheetMusicVerseBreaks {
          \global
          \keepWithTag #'usePartials \sheetMusicVerseBreaks
        }
        \context NullVoice = sopranosVerseOneRhythms {
          \global
          \keepWithTag #'(usePartials verseOneRhythms) \sopranoVerse
        }
        \context NullVoice = sopranosVerseTwoRhythms {
          \global
          \keepWithTag #'(usePartials verseTwoRhythms) \sopranoVerse
        }
        \new Lyrics \lyricsto "sopranosVerseOneRhythms" {
          \override Lyrics.LyricSpace.minimum-distance = #2.0
          \once \override LyricText.self-alignment-X = #CENTER
          \verseOneLyrics
        }
        \new Lyrics \lyricsto "sopranosVerseTwoRhythms" {
          \override Lyrics.LyricSpace.minimum-distance = #2.0
          \once \override LyricText.self-alignment-X = #CENTER
          \verseTwoLyrics
        }
      >>
      \context Staff = lower <<
        \clef bass
        \context Voice = tenors {
          \voiceOne {
            \global
            \override NoteHead #'font-size = #1
            \keepWithTag #'(usePartials sheetMusicRhythms) \tenorVerse
          }
        }
        \context Voice = basses {
          \voiceTwo {
            \global
            \override NoteHead #'font-size = #1
            \keepWithTag #'(usePartials sheetMusicRhythms) \bassVerse
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
  \markup { \bold "Refrain:" }
  \score {
    \context ChoirStaff <<
      \override Score.BarNumber.break-visibility = ##(#f #f #f)
      \context Staff = upper <<
        \context Voice = sopranos {
          \voiceOne {
            \global
            \override NoteHead #'font-size = #1
            \keepWithTag #'usePartials \sopranoRefrain
          }
        }
        \context Voice = altos {
          \voiceTwo {
            \global
            \override NoteHead #'font-size = #1
            \keepWithTag #'usePartials \altoRefrain
          }
        }
        \context NullVoice = refreainBreaks {
          \global
          \keepWithTag #'usePartials \sheetMusicRefrainBreaks
        }
        \new Lyrics \lyricsto "sopranos" {
          \override Lyrics.LyricSpace.minimum-distance = #2.0
          \once \override LyricText.self-alignment-X = #CENTER
          \refrainLyrics
        }
      >>
      \context Staff = lower <<
        \clef bass
        \context Voice = tenors {
          \voiceOne {
            \global
            \override NoteHead #'font-size = #1
            \keepWithTag #'usePartials \tenorRefrain
          }
        }
        \context Voice = basses {
          \voiceTwo {
            \global
            \override NoteHead #'font-size = #1
            \keepWithTag #'usePartials \bassRefrain
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