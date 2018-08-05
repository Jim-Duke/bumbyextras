\version "2.19.49"

\include "Words-and-music.ly"

#(set-global-staff-size 44)

%
% Common layout controls.
%
% This allows us to either use the defaults or override them.  We try to use
% the same local variable names in the body in order to maintain as common a
% template as possible.
%

%
% Lyric controls
%
lyricMinimumDistance = \defaultSlideMusicLyricMinimumDistance
lyricFontSize = \defaultSlideMusicLyricFontSize
hyphenThickness = \defaultSlideMusicHyphenThickness
hyphenLength = \defaultSlideMusicHyphenLength

%
% Staff controls
%
staffLineThickness = \defaultSlideMusicStaffLineThickness
noteHeadFontSize = \defaultSlideMusicNoteHeadFontSize

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
      \new Staff <<
        \new Voice = "sopranos" {
          \global
          \keepWithTag #'(usePartials firstTime) \sopranoVerse
        }
        \new NullVoice = "breaks" {
          \global
          \keepWithTag #'usePartials' \slideMusicFirstBreaks
        }
      >>
      \new Lyrics \lyricsto "sopranos" {
        \sopranoLyrics
      }
    >>
      
    \layout {
      ragged-last = ##f
      
      \context {
        \Lyrics
        \override LyricSpace.minimum-distance = \lyricMinimumDistance
        \override LyricText.font-size = \lyricFontSize
        \override LyricText.self-alignment-X = #CENTER
        \override LyricHyphen.thickness = \hyphenThickness
        \override LyricHyphen.length = \hyphenLength
      }
      \context {
        \Staff
        \override StaffSymbol.thickness = \staffLineThickness
        \override NoteHead.font-size = \noteHeadFontSize
      }
    }
  }
  \score {
    <<
      \override Score.BarNumber.break-visibility = ##(#f #f #f)
      \new Staff <<
        \new Voice = "sopranos" {
          \global
          \keepWithTag #'(usePartials secondTime) \sopranoVerse
        }
        \new NullVoice = "breaks" {
          \global
          \keepWithTag #'usePartials' \slideMusicSecondBreaks
        }
      >>
      \new Lyrics \lyricsto "sopranos" {
        \sopranoLyrics
      }
      \new Staff {
        \new Voice = "basses" {
          \clef bass
          \global
          \keepWithTag #'usePartials' \bassVerse
        }
      }
      \new Lyrics \lyricsto "basses" {
        \bassLyrics
      }
    >>
      
    \layout {
      ragged-last = ##f
      
      \context {
        \Lyrics
        \override LyricSpace.minimum-distance = \lyricMinimumDistance
        \override LyricText.font-size = \lyricFontSize
        \override LyricText.self-alignment-X = #CENTER
        \override LyricHyphen.thickness = \hyphenThickness
        \override LyricHyphen.length = \hyphenLength
      }
      \context {
        \Staff
        \override StaffSymbol.thickness = \staffLineThickness
        \override NoteHead.font-size = \noteHeadFontSize
      }
    }
  }
  \score {
    <<
      \override Score.BarNumber.break-visibility = ##(#f #f #f)
      \new Staff <<
        \new Voice = "sopranos" {
          \global
          \keepWithTag #'(usePartials thirdTime) \sopranoVerse
        }
        \new NullVoice = "breaks" {
          \global
          \keepWithTag #'usePartials' \slideMusicThirdBreaks
        }
      >>
      \new Lyrics \lyricsto "sopranos" {
        \sopranoLyrics
      }
      \new Staff {
        \new Voice = "altos" {
          \global
          \keepWithTag #'usePartials \altoVerse
        }
      }
      \new Lyrics \lyricsto "altos" {
        \altoLyrics
      }
      \new Staff {
        \new Voice = "basses" {
          \clef bass
          \global
          \keepWithTag #'usePartials' \bassVerse
        }
      }
      \new Lyrics \lyricsto "basses" {
        \bassLyrics
      }
    >>
      
    \layout {
      ragged-last = ##f
      
      \context {
        \Lyrics
        \override LyricSpace.minimum-distance = \lyricMinimumDistance
        \override LyricText.font-size = \lyricFontSize
        \override LyricText.self-alignment-X = #CENTER
        \override LyricHyphen.thickness = \hyphenThickness
        \override LyricHyphen.length = \hyphenLength
      }
      \context {
        \Staff
        \override StaffSymbol.thickness = \staffLineThickness
        \override NoteHead.font-size = \noteHeadFontSize
      }
    }
  }
  \score {
    <<
      \override Score.BarNumber.break-visibility = ##(#f #f #f)
      \new Staff <<
        \new Voice = "sopranos" {
          \global
          \keepWithTag #'(usePartials fourthTime) \sopranoVerse
        }
        \new NullVoice = "breaks" {
          \global
          \keepWithTag #'usePartials' \slideMusicFourthBreaks
        }
      >>
      \new Lyrics \lyricsto "sopranos" {
        \sopranoLyrics
      }
      \new Staff {
        \new Voice = "altos" {
          \global
          \keepWithTag #'usePartials \altoVerse
        }
      }
      \new Lyrics \lyricsto "altos" {
        \altoLyrics
      }
      \new Staff {
        \new Voice = "tenors" {
          \clef bass
          \global
          \keepWithTag #'usePartials' \tenorVerse
        }
      }
      \new Lyrics \lyricsto "tenors" {
        \tenorLyrics
      }
      \new Staff {
        \new Voice = "basses" {
          \clef bass
          \global
          \keepWithTag #'usePartials' \bassVerse
        }
      }
      \new Lyrics \lyricsto "basses" {
        \bassLyrics
      }
    >>
      
    \layout {
      ragged-last = ##f
      
      \context {
        \Lyrics
        \override LyricSpace.minimum-distance = \lyricMinimumDistance
        \override LyricText.font-size = \lyricFontSize
        \override LyricText.self-alignment-X = #CENTER
        \override LyricHyphen.thickness = \hyphenThickness
        \override LyricHyphen.length = \hyphenLength
      }
      \context {
        \Staff
        \override StaffSymbol.thickness = \staffLineThickness
        \override NoteHead.font-size = \noteHeadFontSize
      }
    }
  }
}
