\version "2.19.49"
#(use-modules (guile-user))

#(ly:set-option 'relative-includes #t)
\include "../../../LilypondTemplates/functions.ly"
\include "../../../LilypondTemplates/hymns.ly"
\include "../hymn_settings.ly"

global = {
  \key b \major
  \time 6/8
  \tempo 4. = 55
}

MajorKey = ##t

%%
%% Hymn Metadata Variables
%%

Title = "Highest Hope"
SongNumber = \highest_hope_bumby_number
RightFirstPage = \highest_hope_bumby_number_rhs
FirstPage = #(if RightFirstPage 1 2)

LeaderHints = \markup {
  \fontsize #-4
  \normal-text { "B - 2c - SOL" }
}

Scripture = "My soul, wait in silence for God only, For my hope is from Him.
 He only is my rock and my salvation, My stronghold; I shall not be shaken. -- Psalm 52:5-6"

ShowScriptureOnSheetMusic = ##t

\header {
  title = \Title
  tune = "HIGHEST HOPE"
  meter = "Irregular"
  composer = "Ken Young, Cole Young, and Kelci Bills"
  poet = "Ken Young, Cole Young, and Kelci Bills"
  songNumber = \SongNumber
  lhs = #(if RightFirstPage LeaderHints SongNumber)
  rhs = #(if RightFirstPage SongNumber LeaderHints)
  copyright = "Words and Music Copyright © 2008 Hallal Music.  All rights reserved."
  license = "Used by permission"
  tagline = ##f
}

IntroFiller = {
  s2. |
  s2. |
  s2. |
  s2. |
  s2. |
  s2. |
  s2. |
  s2.
}

SopranoVerseOneIntro = \relative c' {
  fis8 fis8 fis8 fis8 e8 dis16 fis16~ |
  fis4.~ fis4 r16 dis16 |
  fis8 fis8 fis16 fis16~ fis8 e8 dis8~ |
  dis8 e4~ e4. |

  g8 g8 a16 b16~ b8 a8 g8 |
  fis2. |

  dis8 dis8 dis16 dis16~ dis8 cis8 b16( cis16) |
  cis2. |
}

SopranoCommon = \relative c' {
  \tag #'(sheetMusic verseOneSheet verseTwoSheet) { fis8^\segno }
  \tag #'(verseOneSlide verseTwoSlide) { fis8 }
  fis8
  \tag #'sheetMusic { fis16~ fis16~ fis8 }
  \tag #'(verseOneSheet verseOneSlide) { fis8 fis8 }
  \tag #'(verseTwoSheet verseTwoSlide) { fis16 fis16~ fis8 }
  e8
  \tag #'sheetMusic { dis16( fis16)~ | fis4.~ fis4 }
  \tag #'(verseOneSheet verseOneSlide) { dis16 fis16~ | fis4.~ fis4 }
  \tag #'(verseTwoSheet verseTwoSlide) { dis16( fis16) | fis4.~ fis4 }
  
  \tag #'sheetMusic { r16 dis16 }
  \tag #'(verseOneSheet verseOneSlide) { r16 dis16 }
  \tag #'verseTwoSheet { r16 dis16 }
  \tag #'verseTwoSlide { r8 } |
  
  fis8 fis8 fis8
  \tag #'sheetMusic { fis8( gis8) }
  \tag #'(verseOneSheet verseOneSlide) { fis8( gis8) }
  \tag #'(verseTwoSheet verseTwoSlide) { fis8 gis8 }
  a8 |
  
  a8. gis16~ gis8 fis8. e16~ e8 |
  g8 g8 a16 b16~ b8 a8 g16( fis16) |
  fis4.~ fis8 r8
  \tag #'sheetMusic { fis16 }
  \tag #'(verseOneSheet verseOneSlide) { fis16 }
  \tag #'verseTwoSheet { fis16 }
  \tag #'verseTwoSlide { r16 }
  fis16 |
  gis8 gis8 gis8 gis8 ais16 b8. |
  ais4.( b4. |
  cis4.) \bar "||"
}

SopranoRefrain = \relative c' {
  \tag #'(sheetMusic verseOneSheet verseTwoSheet) {
    fis8^\markup { \italic "Refrain" }
  }
  \tag #'(verseOneSlide verseTwoSlide) {
    fis8
  }
  b8 ais8 |
  b4. b4. |
  cis4.~ cis8. r16 b8 |
  b4 fis8 fis8 b8 fis8 |
  gis4. fis8 b8 ais8 |
  b4. dis4( cis8) |
  cis4.~ cis8. r16 b8 |
  b4 b8 dis8 cis8 b8 |
  b4. dis8 cis8 b8 |
  b4. dis8 cis8 b16( cis16) |
  cis4. dis8 cis8 b8 |
  b4 fis8 dis'8 cis8 b16( cis16) |
  cis4. dis8 cis8 b8 |
  b4. dis8 cis8 b16( cis16) |
  cis4 fis,8 dis'8 cis8 b8 |
  b4.~ b4 b8 |
  b4. ais4. |
  \tag #'(sheetMusic verseOneSheet verseTwoSheet) {
    b2.^\markup { \italic "Fine" }
  }
  \tag #'(verseOneSlide verseTwoSlide) {
    b2.
  } |
}

SopranoCoda = \relative c' {
  fis8^\coda fis8 fis8 fis8 gis8 ais8 |
  ais4. fis4. |
  b8 b8 b8 b8( cis8) dis8~ |
  dis8 b4~ b4. |
  fis8 fis8 fis8 fis8 gis8 ais8 |
  ais4. fis4. |
  b8 b8 b8 b8 ais8 b16( cis16) |
  cis2.~ |
  \tag #'sheetMusic {
    cis4.^\markup { \italic "D.S. al Fine" }
  }
  \tag #'(verseOneSheet verseOneSlide) {
    cis4.
  }
  r4. \bar "||"
}

AltoVerseOneIntro = \relative c' {
  dis8 dis8 dis8 dis8 cis8 b16 cis16~ |
  cis4.~ cis4 r16 b16 |
  cis8 cis8 cis16 cis16~ cis8 cis8 cis8~ |
  cis8 b4~ b4. |

  e8 e8 fis16 g16~ g8 fis8 e8 |
  e4.( dis4.) |

  b8 b8 b16 b16~ b8 ais8 gis16( b16) |
  b4.( ais4.) |
}

AltoCommon = \relative c' {
  dis8 dis8
  \tag #'sheetMusic { dis16~ dis16~ dis8 }
  \tag #'(verseOneSheet verseOneSlide) { dis8 dis8 }
  \tag #'(verseTwoSheet verseTwoSlide) { dis16 dis16~ dis8 }
  cis8
  \tag #'sheetMusic { b16( cis16)~ | cis4.~ cis4 }
  \tag #'(verseOneSheet verseOneSlide) { b16 cis16~ | cis4.~ cis4 }
  \tag #'(verseTwoSheet verseTwoSlide) { b16( cis16) | cis4.~ cis4 }
  
  \tag #'sheetMusic { r16 b16 }
  \tag #'(verseOneSheet verseOneSlide) { r16 b16 }
  \tag #'verseTwoSheet { r16 b16 }
  \tag #'verseTwoSlide { r8 } |
  
  cis8 cis8 cis8
  \tag #'sheetMusic { cis8( cis8) }
  \tag #'(verseOneSheet verseOneSlide) { cis8( cis8) }
  \tag #'(verseTwoSheet verseTwoSlide) { cis8 cis8 }
  e8 |
  
  e8. e16~ e8 cis8. b16~ b8 |
  e8 e8 fis16 g16~ g8 fis8 e16( dis16) |
  dis4.~ dis8 r8
  \tag #'sheetMusic { dis16 }
  \tag #'(verseOneSheet verseOneSlide) { dis16 }
  \tag #'verseTwoSheet { dis16 }
  \tag #'verseTwoSlide { r16 }
  dis16 |
  f8 f8 f8 f8 fis16 gis8. |
  fis4.( gis4. |
  ais4.) \bar "||"
}

AltoRefrain = \relative c' {
  e8 e8 e8 |
  dis4. dis4. |
  fis4.~ fis8. r16 fis8 |
  fis4 dis8 dis8 fis8 dis8 |
  fis4. e8 e8 e8 |
  dis4. fis4. |
  fis4.~ fis8. r16 dis8 |
  fis4 fis8 fis8 fis8 fis8 |
  e4. gis8 fis8 e8 |
  dis4. fis8 fis8 fis8 |
  fis4. fis8 fis8 fis8 |
  fis4 dis8 fis8 fis8 fis8 |
  gis4. gis8 gis8 gis8 |
  dis4. dis8 dis8 dis8 |
  fis4 cis8 fis8 fis8 fis8 |
  fis4.~ fis4 fis8 |
  fis4. e4. |
  dis2. |
}

AltoCoda = \relative c' {
  cis8 cis8 cis8 cis8 cis8 fis8 |
  fis4. cis4. |
  fis8 fis8 fis8 fis4 fis8~ |
  fis8 dis4~ dis4. |
  cis8 cis8 cis8 cis8 cis8 fis8 |
  fis4. cis4. |
  e8 e8 e8 e8 e8 e16( fis16) |
  fis2.~ |
  fis4. r4. \bar "||"
}

TenorVerseOneIntro = \relative c' {
  b8 b8 b8 b8 b8 b16 ais16~ |
  ais4.~ ais4 r16 fis16 |
  a8 a8 a8 a8 a8 a8~ |
  a8 a4( gis4.) |
  
  b8 b8 b16 b16~ b8 b8 b8 |
  b4.( fis4.) |
  
  f8 f8 f16 f16~ f8 fis8 gis8 |
  gis4.( fis4.) |
}

TenorCommon = \relative c' {
  b8 b8
  \tag #'sheetMusic { b16~ b16~ b8 }
  \tag #'(verseOneSheet verseOneSlide) { b8 b8 }
  \tag #'(verseTwoSheet verseTwoSlide) { b16 b16~ b8 }
  b8
  \tag #'sheetMusic { b16( ais16)~ | ais4.~ ais4 }
  \tag #'(verseOneSheet verseOneSlide) { b16 ais16~ | ais4.~ ais4 }
  \tag #'(verseTwoSheet verseTwoSlide) { b16( ais16) | ais4.~ ais4 }
  
  \tag #'sheetMusic { r16 fis16 }
  \tag #'(verseOneSheet verseOneSlide) { r16 fis16 }
  \tag #'verseTwoSheet { r16 fis16 }
  \tag #'verseTwoSlide { r8 } |
  
  a8 a8 a8
  \tag #'sheetMusic { a8( b8) }
  \tag #'(verseOneSheet verseOneSlide) { a8( b8) }
  \tag #'(verseTwoSheet verseTwoSlide) { a8 b8 }
  cis8 |
  
  cis8. b16~ b8 a8. gis16~ gis8 |
  b8 b8 cis16 d16~ d8 cis8 b8 |
  b4.~ b8 r8
  \tag #'sheetMusic { b16 }
  \tag #'(verseOneSheet verseOneSlide) { b16 }
  \tag #'verseTwoSheet { b16 }
  \tag #'verseTwoSlide { r16 }
  b16 |
  b8 b8 b8 b8 b16 b8. |
  cis2.~ |
  cis4. \bar "||"
}

TenorRefrain = \relative c' {
  b8 b8 b8 |
  fis4. fis4. |
  ais4.~ ais8. r16 ais8 |
  gis4 gis8 gis8 gis8 gis8 |
  b4. b8 b8 b8 |
  fis4. b4( ais8) |
  ais4.~ ais8. r16 ais8 |
  gis4 gis8 gis8 gis8 gis8 |
  gis4. b8 b8 b8 |
  fis4. fis8 fis8 fis8 |
  ais4. ais8 ais8 ais8 |
  gis4 gis8 gis4 gis8 |
  b4. b8 b8 b8 |
  fis4. fis8 fis8 fis8 |
  ais4 ais8 ais8 ais8 ais8 |
  gis4.~ gis4 gis8 |
  gis4. fis4. |
  fis2. |
}

TenorCoda = \relative c' {
  ais8 ais8 ais8 ais8 b8 cis8 |
  cis4. ais4. |
  b8 b8 b8 b4 b8~ |
  b8 fis4~ fis4. |
  ais8 ais8 ais8 ais8 b8 cis8 |
  cis4. ais4. |
  gis8 gis8 gis8 gis8 gis8 gis16( ais16) |
  ais2.~ |
  ais4. r4. \bar "|."
}

BassVerseOneIntro = \relative c {
  b8 b8 b8 b8 b8 b16 <fis fis'>16~ |
  <fis fis'>4.~ <fis fis'>4 r16 <fis fis'>16 |
  e'8 e8 e8 e8 e8 e8~ |
  e8 b4~ b4. |
  
  e8 e8 e16 e16~ e8 e8 e8 |
  b2. |
  
  cis8 cis8 cis16 cis16~ cis8 cis8 cis8 |
  fis,2. |
}

BassCommon = \relative c {
  b8 b8
  \tag #'sheetMusic { b16~ b16~ b8 }
  \tag #'(verseOneSheet verseOneSlide) { b8 b8 }
  \tag #'(verseTwoSheet verseTwoSlide) { b16 b16~ b8 }
  b8
  \tag #'sheetMusic { b16( <fis fis'>16)~ | <fis fis'>4.~ <fis fis'>4 }
  \tag #'(verseOneSheet verseOneSlide) { b16 <fis fis'>16~ | <fis fis'>4.~ <fis fis'>4 }
  \tag #'(verseTwoSheet verseTwoSlide) { b16( <fis fis'>16) | <fis fis'>4.~ <fis fis'>4 }
  
  \tag #'sheetMusic { r16 <fis fis'>16 }
  \tag #'(verseOneSheet verseOneSlide) { r16 <fis fis'>16 }
  \tag #'verseTwoSheet { r16 <fis fis'>16 }
  \tag #'verseTwoSlide { r8 } |
  
  e'8 e8 e8
  \tag #'sheetMusic { e8( e8) }
  \tag #'(verseOneSheet verseOneSlide) { e8( e8) }
  \tag #'(verseTwoSheet verseTwoSlide) { e8 e8 }
  e8 |
  
  b8. b16~ b8 b8. b16~ b8 |
  e8 e8 e16 e16~ e8 e8 e8 |
  b4.~ b8 r8
  \tag #'sheetMusic { b16 }
  \tag #'(verseOneSheet verseOneSlide) { b16 }
  \tag #'verseTwoSheet { b16 }
  \tag #'verseTwoSlide { r16 }
  b16 |
  cis8 cis8 cis8 cis8 cis16 cis8. |
  <fis, fis'>2.~ |
  <fis fis'>4. \bar "||"
}

BassRefrain = \relative c {
  fis8 fis8 fis8 |
  b,4. b4. |
  <fis' fis,>4.~ <fis fis,>8. r16 <fis fis,>8 |
  b,4 b8 b8 b8 b8 |
  e4. fis8 fis8 fis8 |
  b,4. b4. |
  <fis' fis,>4.~ <fis fis,>8. r16 <fis fis,>8 |
  gis,4 gis8 b8 b8 b8 |
  e4. e8 e8 e8 |
  b4. b8 b8 b8 |
  fis'4. fis8 fis8 fis8 |
  dis4 dis8 dis4 dis8 |
  f4. f?8 f8 f8 |
  b,4. b8 b8 b8 |
  fis'4 fis8 fis8 fis8 fis8 |
  e4.~ e4 e8 |
  cis4. fis,4. |
  b2. |
}

BassCoda = \relative c {
  \partcombineApart dis2.\rest |
  dis2.\rest |
  \partcombineAutomatic e8 e8 e8 e4 e8~ |
  e8 b4~ b4. |
  \partcombineApart dis2.\rest |
  dis2.\rest |
  \partcombineAutomatic b8 b8 b8 b8 b8 b8 |
  <fis' fis,>2.~ |
  <fis fis,>4. r4. \bar "||"
}

SheetMusicVerseOneIntroBreaks = {
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \break \noPageBreak
  
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \break \noPageBreak
}

SheetMusicCommonBreaks = {
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \break \noPageBreak
  
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s4. \bar "||" \break \noPageBreak
}

SheetMusicRefrainBreaks = {
  s4. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s4. \bar "" \break \noPageBreak
  
  s4. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s4. \bar "" \break
  
  s4. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s4. \bar "" \break
  
  s4. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \break
}

SheetMusicCodaBreaks = {
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \break
  
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. \bar "||"
}

SlideVerseOneIntroBreaks = {
  \setSystemOffset \defaultTopSystemOffset
  s2 s8 \bar "" \break
  
  \setSystemOffset \defaultBottomSystemOffset
  s8 | \noBreak
  s2 s8. \bar "" \pageBreak
  
  \setSystemOffset \defaultTopSystemOffset
  s16 | \noBreak
  s2 s8 \bar "" \break
  
  \setSystemOffset \defaultBottomSystemOffset
  s8 | \noBreak
  s2. | \pageBreak
  
  \setSystemOffset \defaultTopSystemOffset
  s2. | \noBreak
  s2. | \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s2. | \noBreak
  s2. | \pageBreak
}

SlideCommonBreaksOne = {
  \setSystemOffset \defaultTopSystemOffset
  s2 s8 \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s8  | \noBreak
  s2 s8. \bar "" \pageBreak
  
  \setSystemOffset \defaultTopSystemOffset
  s16 | \noBreak
  s2 s8 \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s8 | \noBreak
  s2. | \pageBreak
  
  \setSystemOffset \defaultTopSystemOffset
  s2 s8 \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s8 | \noBreak
  s2 s8 \bar "" \pageBreak
  
  \setSystemOffset \defaultTopSystemOffset
  s8 | \noBreak
  s4. \bar "" \break
  
  \setSystemOffset \defaultBottomSystemOffset
  s4. | \noBreak
  s2. | \noBreak
  s4. \bar "||" \pageBreak
}

SlideCommonBreaksTwo = {
  \setSystemOffset \defaultTopSystemOffset
  s2 s8 \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s8  | \noBreak
  s2. | \pageBreak
  
  \setSystemOffset \defaultTopSystemOffset
  s2 s8 \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s8 | \noBreak
  s2. | \pageBreak
  
  \setSystemOffset \defaultTopSystemOffset
  s2 \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s4 | \noBreak
  s2 s8. \bar "" \pageBreak
  
  \setSystemOffset \defaultTopSystemOffset
  s16 | \noBreak
  s4. \bar "" \break
  
  \setSystemOffset \defaultBottomSystemOffset
  s4. | \noBreak
  s2. | \noBreak
  s4. \bar "||" \pageBreak
}

SlideRefrainBreaks = {
  \setSystemOffset \defaultTopSystemOffset
  s4. | \noBreak
  s2. | \noBreak
  s2 s8 \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s8 | \noBreak
  s2. | \noBreak
  s4. \bar "" \pageBreak
  
  \setSystemOffset \defaultTopSystemOffset
  s4. | \noBreak
  s2. | \noBreak
  s2 s8 \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s8 | \noBreak
  s2. | \noBreak
  s4. \bar "" \pageBreak
  
  \setSystemOffset \defaultTopSystemOffset
  s4. | \noBreak
  s4. \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s4. | \noBreak
  s4. \bar "" \pageBreak
  
  \setSystemOffset \defaultTopSystemOffset
  s4. | \noBreak
  s2. | \noBreak
  s4. \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s4. | \noBreak
  s2. | \noBreak
  s4 \bar "" \pageBreak
  
  \setSystemOffset \defaultTopSystemOffset
  s2 | \noBreak
  s2 s8 \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s8 | \noBreak
  s2. | \noBreak
  s2. \bar "|."
}

SlideCodaBreaks = {
  \setSystemOffset \defaultTopSystemOffset
  s2. | \noBreak
  s2. | \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s2. | \noBreak
  s2. | \pageBreak
  
  \setSystemOffset \defaultTopSystemOffset
  s2. | \noBreak
  s2. | \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s2. | \noBreak
  s2. | \noBreak
  s2. \bar "||" \pageBreak
}

VerseOneIntro = \lyricmode {
  \set stanza = "1. "
  Some days I can't seem to find a rea -- son to trust that there's more,
  more than the pain of this world,
  more than the fear in my heart.
}

lyricRest = \markup { \raise #1.0 \musicglyph #"rests.4" }

VerseOneCommon = \lyricmode {
  Just when it seems hope is gone,
  the sun -- rise re -- veals Your awe -- some glo -- ry!
  There is no sha -- dow, no fear that can stand in Your won -- der -- ful light
}

VerseTwoCommon = \lyricmode {
  \set stanza = "2. "
  When I for -- get You are there, 
  \tag #'verseTwoSheet { \lyricRest I }
  \tag #'verseTwoSlide { I }
  hear Your voice in a qui -- et mo -- ment.
  You whis -- per peace to my soul,
  \tag #'verseTwoSheet { \lyricRest Your }
  \tag #'verseTwoSlide { Your }
  pro -- mis -- es fill up my days.
}

Refrain = \lyricmode {
  You are my high -- est hope, Your glo -- ry I love to see;
  All who are thirst -- y come, the foun -- tain's flow -- ing and free.
  You are my rest, You are my peace, You are the hope for all who be -- lieve.
  Faith -- ful and True, King of all kings, You al -- ways will be my high -- est hope.
}

Coda = \lyricmode {
  Come to the ta -- ble of bless -- ing, en -- ter His courts with praise;
  Good -- ness and mer -- cy will sure -- ly fol -- low me all of my days.
}
