\version "2.19.49"

\include "Words-and-music.ly"

#(set-global-staff-size 18)

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
lyricMinimumDistance = \defaultSheetMusicLyricMinimumDistance
lyricFontSize = \defaultSheetMusicLyricFontSize
hyphenThickness = \defaultSheetMusicHyphenThickness
hyphenLength = \defaultSheetMusicHyphenLength

%
% Staff controls
%
staffLineThickness = \defaultSheetMusicStaffLineThickness
noteHeadFontSize = \defaultSheetMusicNoteHeadFontSize

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
    left-margin = \defaultSheetMusicLeftMargin
    right-margin = \defaultSheetMusicRightMargin
    top-margin = \defaultSheetMusicTopMargin
    bottom-margin = \defaultSheetMusicBottomMargin
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
          \fill-line {
            \override #'(line-width . 20) ""
            \override #'(line-width . 80) \center-column {
              \abs-fontsize #10
              \italic \wordwrap-field #'header:scripture
            }
            \override #'(line-width . 20) ""
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
      \context Staff = upper <<
        \context Voice = "treble" {
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
        \context NullVoice = sheetMusicBreaks {
          \global
          \sheetMusicBreaks
        }
        \context NullVoice = "alignMain" {
          \global
          \keepWithTag #'usePartials' \sopranoVerse
        }
        \context NullVoice = "alignThird" {
          \global
          \keepWithTag #'usePartials' \thirdVerseAlign
        }
        \new Lyrics \lyricsto "alignMain" {
          \verseOne
        }
        \new Lyrics \lyricsto "alignMain" {
          \verseTwo
        }
        \new Lyrics \lyricsto "alignThird" {
          \verseThree
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
        \override Stem.length-fraction = #(magstep 2.0)
      }

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
          \keepWithTag #'usePartials' \sheetMusicRefrainBreaks
        }
        \context NullVoice = align {
          \global
          \keepWithTag #'usePartials' \alignChorus
        }
        \new Lyrics \lyricsto "align" {
          \chorusLyrics
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
        \override Stem.length-fraction = #(magstep 2.0)
      }
    }
  }
  \markup {
    \column {
      \vspace #1
      \huge \bold "CODA: (sung after the chorus on the final verse)"
    }
  }
  \score {
    \context ChoirStaff <<
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
        \override Stem.length-fraction = #(magstep 2.0)
        \override VerticalAxisGroup.staff-staff-spacing = #100
      }

      ragged-last = ##f
    }
  }
}
