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
        \fill-line {
          \column {
            \fromproperty #'header:meter
            \fromproperty #'header:poet
          }
          \fromproperty #'header:copyright
          \column {
            \fromproperty #'header:tune
            \fromproperty #'header:composer
%            \concat { "arr. " \fromproperty #'header:arranger }
          }
        }
        {
          \vspace #0.5
          \fontsize #-2
          \fromproperty #'header:license
        }
%        {
%          \fontsize #-2
%          "Engraved using Lilypond (www.lilypond.org) for www.acapellaworship.org"
%        }
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
            \sopranoVerse
          }
        }
        \context Voice = altos {
          \voiceTwo {
            \global
            \altoVerse
          }
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
            \sopranoVerse
          }
        }
        \context Voice = altos {
          \voiceTwo {
            \global
            \altoVerse
          }
        }
        \new Lyrics \lyricsto "sopranos" {
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
            \sopranoVerse
          }
        }
        \context Voice = altos {
          \voiceTwo {
            \global
            \altoVerse
          }
        }
        \new Lyrics \lyricsto "sopranos" {
          \once \override LyricText.self-alignment-X = #CENTER
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
    \layout {}
  }
  \score {
    \context ChoirStaff <<
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
        \new Lyrics \lyricsto "sopranos" {
          \once \override LyricText.self-alignment-X = #CENTER
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
    \layout {}
  }
%
% Example of a Chorus slide
%
%  \pageBreak
%  \score {
%    \context ChoirStaff <<
%      \context Staff = upper <<
%        \context Voice = sopranos {
%          \voiceOne {
%            \global
%            \partial 4
%            \sopranoChorus
%          }
%        }
%        \context Voice = altos {
%          \voiceTwo {
%            \global
%            \partial 4
%            \altoChorus
%          }
%        }
%        \context Lyrics { \huge \chorus }
%      >>
%      \context Staff = lower <<
%        \clef bass
%        \context Voice = tenors {
%          \voiceOne {
%            \global
%            \partial 4
%            \tenorChorus
%          }
%        }
%        \context Voice = basses {
%          \voiceTwo {
%            \global
%            \partial 4
%            \bassChorus
%          }
%        }
%      >>
%    >>
%    \layout {}
%    \header {
%      title = \markup \bold { \fill-line { "Chorus:" "" } }
%    }
%  }
}
