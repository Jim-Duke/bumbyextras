\version "2.19.49"

\include "Words-and-music.ly"

SlideStaffStaffSpacing = #20

\include "../../../LilypondTemplates/standard-elements.ly"

\book {
  \paper {
    #(set-paper-size "arch alandscape" )

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
        \SlideScripture
      }
    }
    scoreTitleMarkup = ##f
    #(layout-set-staff-size 44)
  }
  \pageBreak
  \score {
    <<
      \override Score.BarNumber.break-visibility = ##(#f #f #f)
      \context Staff = upper <<
        \partCombine
          {
            \global
            \keepWithTag #'(usePartials verseOneSlideRhythms) \SopranoVerseMusic
          }
          {
            \global
            \keepWithTag #'(usePartials verseOneSlideRhythms) \AltoVerseMusic
          }
        \context NullVoice = SlideMusicBreaks {
          \global
          \keepWithTag #'(usePartials verseOneSlideRhythms) \SlideMusicBreaks
        }
        \context NullVoice = align {
          \global
          \keepWithTag #'(usePartials verseOneSlideRhythms) \SopranoVerseMusic
        }
        \new Lyrics \lyricsto "align" {
          \huge \keepWithTag #'(verseOneSlideRhythms) \VerseOneLyrics
        }
      >>
      \context Staff = lower <<
        \clef bass
        \partCombine
          {
            \global
            \keepWithTag #'(usePartials verseOneSlideRhythms) \TenorVerseMusic
          }
          {
            \global
            \keepWithTag #'(usePartials verseOneSlideRhythms) \BassVerseMusic
          }
      >>
    >>
    \SlideLayout
  }
  \score {
    <<
      \override Score.BarNumber.break-visibility = ##(#f #f #f)
      \context Staff = upper <<
        \partCombine
          {
            \global
            \keepWithTag #'(usePartials verseTwoSlideRhythms) \SopranoVerseMusic
          }
          {
            \global
            \keepWithTag #'(usePartials verseTwoSlideRhythms) \AltoVerseMusic
          }
        \context NullVoice = SlideMusicBreaks {
          \global
          \keepWithTag #'(usePartials verseTwoSlideRhythms) \SlideMusicBreaks
        }
        \context NullVoice = align {
          \global
          \keepWithTag #'(usePartials verseTwoSlideRhythms) \SopranoVerseMusic
        }
        \new Lyrics \lyricsto "align" {
          \huge \keepWithTag #'(verseTwoSlideRhythms) \VerseTwoLyrics
        }
      >>
      \context Staff = lower <<
        \clef bass
        \partCombine
          {
            \global
            \keepWithTag #'(usePartials verseTwoSlideRhythms) \TenorVerseMusic
          }
          {
            \global
            \keepWithTag #'(usePartials verseTwoSlideRhythms) \BassVerseMusic
          }
      >>
    >>
    \SlideLayout
  }
%  \score {
%    <<
%      \override Score.BarNumber.break-visibility = ##(#f #f #f)
%      \context Staff = upper <<
%        \partCombine
%          {
%            \global
%            \keepWithTag #'(usePartials verseTwoRhythms) \sopranoVerse
%          }
%          {
%            \global
%            \keepWithTag #'(usePartials verseTwoRhythms) \altoVerse
%          }
%        \context NullVoice = slideMusicBreaks {
%          \global
%          \slideMusicBreaks
%        }
%        \context NullVoice = align {
%          \global
%          \keepWithTag #'(usePartials verseTwoRhythms) \sopranoVerse
%        }
%        \new Lyrics \lyricsto "align" {
%          \huge \verseTwo
%        }
%      >>
%      \context Staff = lower <<
%        \clef bass
%        \partCombine
%          {
%            \global
%            \keepWithTag #'(usePartials verseTwoRhythms) \tenorVerse
%          }
%          {
%            \global
%            \keepWithTag #'(usePartials verseTwoRhythms) \bassVerse
%          }
%      >>
%    >>
%    \SlideLayout
%  }
%  \pageBreak
%  \score {
%    <<
%      \override Score.BarNumber.break-visibility = ##(#f #f #f)
%      \context Staff = upper <<
%        \partCombine
%          {
%            \global
%            \keepWithTag #'usePartials \sopranoChorus
%          }
%          {
%            \global
%            \keepWithTag #'usePartials \altoChorus
%          }
%        \context NullVoice = slideChorusBreaks {
%          \global
%          \slideChorusBreaks
%        }
%        \context NullVoice = align {
%          \global
%          \keepWithTag #'usePartials \sopranoChorus
%        }
%        \new Lyrics \lyricsto "align" {
%          \huge \chorusLyrics
%        }
%      >>
%      \context Staff = lower <<
%        \clef bass
%        \partCombine
%          {
%            \global
%            \keepWithTag #'usePartials \tenorChorus
%          }
%          {
%            \global
%            \keepWithTag #'usePartials \bassChorus
%          }
%      >>
%    >>
%    \SlideLayout
%  }
}
