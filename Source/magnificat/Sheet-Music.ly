\version "2.18.2"

\include "Words-and-music.ly"

%
% Adjust the staff size to adjust the basic font size of the words and music.
%
#(set-global-staff-size 20)

% Standard full page format.
\book {
  \paper {
    #(set-paper-size "letter")
    
    %
    % Turn on to see spacing details while you tweek the layout
    %
    % annotate-spacing = ##t
    
    %
    % Various variables that can be used to tweak vertical spacing
    %
    system-system-spacing #'basic-distance = #14
    system-system-spacing #'minimum-distance = #14
    score-markup-spacing #'basic-distance = #0
    markup-system-spacing #'basic-distance = #0
    
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
          \vspace #1
          \fill-line {
            \override #'(line-width . 20) ""
            \override #'(line-width . 80) \center-column {
              \abs-fontsize #10
              \italic \wordwrap-field #'header:scripture
            }
            \override #'(line-width . 20) ""
          }
        }
        \vspace #1
      }
    }
  }

  \score {
    \new ChoirStaff <<
      \override Score.BarNumber.break-visibility = ##(#f #f #f)
      %\override Score.BarNumber.break-visibility = ##(#t #t #t)
      %\set Score.barNumberVisibility = #all-bar-numbers-visible
      \new Staff \with { instrumentName = \markup { \fontsize #2 \circle { 1 } \hspace #1 } } <<
        \new Voice = "sopranos" {
          \global
          \keepWithTag #'(usePartials sheetMusic) \sopranoVerse
        }
        \new NullVoice = "breaks" {
          \global
          \keepWithTag #'usePartials \sheetMusicBreaks
        }
      >>
      \new Lyrics \lyricsto "sopranos" {
        \once \override LyricText.self-alignment-X = #CENTER
        \sopranoLyrics
      }
      \new Staff \with { instrumentName = \markup { \fontsize #2 \circle { 3 } \hspace #1 } } {
        \new Voice = "altos" {
          \global
          \keepWithTag #'usePartials \altoVerse
        }
      }
      \new Lyrics \lyricsto "altos" {
        \once \override LyricText.self-alignment-X = #CENTER
        \altoLyrics
      }
      \new Staff  \with { instrumentName = \markup { \fontsize #2 \circle { 4 } \hspace #1 } } {
        \new Voice = "tenors" {
          \clef bass
          \global
          \keepWithTag #'usePartials \tenorVerse
        }
      }
      \new Lyrics \lyricsto "tenors" {
        \once \override LyricText.self-alignment-X = #CENTER
        \tenorLyrics
      }
      \new Staff  \with { instrumentName = \markup { \fontsize #2 \circle { 2 } \hspace #1 } } {
        \new Voice = "basses" {
          \clef bass
          \global
          \keepWithTag #'usePartials \bassVerse
        }
      }
      \new Lyrics \lyricsto "basses" {
        \once \override LyricText.self-alignment-X = #CENTER
        \bassLyrics
      }
    >>
      
    \layout {
      ragged-last = ##f
    }
  }
  \markup \italic {
    \column {
      \vspace #3
      "Sequence:"
      "1st time through - Soprano only"
      "2nd time through - add Bass"
      "3rd time through - add Alto"
      "4th time through - add Tenor"
    }
  }
  %
  % Extra additional score containing all the music so we can have a single MIDI file
  %
  \score {
    \new ChoirStaff <<
      \new Staff {
        \new Voice = "sopranos" {
          \global
          \keepWithTag #'(usePartials sheetMusic) \sopranoVerse
          \keepWithTag #'sheetMusic \sopranoVerse
          \keepWithTag #'sheetMusic \sopranoVerse
          \keepWithTag #'sheetMusic \sopranoVerse
        }
      }
      \new Staff {
        \new Voice = "altos" {
          \global
          \keepWithTag #'usePartials \silentVerse
          \removeWithTag #'usePartials \silentVerse
          \removeWithTag #'usePartials \altoVerse
          \removeWithTag #'usePartials \altoVerse
        }
      }
      \new Staff {
        \new Voice = "tenors" {
          \clef bass
          \global
          \keepWithTag #'usePartials \silentVerse
          \removeWithTag #'usePartials \silentVerse
          \removeWithTag #'usePartials \silentVerse
          \removeWithTag #'usePartials \tenorVerse
        }
      }
      \new Staff {
        \new Voice = "basses" {
          \clef bass
          \global
          \keepWithTag #'usePartials \silentVerse
          \removeWithTag #'usePartials \bassVerse
          \removeWithTag #'usePartials \bassVerse
          \removeWithTag #'usePartials \bassVerse
        }
      }
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
      \tempo 4 = 135
    }
  }
}