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
      \column {
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
        \vspace #1
        \fill-line {
          \abs-fontsize #20
          \italic
          "Abide with us, for it is toward evening, and the day is far spent. (Luke 24:29)"
        }
        \vspace #2
        \fill-line {
          \abs-fontsize #20
          \italic
          "\"O Death, where is your sting?"
        }
        \fill-line {
          \abs-fontsize #20
          \italic
          "O Hades, where is your victory?\""
        }
        \vspace #1
        \fill-line {
          \abs-fontsize #20
          \italic
          "The sting of death is sin, and the strength of sin is the law."
        }
        \fill-line {
          \abs-fontsize #20
          \italic
          "But thanks be to God, who gives us the victory through our"
        }
        \fill-line {
          \abs-fontsize #20
          \italic
          "Lord Jesus Christ.  (1 Cor. 15:55-57)"
        }
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
        \context Lyrics { \huge \verseOne }
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
        \context Lyrics { \huge \verseTwo }
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
        \context Lyrics { \huge \verseThree }
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
        \context Lyrics { \huge \verseFour }
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
        \context Lyrics { \huge \verseFive }
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
