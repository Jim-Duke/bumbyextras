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
  composer = "Manly Thweatt"
  poet = "Manly Thweatt"
  songNumber = \SongNumber
  lhs = #(if RightFirstPage LeaderHints SongNumber)
  rhs = #(if RightFirstPage SongNumber LeaderHints)
  copyright = "Words and Music Copyright © 2018 Manly Thweatt. All rights reserved."
  license = "Used by permission"
  tagline = ##f
}

SopranoVerseFirstEnding = \relative c' {
  fis8
  \tag #'sheetMusic { e8~ e8 }
  \tag #'verseOneA { e8 e8 }
  \tag #'verseTwoA { e8 e8 }
  \tag #'verseThreeA { e4 }
  e4.~ e4 |
}

SopranoVerseSecondEnding = \relative c' {
  fis8 e4 e4.
}

EmptyFirstEnding = {
  s1
}

SopranoVerseBodyMusic = \relative c'' {
  r8 gis8 b8 gis8 b4 gis8 gis8 |
  a4 gis8 gis8 fis4 gis4 |
  
  r8 e8 e8 e8 e8 e8 e8 gis8 |
  gis8
  \tag #'sheetMusic { fis8\( e8\)\noBeam }
  \tag #'verseOneA { fis8 e8 }
  \tag #'verseOneB { fis8 e8 }
  \tag #'verseTwoA { fis8( e8) }
  \tag #'verseTwoB { fis8( e8) }
  \tag #'verseThreeA { fis8( e8) }
  \tag #'verseThreeB { fis8 e8 }
  fis4.~ fis4 |
  
  r8 gis8 b8 gis8 b4 gis8 gis8 |
  a4 gis8 gis8 fis4 gis4 |
  
  r8 e8 e8 e8 e8 e8 e8 gis8 |
}

SopranoChorusMusic = \relative c' {
  e8^\markup { \bold "Chorus:" } fis8 |
  gis4 gis8 gis8 fis4 fis8 e8 |
  cis8 e4.~ e4 e8 fis8 |
  
  gis4 fis8 e8 b'4 b8 gis8 |
  fis4.~ fis4. e8 fis8 |
  
  gis4 gis8 a8 b4 b8 cis8 |
  b8 a4.~ a4 cis8 cis8 |
  
  cis4 cis8 cis8 e4 dis8 cis8 |
  b4.~ b4. b8 b8 |
  
  cis4 cis8 cis8 b4 b8 a8 |
  gis8 b4.~ b4 e,8 fis8\noBeam |
  
  gis4 gis8 a8 gis4 gis8 fis8 |
  e2. e8 e8 |
  
  e4 e8 e8 fis4 e8 fis8 |
  gis8 b4.( cis4)

  \set Score.tempoHideNote = ##t
  e,8^\markup { "Rit." } fis8 |
  gis8 gis8
  \tempo 4=95
  fis8 e8 fis8 fis8
  \tempo 4=90
  gis8 fis8 |
  \tempo 4=85
  e2. r4
  \tempo 4=105
}

AltoVerseFirstEnding = \relative c' {
  dis8
  \tag #'sheetMusic { cis8~ cis8 }
  \tag #'verseOneA { cis8 cis8 }
  \tag #'verseTwoA { cis8 cis8 }
  \tag #'verseThreeA { cis4 }
  b4.~ b4 |
}

AltoVerseSecondEnding = \relative c' {
  dis8 cis4 b4.
}
  

AltoVerseBodyMusic = \relative c' {
  r8 e8 e8 e8 fis4 e8 e8 |
  e4 e8 e8 dis4 e4 |
  
  r8 cis8 cis8 cis8 b8 b8 b8 b8 |
  cis8
  \tag #'sheetMusic { cis8( cis8)\noBeam }
  \tag #'verseOneA { cis8 cis8 }
  \tag #'verseOneB { cis8 cis8 }
  \tag #'verseTwoA { cis4 }
  \tag #'verseTwoB { cis4 }
  \tag #'verseThreeA { cis4 }
  \tag #'verseThreeB { cis4 }
  dis4.~ dis4 |

  r8 e8 e8 e8 fis4 e8 e8 |
  e4 e8 e8 dis4 e4 |

  r8 cis8 cis8 cis8 b8 b8 b8 e8 |
}

AltoChorusMusic = \relative c' {
  b8 dis8 |
  e4 e8 e8 dis4 dis8 b8 |
  cis8 cis4.~ cis4 cis8 dis8 |
  
  e4 dis8 e8 gis4 gis8 e8 |
  dis4.~ dis4. e8 dis8 |
  
  e4 e8 fis8 gis4 gis8 gis8 |
  a8 e4.~ e4 fis8 gis8 |
  
  ais4 ais8 ais8 ais4 ais8 gis8 |
  fis4.~ fis4. gis8 gis8 |
  
  a4 a8 gis8 fis4 fis8 fis8 |
  e8 gis4.~ gis4 e8 e8\noBeam |
  
  dis4 dis8 e8 dis4 dis8 dis8 |
  e2. b8 b8 |
  
  cis4 cis8 cis8 dis4 cis8 dis8 |
  e8 gis4.~ gis4
  
  e8 dis8 |
  e8 e8 dis8 cis8 dis8 dis8 e8 dis8 b2. r4
}

TenorVerseFirstEnding = \relative c' {
  a8
  \tag #'sheetMusic { a8~ a8 }
  \tag #'verseOneA { a8 a8 }
  \tag #'verseTwoA { a8 a8 }
  \tag #'verseThreeA { a4 }
  gis4.~ gis4 |
}

TenorVerseSecondEnding = \relative c' {
  a8 a4 gis4.
}
  
TenorVerseBodyMusic = \relative c' {
  r8 b8 e8 e8 dis4 b8 b8 |
  cis4 cis8 cis8 b4 b4 |
  
  r8 a8 a8 a8 gis8 gis8 gis8 gis8 |
  ais8
  \tag #'sheetMusic { ais8~ ais8 }
  \tag #'verseOneA { ais8 ais8 }
  \tag #'verseOneB { ais8 ais8 }
  \tag #'verseTwoA { ais4 }
  \tag #'verseTwoB { ais4 }
  \tag #'verseThreeA { ais4 }
  \tag #'verseThreeB { ais8 ais8 }
  b4.~ b4 |
  
  r8 b8 e8 e8 dis4 b8 b8 |
  cis4 cis8 cis8 b4 b4 |
  
  r8 a8 a8 a8 gis8 gis8 gis8 b8 |
}

TenorChorusMusic = \relative c' {
  gis8 a8 |
  b4 b8 b8 b4 b8 b8 |
  a8 a4.~ a4 a8 a8 |
  
  b4 b8 b8 e4 e8 b8 |
  b4.~ b4. b8 b8 |
  
  b4 b8 b8 e4 dis8 e8 |
  dis8 cis4.~ cis4 cis8 cis8 |
  
  e4 e8 e8 cis4 dis8 e8 |
  dis4.~ dis4. e8 e8 |
  
  e4 e8 e8 dis4 dis8 cis8 |
  b8 e4.~ e4 b8 b8 |
  
  bis4 bis8 bis8 bis4 bis8 bis8 |
  cis2\( gis4\) gis8 gis8 |
  
  a4 a8 a8 a4 a8 b8 |
  b8 e4.~ e4
  
  gis,8 a8 |
  b8 b8 a8 gis8 a8 a8 b8 a8 |
  gis2. r4 \bar "|."
}

BassVerseFirstEnding = \relative c, {
  fis8
  \tag #'sheetMusic { b8~ b8 }
  \tag #'verseOneA { b8 b8 }
  \tag #'verseTwoA { b8 b8 }
  \tag #'verseThreeA { b4 }
  e4.~ e4 |
}

BassVerseSecondEnding = \relative c, {
  fis8 b4 e4.
}
  
BassVerseBodyMusic = \relative c {
  r8 e8 e8 e8 dis4 dis8 dis8 |
  cis4 cis8 cis8 b4 b4 |
  
  r8 a8 a8 a8 gis8 gis8 gis8 gis8 |
  fis8
  \tag #'sheetMusic { fis8~ fis8 }
  \tag #'verseOneA { fis8 fis8 }
  \tag #'verseOneB { fis8 fis8 }
  \tag #'verseTwoB { fis4 }
  \tag #'verseTwoA { fis4 }
  \tag #'verseThreeA { fis4 }
  \tag #'verseThreeB { fis8 fis8 }
  b4.~ b4 |
  
  r8 e8 e8 e8 dis4 dis8 dis8 |
  cis4 cis8 cis8 b4 b4 |
  
  r8 a8 a8 a8 gis8 gis8 gis8 gis8 |
}

BassChorusMusic = \relative c {
  e8 fis8 |
  e4 e8 e8 b4 gis8 gis8 |
  a8 a4.~ a4 b8 b8 |
  
  e4 fis8 gis8 gis4 fis8 e8 |
  b4.~ b4. cis8 dis8 |
  
  e4 e8 e8 gis,4 gis8 gis8 |
  a8 a4.~ a4 a8 gis8 |
  
  fis4 fis8 fis8 fis4 fis8 fis8 |
  b4.~ b4. gis8 gis8 |
  
  a4 a8 a8 b4 b8 b8 |
  e8 e4.~ e4 b8 b8 |
  
  gis4 gis8 gis8 gis4 bis8 bis8 |
  cis2( b4) b8 b8 |

  a4 a8 a8 a4 a8 b8 |
  e8 e4.\( cis4\)
  
  c8 c8 |
  b8 b8 b8 cis8 b8 b8 b8 b8 |
  <e e,>2. r4 \bar "|."
}

SheetMusicVerseBreaks = {
  s1 | \noBreak
  s1 | \break \noPageBreak
  
  s1 | \noBreak
  s1 | \break \noPageBreak
  
  s1 | \noBreak
  s1 | \break \noPageBreak
  
  s1 | \noBreak
  s1 | \noBreak
  s2. \bar "" \break \noPageBreak
  
  % Chorus
  s4 | \noBreak
  s1 | \noBreak
  s2. \bar "" \break
  
  s4 | \noBreak
  s1 | \noBreak
  s2. \bar "" \break
  
  s4 | \noBreak
  s1 | \noBreak
  s2. \bar "" \break
  
  s4 | \noBreak
  s1 | \noBreak
  s2. \bar "" \break
  
  s4 | \noBreak
  s1 | \noBreak
  s2. \bar "" \break
  
  s4 | \noBreak
  s1 | \noBreak
  s2. \bar "" \break
  
  s4 | \noBreak
  s1 | \noBreak
  s2. \bar "" \break
  
  s4 | \noBreak
  s1 | \noBreak
  s1 \bar "|."
}

SlidesVerseBreaks = \relative c {
  \setSystemOffset \defaultTopSystemOffset
  \setSystemOffset \defaultBottomSystemOffset
}

VerseOneA = \lyricmode {
  \set stanza = "1. "
  Two men were walk -- ing the road to Em -- ma -- us.
  They'd heard the big -- gest thing the world's e -- ver seen.
  The Jews' Mes -- si -- ah had come to save Is -- rael,
  at least they thought He was the one to re -- deem.
}

VerseOneB = \lyricmode {
  A Stran -- ger came, "\"What" are you men dis -- cus -- "sing?\""
  The men were sad a -- bout the news they had heard.
  "\"We" can't con -- firm our Mes -- si -- ah has ris -- "en.\""
  The Stran -- ger showed them from His ho -- ly Word.
}

VerseTwoA = \lyricmode {
  \set stanza = "2. "
  Their jour -- ney came to the town of Em -- ma -- us.
  The Stran -- ger told them he would trav -- el on.
  The men con -- strained Him, "\"Just" stay with us one night.
  The night's u -- pon us and the day -- light is "gone.\""
}

VerseTwoB = \lyricmode {
  Are we in thirst for some time with our Sav -- ior?
  And are we hun -- gry for His sa -- cred Word?
  Our weak -- est mo -- ments are when we most need Him.
  He's walk -- ing with us He's our bles -- sed Lord.
}

VerseThreeA = \lyricmode {
  \set stanza = "3. "
  He blessed the bread in the town of Em -- ma -- us.
  He broke the bread and to the men He gave.
  Then both the men saw the Stran -- ger just van -- ish,
  but not be -- fore the men would know His face.
}

VerseThreeB = \lyricmode {
  He walked with them all the way to Em -- ma -- us.
  They saw the Sav -- ior on that won -- der -- ful night.
  He walks with us all the way in -- to heav -- en.
  We'll see our Sav -- ior when our faith is sight.
}

Chorus = \lyricmode {
  Like the men on the road to Em -- ma -- us,
  af -- ter Je -- sus a -- rose from the dead,
  know -- ing not it was He who walked with them,
  know -- ing not it was Je -- sus in -- stead!
  So when dark -- ness and doubt come u -- pon us,
  when the hard road just seems ve -- ry long,
  then in heav -- en I know we'll re -- mem -- ber
  that our Lord was walk -- ing with us all a -- long.
}
