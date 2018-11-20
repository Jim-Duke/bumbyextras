\version "2.19.49"
#(use-modules (guile-user))

#(ly:set-option 'relative-includes #t)
\include "../../../LilypondTemplates/functions.ly"
\include "../../../LilypondTemplates/hymns.ly"
\include "../hymn_settings.ly"

global = {
  \key e \major
  \time 3/4
  \tempo 4 = 100
}

MajorKey = ##t

%%
%% Hymn Metadata Variables
%%

Title = "Be Thou My Vision"
SongNumber = \be_thou_my_vision_bumby_number
RightFirstPage = \be_thou_my_vision_bumby_number_rhs
FirstPage = #(if RightFirstPage 1 2)

LeaderHints = \markup {
  \fontsize #-4
  \normal-text { "E - 3 - DO" }
}

Scripture = "Thus says the Lord: \"Let not the wise man glory in his wisdom, Let not the mighty man
 glory in his might, Nor let the rich man glory in his riches; But let him who glories glory in this,
 That he understands and knows Me, that I am the Lord, exercising lovingkindness, judgment, and
 righteousness in the earth.  For in these I delight,\" says the Lord -- Jeremiah 9:23-24"

ShowScriptureOnSheetMusic = ##f

\header {
  title = \Title
  tune = "SLANE"
  meter = "10.10.9.10"
  composer = "Joyce's Old Irish Folk Music and Songs (1909)"
  arranger = "C. E. Couchman"
  poet = "Irish Fok Hymn (c. 750)"
  translator = "Mary E. Byrne (1905)"
  versifier = "Eleanor H. Hull (1912)"
  altered = ##t
  songNumber = \SongNumber
  lhs = #(if RightFirstPage LeaderHints SongNumber)
  rhs = #(if RightFirstPage SongNumber LeaderHints)
  copyright = "Arrangement Copyright © 2009 C. E. Couchman. All rights reserved."
  license = "Used by permission"
  tagline = ##f
}

SopranoVerseMusic = \relative c' {
  e4 e4 fis8( e8) |
  cis4 b4 b8( cis8) |
  e4 e4 fis4 |
  gis2. |
  
  fis4 fis4 fis4 |
  fis4 gis4 b4 |
  cis4 b4 gis4 |
  b2. |
  
  cis4 cis8( dis8) e8( dis8) |
  cis4( b4) gis4 |
  b4 e,4 dis4 |
  cis2( b4) |
  
  e4 gis4 b4 |
  cis8( b8) gis4 e8( gis8) |
  fis4 e4 e4 |
  e2. \bar "|."
}

AltoVerseMusic = \relative c' {
  e4 e4 fis8( e8) |
  cis4 b4 b8( cis8) |
  cis4 cis4 dis4 |
  e2. |
  
  dis4 dis4 cis4 |
  dis4 e4 e4 |
  e4 e4 e4 |
  e4( dis2) |
  
  e4 e8( fis8) gis8( b8) |
  a4( gis4) e4 |
  e4 e4 dis4 |
  cis2( b4) |
  
  b4 e4 gis4 |
  a8( gis8) e4 e8( dis8) |
  cis4 cis4 cis8( b8) |
  b2. \bar "|."
}

TenorVerseMusic = \relative c {
  e4 e4 e4 |
  e4 e4 a4 |
  gis4 gis4 b4 |
  b2. |
  
  b4 b4 cis4 |
  b4 b4 gis4 |
  a4 b4 cis4 |
  <b fis>2. |
  
  cis4 cis8( dis8) e8( dis8) |
  cis4( b4) b4 |
  b4 b4 b4 |
  a2( gis4) |
  
  gis4 b4 e4 |
  e4 b4 b4 |
  a4 a4 a4 |
  gis2. \bar "|."
}

BassVerseMusic = \relative c {
  e4 e4 e4 |
  e4 e4 a4 |
  gis4 gis4 b4 |
  b2. |
  
  b4 b4 a8( gis8) |
  fis4 e4 gis4 |
  a4 gis4 e4 |
  <fis b,>2. |
  
  a,4 a4 a4 |
  e'2 e4 |
  gis4 gis4 b4 |
  a2( gis4) |
  
  e4 e4 e4 |
  e4 e8( dis8) cis4 |
  a4 a4 a4 |
  e'2. \bar "|."
}

SheetMusicVerseBreaks = \relative c {
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \break

  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \break

  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \break

  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. \bar "|."
}

SlidesVerseBreaks = \relative c {
  \setSystemOffset \defaultTopSystemOffset
  s2. | \noBreak
  s2  \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s4  | \noBreak
  s2. | \noBreak
  s2. | \pageBreak
  
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
  s2. | \pageBreak

  \setSystemOffset \defaultTopSystemOffset
  s2. | \noBreak
  s2  \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s4  | \noBreak
  s2. | \noBreak
  s2. | \pageBreak
}

VerseOne = \lyricmode {
  \set stanza = "1. "
  Be Thou my vi -- sion,  O Lord of my heart;
  Naught be all else to me, save that Thou art.
  Thou my best thought, by day or by night.
  Wak -- ing or sleep -- ing, Thy pres -- ence my light.
}

VerseTwo = \lyricmode {
  \set stanza = "2. "
  Be Thou my wis -- dom and thou my true word;
  I ev -- er with Thee and Thou with me, Lord.
  Thou my great Fa -- ther, I Thy true son;
  Thou in me dwell -- ing, and I with Thee one.
}

VerseThree = \lyricmode {
  \set stanza = "3. "
  Be Thou my bat -- tle Shield, Sword for the fight;
  Be Thou my whole Ar -- mour, be Thou my might;
  Thou my soul's Shel -- ter, Thou my high Tow'r;
  Raise Thou me heav'n -- ward, O Pow'r of my pow'r.
}

VerseFour = \lyricmode {
  \set stanza = "4. "
  Rich -- es I heed not, nor man's emp -- ty praise,
  Thou my in -- her -- it -- ance, now and al -- ways;
  Thou and Thou on -- ly, first in my heart,
  High King of heav -- en, my treas -- ure Thou art.
}

VerseFive = \lyricmode {
  \set stanza = "5. "
  High King of heav -- en, my vic -- to -- ry won,
  May I reach heav -- en's joys, O bright heav'n's Sun!
  Heart of my heart, what -- ev -- er be -- fall,
  Still be my vi -- sion, O Rul -- er of all.
}
