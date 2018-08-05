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
        \fontsize #-4
        \column {
          \line {
            "Hymn:"
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
      \context Staff = upper <<
        \context Voice = treble {
          \aikenPartCombine #'(2 . 20)
          {
            \global
            \keepWithTag #'usePartials' \sopranoVerse
          }
          {
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
          \keepWithTag #'usePartials' \sopranoVerse
        }
        \new Lyrics \lyricsto "align" {
          \huge \verseOne
        }
      >>
      \context Staff = lower <<
        \clef bass
        \context Voice = bass {
          \aikenPartCombine #'(2 . 20)
          {
            \global
            \keepWithTag #'usePartials' \tenorVerse
          }
          {
            \global
            \keepWithTag #'usePartials' \bassVerse
          }
        }
      >>
    >>
    \layout {
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
      \context Staff = upper <<
        \context Voice = treble {
          \aikenPartCombine #'(2 . 20)
          {
            \global
            \keepWithTag #'usePartials' \sopranoVerse
          }
          {
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
          \keepWithTag #'usePartials' \sopranoVerse
        }
        \new Lyrics \lyricsto "align" {
          \huge \verseTwo
        }
      >>
      \context Staff = lower <<
        \clef bass
        \context Voice = bass {
          \aikenPartCombine #'(2 . 20)
          {
            \global
            \keepWithTag #'usePartials' \tenorVerse
          }
          {
            \global
            \keepWithTag #'usePartials' \bassVerse
          }
        }
      >>
    >>
    \layout {
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
      \context Staff = upper <<
        \context Voice = treble {
          \aikenPartCombine #'(2 . 20)
          {
            \global
            \keepWithTag #'usePartials' \sopranoVerse
          }
          {
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
          \huge \verseThree
        }
      >>
      \context Staff = lower <<
        \clef bass
        \context Voice = bass {
          \aikenPartCombine #'(2 . 20)
          {
            \global
            \keepWithTag #'usePartials' \tenorVerse
          }
          {
            \global
            \keepWithTag #'usePartials' \bassVerse
          }
        }
      >>
    >>
    \layout {
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
      \context Staff = upper <<
        \context Voice = treble {
          \aikenPartCombine #'(2 . 20)
          {
            \global
            \keepWithTag #'usePartials' \sopranoChorus
          }
          {
            \global
            \keepWithTag #'usePartials' \altoChorus
          }
        }
        \context NullVoice = breaks {
          \global
          \keepWithTag #'usePartials' \slideMusicRefrainBreaks
        }
        \context NullVoice = align {
          \global
          \keepWithTag #'usePartials' \alignChorus
        }
        \new Lyrics \lyricsto "align" {
          \huge \chorusLyrics
        }
      >>
      \context Staff = lower <<
        \clef bass
        \context Voice = bass {
          \aikenPartCombine #'(2 . 20)
          {
            \global
            \keepWithTag #'usePartials' \tenorChorus
          }
          {
            \global
            \keepWithTag #'usePartials' \bassChorus
          }
        }
      >>
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
      \context Staff = upper <<
        \context Voice = treble {
          \aikenPartCombine #'(2 . 20)
          {
            \global
            \keepWithTag #'usePartials' \sopranoCoda
          }
          {
            \global
            \keepWithTag #'usePartials' \altoCoda
          }
        }
        \context NullVoice = align {
          \global
          \keepWithTag #'usePartials' \sopranoCoda
        }
        \new Lyrics \lyricsto "align" {
          \codaLyrics
        }
      >>
      \context Staff = lower <<
        \clef bass
        \context Voice = bass {
          \aikenPartCombine #'(2 . 20)
          {
            \global
            \keepWithTag #'usePartials' \tenorCoda
          }
          {
            \global
            \keepWithTag #'usePartials' \bassCoda
          }
        }
      >>
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
