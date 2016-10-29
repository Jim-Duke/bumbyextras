\version "2.18.2"

\include "Words-and-music.ly"

#(set-global-staff-size 36)
% Standard full page format.
\book {
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
        \fill-line {
          \abs-fontsize #48
          \bold
          \fromproperty #'header:title
        }
        \fromproperty #'header:scripture
      }
    }
    scoreTitleMarkup = \markup {
      \override #'(baseline-skip . 6.0 )
      \column {
        \fill-line {
          \null
          {
            \abs-fontsize #32
            \fromproperty #'header:title
          }
          {
            \abs-fontsize #32
            \fromproperty #'header:songNumber
          }
        }
        \vspace #1
      }
    }
  }
  \pageBreak

  \score {
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
        \context NullVoice = slideMusicBreaks {
          \global
          \keepWithTag #'usePartials' \slideMusicBreaks
        }
        \new Lyrics \lyricsto "sopranos" {
          \once \override LyricText.self-alignment-X = #CENTER
          \huge \verseOne
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
    \layout {}
  }
  \score {
    \context ChoirStaff <<
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
        \context NullVoice = slideMusicBreaks {
          \global
          \keepWithTag #'usePartials' \slideMusicBreaks
        }
        \new Lyrics \lyricsto "sopranos" {
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
    \layout {}
  }
  \score {
    \context ChoirStaff <<
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
        \context NullVoice = slideMusicBreaks {
          \global
          \keepWithTag #'usePartials' \slideMusicBreaks
        }
        \context NullVoice = align {
          \global
          \keepWithTag #'usePartials' \thirdVerseAlign
        }
        \new Lyrics \lyricsto "align" {
          \once \override LyricText.self-alignment-X = #CENTER
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
    \layout {}
  }
  \score {
    \context ChoirStaff <<
      \context Staff = upper <<
        \context Voice = sopranos {
          \voiceOne {
            \global
            \keepWithTag #'usePartials' \sopranoChorus
          }
        }
        \context Voice = altos {
          \voiceTwo {
            \global
            \keepWithTag #'usePartials' \altoChorus
          }
        }
        \context NullVoice = breaks {
          \global
          \keepWithTag #'usePartials' \slideMusicRefrainBreaks
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
            \keepWithTag #'usePartials' \tenorChorus
          }
        }
        \context Voice = basses {
          \voiceTwo {
            \global
            \keepWithTag #'usePartials' \bassChorus
          }
        }
      >>
    >>
    \layout {
      ragged-last = ##f
    }
    \header {
      title = \markup \bold { \fill-line { "Chorus:" "" } }
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
            \keepWithTag #'usePartials' \sopranoCoda
          }
        }
        \context Voice = altos {
          \voiceTwo {
            \global
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
            \keepWithTag #'usePartials' \tenorCoda
          }
        }
        \context Voice = basses {
          \voiceTwo {
            \global
            \keepWithTag #'usePartials' \bassCoda
          }
        }
      >>
    >>
    \layout {
      ragged-last = ##f
    }
    \header {
      title = \markup \bold { \fill-line { "CODA:" "" } }
    }
  }
}
