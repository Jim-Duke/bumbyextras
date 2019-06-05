\version "2.19.49"
#(use-modules (guile-user))

#(ly:set-option 'relative-includes #t)
\include "../../../../LilypondTemplates/functions.ly"
\include "../../../../LilypondTemplates/hymns.ly"
\include "../hymn_settings.ly"

global = {
  \key e \major
  \time 4/4
  \tempo 4 = 65
}

MajorKey = ##t

%%
%% Hymn Metadata Variables
%%

Title = "Down in the River to Pray"
SongNumber = \down_in_the_river_to_pray_bumby_number
RightFirstPage = \down_in_the_river_to_pray_bumby_number_rhs
FirstPage = #(if RightFirstPage 1 2)

LeaderHints = \markup {
  \fontsize #-4
  \normal-text { "E - 4 - SOL" }
}

Scripture = "And when she and the members of her house were baptized. -- Acts 16:13-15"

ShowScriptureOnSheetMusic = ##t

\header {
  title = \Title
  tune = "DOWN IN THE RIVER"
  meter = "10.9.8.6.12.13"
  composer = "Traditional"
  poet = "Traditional"
  songNumber = \SongNumber
  lhs = #(if RightFirstPage LeaderHints SongNumber)
  rhs = #(if RightFirstPage SongNumber LeaderHints)
  copyright = "Arrangement Copyright 2004 by Taylor Publications.  All Rights Reserved."
  license = "Used by permission"
  tagline = ##f
}

SopranoPartOneMusic = \relative c' {
  \tag #'usePartials { \partial 8 }
  b8 |
  b8 cis8 e8 e16 e16 e16 e16 e8 e4 |
  fis16 fis16 fis16 gis16 fis8 e8 gis8 fis8 e8
  
  cis8 |
  b8 gis8 b8 r16 cis16 e8 cis8 e8 gis8 |
  fis4 e16 e8 cis16 b2 \bar "|."
}

SopranoPartTwoMusic = \relative c' {
  fis4 fis8 e8 gis8 b8 gis16( fis16 e8) |
  \tag #'sheetMusic {
    gis16~ gis16( fis8) e8~ e16~ e16 e16 e16~ e8 cis16( b8) r16 |
  }
  \tag #'(verseOne verseTwo verseThree verseFive) {
    gis'8 fis8 e4 e16 e8. cis16( b8) r16 |
  }
  \tag #'verseFour {
    gis'16 gis16( fis8) e8 e16 e16 e16 e16 e8 cis16( b8) r16 |
  }
  \tag #'sheetMusic { fis'16~ fis8. }
  \tag #'(verseOne verseThree verseFive) { fis4 }
  \tag #'(verseTwo verseFour) { fis16 fis8. }
  fis8 e8 gis8 b8 gis16( fis16 e8) |
  gis8 fis16 fis16 e16 e16 cis8 b4. \bar "|."
}

AltoPartOneMusic = \relative c' {
  \tag #'usePartials { \partial 8 }
  gis8 |
  gis8 a8 b8 b16 b16 b16 b16 b8 b4 |
  dis16 dis16 dis16 e16 dis8 cis8 e8 cis8 b8
  
  gis8 |
  b8 gis8 b8 r16 gis16 b8 gis8 b8 cis8 |
  dis4 b16 b8 a16 gis2 \bar "|."
}

AltoPartTwoMusic = \relative c' {
  dis4 dis8 cis8 dis8 gis8 b,4 |
  \tag #'sheetMusic {
    b16~ b16( cis8) cis8~ cis16~ cis16 cis16 cis16~ cis8 a16( gis8) r16 |
  }
  \tag #'(verseOne verseTwo verseThree verseFive) {
    b8 cis8 cis4 cis16 cis8. a16( gis8) r16 |
  }
  \tag #'verseFour {
    b16 b16( cis8) cis8 cis16 cis16 cis16 cis16 cis8 a16( gis8) r16 |
  }
  
  \tag #'sheetMusic { dis'16~ dis8. }
  \tag #'(verseOne verseThree verseFive) { dis4 }
  \tag #'(verseTwo verseFour) { dis16 dis8. }
  dis8 cis8 e8 gis8 e4 |
  e8 cis16 cis16 cis16 cis16 a8 gis4. \bar "|."
}

TenorPartOneMusic = \relative c' {
  \tag #'usePartials { \partial 8 }
  gis8 |
  gis8 a8 gis8 gis16 gis16 gis16 gis16 gis8 gis4 |
  b16 b16 b16 b16 b8 gis8 b8 a8 gis8
  
  gis8 |
  gis8 e8 gis8 r16 gis16 gis8 gis8 gis8 b8 |
  b4 a16 a8 a16 gis2 \bar "|."
}

TenorPartTwoMusic = \relative c' {
  b4 b8 gis8 b8 e8 b16( a16 gis8) |
  \tag #'sheetMusic {
    b16~ b16( gis8) a8~ a16~ a16 a16 a16~ a8 a16( gis8) r16 |
  }
  \tag #'(verseOne verseTwo verseThree verseFive) {
    b8 gis8 a4 a16 a8. a16( gis8) r16 |
  }
  \tag #'verseFour {
    b16 b16( gis8) a8 a16 a16 a16 a16 a8 a16( gis8) r16 |
  }
  \tag #'sheetMusic { b16~ b8. }
  \tag #'(verseOne verseThree verseFive) { b4 }
  \tag #'(verseTwo verseFour) { b16 b8. }
  b8 gis8 b8 e8 b16( a16 gis8) |
  b8 a16 a16 a16 a16 a8 gis4. \bar "|."
}

BassPartOneMusic = \relative c {
  \tag #'usePartials { \partial 8 }
  b8 |
  b8 b8 e8 e16 e16 e16 e16 e8 e4 |
  b16 b16 b16 b16 b8 b8 e8 e8 e8
  
  e8 |
  e8 b8 e8 r16 e16 e8 e8 e8 e8 |
  b4 b16 b8 b16 e2 \bar "|."
}

BassPartTwoMusic = \relative c {
  b4 b8 b8 e8 e8 e4 |
  \tag #'sheetMusic {
    e16~ e16~ e8 a,8~ a16~ a16 a16 a16~ a8 e'8. r16 |
  }
  \tag #'(verseOne verseTwo verseThree verseFive) {
    e8 e8 a,4 a16 a8. e'8. r16 |
  }
  \tag #'verseFour {
    e16 e8. a,8 a16 a16 a16 a16 a8 e'8. r16 |
  }
  \tag #'sheetMusic { b16~ b8. }
  \tag #'(verseOne verseThree verseFive) { b4 }
  \tag #'(verseTwo verseFour) { b16 b8. }
  b8 b8 e8 e8 e4 |
  a,8 a16 a16 a16 a16 a8 e'4. \bar "|."
}

SheetMusicPartOneBreaks = {
  \tag #'usePartials { \partial 8 }
  s8 | \noBreak
  s1 | \noBreak
  s2. s8 \bar "" \break
  
  s8 | \noBreak
  s1 | \noBreak
  s1 \bar "|." \break
}

SheetMusicPartTwoBreaks = {
  s1 | \noBreak
  s1 | \break
  
  s1 | \noBreak
  s1 | \pageBreak
}

AlignPartOneMusic = \SopranoPartOneMusic
AlignPartTwoMusic = \SopranoPartTwoMusic

SlidesPartOneBreaks = \relative c {
  \tag #'usePartials { \partial 8 }
  \setSystemOffset \defaultTopSystemOffset
  s8 | \noBreak
  s1 | \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s2. s8 \bar "" \pageBreak
  
  \setSystemOffset \defaultTopSystemOffset
  s8 | \noBreak
  s2. \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s4 | \noBreak
  s1 \bar "|." \pageBreak
}

SlidesPartTwoBreaks = {
  \setSystemOffset \defaultTopSystemOffset
  s1 | \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s1 | \pageBreak
  
  \setSystemOffset \defaultTopSystemOffset
  s1 | \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s1 | \pageBreak
}

SlidesPartTwoVerseFourBreaks = {
  \setSystemOffset \defaultTopSystemOffset
  s1 | \noBreak
  s4 \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s2 s4 | \pageBreak
  
  \setSystemOffset \defaultTopSystemOffset
  s1 | \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s1 | \pageBreak
}

VerseOnePartOne = \lyricmode {
  \set stanza = "1. "
  As I went down in the riv -- er to pray,
  stud -- y -- ing a -- bout that good ol' way,
  and who shall wear the star -- y crown,
  good Lord, show me the way.
}

VerseOnePartTwo = \lyricmode {
  O sis -- ters, let's go down,
  let's go down,
  come on down.
  O sis -- ters, let's go down,
  down in the riv -- er to pray.
}

VerseTwoPartOne = \lyricmode {
  \set stanza = "2. "
  As I went down in the riv -- er to pray,
  stud -- y -- ing a -- bout that good ol' way,
  and who shall wear the robe and crown,
  good Lord, show me the way.
}

VerseTwoPartTwo = \lyricmode {
  O bro -- thers, let's go down,
  let's go down,
  come on down.
  Come on bro -- thers, let's go down,
  down in the riv -- er to pray.
}

VerseThreePartOne = \lyricmode {
  \set stanza = "3. "
  As I went down in the riv -- er to pray,
  stud -- y -- ing a -- bout that good ol' way,
  and who shall wear the star -- y crown,
  good Lord, show me the way.
}

VerseThreePartTwo = \lyricmode {
  O fa -- thers, let's go down,
  let's go down,
  come on down.
  O fa -- thers, let's go down,
  down in the riv -- er to pray.
}

VerseFourPartOne = \lyricmode {
  \set stanza = "4. "
  As I went down in the riv -- er to pray,
  stud -- y -- ing a -- bout that good ol' way,
  and who shall wear the robe and crown,
  good Lord, show me the way.
}

VerseFourPartTwo = \lyricmode {
  O mo -- thers, let's go down,
  come on down,
  don't you want to go down.
  Come on mo -- thers, let's go down,
  down in the riv -- er to pray.
}

VerseFivePartOne = \lyricmode {
  \set stanza = "5. "
  As I went down in the riv -- er to pray,
  stud -- y -- ing a -- bout that good ol' way,
  and who shall wear the star -- y crown,
  good Lord, show me the way.
}

VerseFivePartTwo = \lyricmode {
  O sin -- ners, let's go down,
  let's go down,
  come on down.
  O sin -- ners, let's go down,
  down in the riv -- er to pray.
}
