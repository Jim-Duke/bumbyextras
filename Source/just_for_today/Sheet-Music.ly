\version "2.19.49"

\include "Words-and-music.ly"

#(set-global-staff-size 20)

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
    
    indent = 0
    left-margin = 1\in
    right-margin = 1\in
    top-margin = 0.3\in
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
          \abs-fontsize #24
          \bold
          \fill-line {
            \fromproperty #'header:songNumber_lhs
            \fromproperty #'header:title
            \fromproperty #'header:songNumber_rhs
          }
          \vspace #2
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
            \keepWithTag #'(usePartials sheetMusicRhythms) \sopranoVerse
          }
        }
        \context Voice = altos {
          \voiceTwo {
            \global
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
            \keepWithTag #'(usePartials sheetMusicRhythms) \tenorVerse
          }
        }
        \context Voice = basses {
          \voiceTwo {
            \global
            \keepWithTag #'(usePartials sheetMusicRhythms) \bassVerse
          }
        }
      >>
    >>
    \layout {
      ragged-last = ##f
    }
  }
  \pageBreak
  \markup { \bold "Refrain:" }
  \score {
    <<
      \new Staff {
        \new Voice = "descant" {
          \global
          \keepWithTag #'usePartials \descant
        }
      }
      \new Lyrics \lyricsto "descant" {
        \descantLyrics
      }
      \context ChoirStaff <<
        \override Score.BarNumber.break-visibility = ##(#f #f #f)
        \context Staff = upper <<
          \context Voice = sopranos {
            \voiceOne {
              \global
              \keepWithTag #'usePartials \sopranoRefrain
            }
          }
          \context Voice = altos {
            \voiceTwo {
              \global
              \keepWithTag #'usePartials \altoRefrain
            }
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
              \keepWithTag #'usePartials \tenorRefrain
            }
          }
          \context Voice = basses {
            \voiceTwo {
              \global
              \keepWithTag #'usePartials \bassRefrain
            }
          }
        >>
      >>
    >>
    \layout {
      ragged-last = ##f
    }
  }
}