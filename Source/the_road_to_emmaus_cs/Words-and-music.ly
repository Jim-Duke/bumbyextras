\version "2.19.49"
#(use-modules (guile-user))

#(ly:set-option 'relative-includes #t)
\include "../../../LilypondTemplates/functions.ly"
\include "../../../LilypondTemplates/hymns.ly"
\include "../hymn_settings.ly"

global = {
  \key e \major
  \time 4/4
  \tempo 4 = 105
}

MajorKey = ##t

%%
%% Hymn Metadata Variables
%%

Title = "The Road to Emmaus"
SongNumber = \the_road_to_emmaus_cs_number
RightFirstPage = \the_road_to_emmaus_cs_number_rhs
FirstPage = #(if RightFirstPage 1 2)

LeaderHints = \markup {
  \fontsize #-4
  \normal-text { "E - 4 - MI" }
}

Scripture = "Now behold, two of them were traveling that same day to a village called Emmaus... -- Luke 24:13"

ShowScriptureOnSheetMusic = ##t

\header {
  title = \Title
  tune = "EMMAUS"
  meter = "11.11.11.11.11.11.11.11R"
  composer = "Manly Thweat"
  poet = "Manly Thweat"
  songNumber = \SongNumber
  lhs = #(if RightFirstPage LeaderHints SongNumber)
  rhs = #(if RightFirstPage SongNumber LeaderHints)
  copyright = "Words and Music Copyright © 2018 Manly Thweat. All rights reserved."
  license = "Used by permission"
  tagline = ##f
}

SopranoVerseMusic = \relative c'' {
  r8 gis8 b8 gis8 b4 gis8 gis8 |
  a4 gis8 gis8 fis4 gis4 |
  
  r8 e8 e8 e8 e8 e8 e8 gis8 |
  gis8
  \tag #'sheetMusic { fis8( e8) }
  \tag #'verseOne { fis8 e8 }
  \tag #'verseTwo { fis8( e8) }
  \tag #'verseThree { fis8( e8) }
  fis4.~ fis4 |
  
  r8 gis8 b8 gis8 b4 gis8 gis8 |
  a4 gis8 gis8 fis4 gis4 |
  
  r8 e8 e8 e8 e8 e8 e8 gis8 |
  fis8
  \tag #'sheetMusic { e8~ e8 }
  \tag #'verseOne { e8 e8 }
  \tag #'verseTwo { e8 e8 }
  \tag #'verseThree { e4 }
  e4.~ e4 |
  
  r8 gis8 b8 gis8 b4 gis8 gis8 |
  a4 gis8 gis8 fis4 gis4 |
  
  r8 e8 e8 e8 e8 e8 e8 gis8 |
  gis8
  \tag #'sheetMusic { fis8( e8) }
  \tag #'verseOne { fis8 e8 }
  \tag #'verseTwo { fis8( e8) }
  \tag #'verseThree { fis8 e8 }
  fis4.~ fis4 |
  
  r8 gis8 b8 gis8 b4 gis8 gis8 |
  a4 gis8 gis8 fis4 gis4 |
  
  r8 e8 e8 e8 e8 e8 e8 gis8 |
  fis8 e4 e4. \bar "|."
}

AltoVerseMusic = \relative c' {
}

TenorVerseMusic = \relative c' {
}

BassVerseMusic = \relative c' {
}

SheetMusicVerseBreaks = {
  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 | \break \noPageBreak
  
  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 | \break \noPageBreak
  
  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 | \break \noPageBreak
  
  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s2. \bar "|."
}

SlidesVerseBreaks = \relative c {
  \setSystemOffset \defaultTopSystemOffset
  \setSystemOffset \defaultBottomSystemOffset
}

VerseOne = \lyricmode {
  \set stanza = "1. "
}

VerseTwo = \lyricmode {
  \set stanza = "2. "
}

VerseThree = \lyricmode {
  \set stanza = "3. "
}
