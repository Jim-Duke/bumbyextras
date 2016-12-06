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
            \override #'(line-width . 60)
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
        \context Voice = sopranos {
          \voiceOne {
            \global
            \override NoteHead #'font-size = #1
            \keepWithTag #'usePartials' \sopranoVerse
          }
        }
        \context Voice = altos {
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
        \context NullVoice = verseOneAlign {
          \global
          \keepWithTag #'usePartials' \verseOneAlign
        }
        \context NullVoice = verseTwoAlign {
          \global
          \keepWithTag #'usePartials' \verseTwoAlign
        }
        \new Lyrics \lyricsto "verseOneAlign" {
          \once \override LyricText.self-alignment-X = #CENTER
          \verseOne
        }
        \new Lyrics \lyricsto "verseTwoAlign" {
          \once \override LyricText.self-alignment-X = #CENTER
          \verseTwo
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
      ragged-last = ##f
    }
  }
  \pageBreak
  \markup {	
    \huge \bold "Chorus:"
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
    \layout {}
  }
}
