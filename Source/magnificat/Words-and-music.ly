\version "2.19.49"

\include "../common.ly"

global = {
  \key e \major
  \time 3/4
  \aikenHeads
}

title = "Magnificat"
songNumber = \magnificat_number

\header {
  title = "Magnificat"
  tune = "Magnificat"
  meter = ""
  composer = "Randy Gill"
  poet = "Randy Gill"
  songNumber = \songNumber
  songNumber_lhs = \magnificat_number_lhs
  songNumber_rhs = \magnificat_number_rhs
  copyright = \markup {
    "Copyright " \char ##x00A9 " 2003 Randy Gill"
  }
  license = "CCLI Song #5107766, License #2055442"
  arranger = ##f
  scripture = #"And Mary said: “My soul magnifies the Lord,
                And my spirit has rejoiced in God my Savior.
                For He has regarded the lowly state of His maidservant;
                For behold, henceforth all generations will call me blessed.
                For He who is mighty has done great things for me,
                And holy is His name.” (Luke 1:46–49, NKJV)"

  tagline = ##f
}

%
% Rhythms for the sheet music with line break controls
%
sheetMusicBreaks = \relative c {
  \tag #'usePartials' { \partial 4 }
  s4  | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2  \bar "" \break
  
  s4  | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2  \bar "" \break
  
  s4  | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2  \bar "" \break
  
  s4  | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2  \bar "|." \break
}

%
% Rhythms for the sheet music with line break controls
%
slideMusicFirstBreaks = \relative c {
  \tag #'usePartials' { \partial 4 }
  s4  | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2  \bar "" \break \noPageBreak
  
  s4  | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2  \bar "" \break \noPageBreak
  
  s4  | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2  \bar "" \break \noPageBreak
  
  s4  | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2  \bar "|." \break \pageBreak
}

slideMusicSecondBreaks = \relative c {
  \tag #'usePartials' { \partial 4 }
  \setSystemOffset \defaultTopSystemOffset
  s4  | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2  \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s4  | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2  \bar "" \break \pageBreak
  
  \setSystemOffset \defaultTopSystemOffset
  s4  | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2  \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s4  | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2  \bar "|." \break \pageBreak
}

slideMusicThirdBreaks = \relative c {
  \tag #'usePartials' { \partial 4 }
  \setSystemOffset \defaultTopSystemOffset
  s4  | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2  \bar "" \break \pageBreak
  
  \setSystemOffset \defaultTopSystemOffset
  s4  | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2  \bar "" \break \pageBreak
  
  \setSystemOffset \defaultTopSystemOffset
  s4  | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2  \bar "" \break \pageBreak
  
  \setSystemOffset \defaultTopSystemOffset
  s4  | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2  \bar "|." \break \pageBreak
}

slideMusicFourthBreaks = \relative c {
  \tag #'usePartials' { \partial 4 }
  \setSystemOffset \defaultTopSystemOffset
  s4  | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2  \bar "" \break \pageBreak
  
  \setSystemOffset \defaultTopSystemOffset
  s4  | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2  \bar "" \break \pageBreak
  
  \setSystemOffset \defaultTopSystemOffset
  s4  | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2  \bar "" \break \pageBreak
  
  \setSystemOffset \defaultTopSystemOffset
  s4  | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2  \bar "|." \break \pageBreak
}
%
% Notes for the Soprano part during the verses.
% No break guidance is included.
%
sopranoVerse = \relative c' {
  \tag #'usePartials { \partial 4 }
  \tag #'sheetMusic { e8( }
  \tag #'firstTime { e8(^"Sopranos alone" }
  \tag #'secondTime { e8(^"Sopranos and Basses" }
  \tag #'thirdTime { e8(^"Sopranos, Basses, and Altos" }
  \tag #'fourthTime { e8(^"All Sing" }
  fis8) |
  gis4 fis4 e8 b'8~ |
  b2 gis4 |
  e4.( fis8 gis4 |
  fis2)
  
  e8( fis8) |
  gis4 fis4 e8 b'8~ |
  b4 a4 gis4 |
  e4 r4 cis8( e) |
  e8( fis8) fis4
  
  e8( fis8) |
  gis4 fis4 e8 b'8~ |
  b2 gis4 |
  e4.( fis8 gis4 |
  fis2)

  fis8( gis8) |
  a4 gis4 e8 a8~ |
  a4 gis4 e4 |
  e2.~ |
  e2 \bar "|."
}

altoVerse = \relative c' {
  \tag #'usePartials { \partial 4 }
  r4 |
  e4. dis8 e4 |
  fis2 dis4 |
  cis4.( dis8) e4 |
  e4 dis4
  
  r4 |
  e4. dis8 e4 |
  fis2 dis4 |
  cis4.( b8 cis4) |
  dis2~
  
  dis4 |
  e4. dis8 e4 |
  fis2 dis4 |
  cis4. dis8 e4 |
  e4 dis4
  
  r4 |
  e4. dis8 e4 |
  fis4 e4 b4 |
  b2.~ |
  b2 \bar "|."
}

tenorVerse = \relative c' {
  \tag #'usePartials { \partial 4 }
  r4 |
  b2 gis4 |
  b2 gis8( b8) |
  cis4 a2 |
  a4 fis4
  
  b4 |
  b2 gis4 |
  b2 gis4 |
  a4( gis4) a4 |
  b2
  
  r4 |
  b2 gis4 |
  b2 gis4 |
  cis4 a2 |
  a4 fis4~
  
  fis4 |
  cis'2 cis4 |
  b2 a4 |
  gis2.~ |
  gis2 \bar "|."
}

bassVerse = \relative c {
  \tag #'usePartials { \partial 4 }
  r4 |
  e2 e4 |
  dis4.( cis8) b4 |
  a2 cis4 |
  cis4 b4
  
  b4 |
  e2 e4 |
  dis4.( cis8) b4 |
  a2 cis4 |
  b2~
  
  b4 |
  e2 e4 |
  dis4.( cis8) b4 |
  a2 cis4 |
  cis4 b4~
  
  b4 |
  a2 a4 |
  b4.( cis8) dis4 |
  e2.~ |
  e2 \bar "|."
}

silentVerse = \relative c {
  \tag #'usePartials { \partial 4 }
  r4 |
  r2 r4 |
  r2 r4 |
  r2 r4 |
  r2 r4 |
  r2 r4 |
  r2 r4 |
  r2 r4 |
  r2 r4 |
  r2 r4 |
  r2 r4 |
  r2 r4 |
  r2 r4 |
  r2 r4 |
  r2 r4 |
  r2 r4 |
  r2 \bar "|."
}

sopranoLyrics = \lyricmode {
  My soul mag -- ni -- fies the Lord,
  My spir -- it re -- joic -- es in God my sav -- ior.
  My soul mag -- ni -- fies the Lord.
  My spir -- it re -- joic -- es in God.
}

altoLyrics = \lyricmode {
  He has been mind -- ful of His ser -- vant,
  He has been mind -- ful of me.
  I will be blessed for -- ev -- er, for -- ev -- er,
  I will be blessed by the Lord.
}

tenorLyrics = \lyricmode {
  God a -- lone is might -- y, might -- y;
  Our God a -- lone has done great things.
  God a -- lone is wor -- thy, wor -- thy;
  Ho -- ly is His name.
}

bassLyrics = \lyricmode {
  Glo -- ry be to God the Fa -- ther
  And glo -- ry be to God the Son.
  Glo -- ry be to God the Spir -- it,
  Glo -- ry be to God.
}
