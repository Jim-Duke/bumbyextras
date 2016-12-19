\version "2.19.49"

\include "../common.ly"

global = {
  \key c \major
  \time 3/4
  \aikenHeads
}

title = #"My Shepherd Will Supply My Need"
songNumber = \my_shepherd_will_supply_my_need_number
leaderHints = \markup {
  \fontsize #-4
  \normal-text { "C - 3 - DO" }
}
number_on_rhs = \my_shepherd_will_supply_my_need_number_rhs

#(if number_on_rhs
     (begin
      (define lhs leaderHints)
      (define rhs songNumber))
     (begin
      (define lhs songNumber)
      (define rhs leaderHints)))

\header {
  title = #"My Shepherd will Supply My Need"
  tune = "RESIGNATION"
  meter = "CM"
  composer = "Traditional North American"
  poet = "Isaac Watts, altered"
  songNumber = \songNumber
  lhs = \lhs
  rhs = \rhs

  copyright = "In the Public Domain"
  license = ##f
  arranger = ##f
  scripture = #"The Lord is my shepherd; I shall not want,
                He makes me to lie down in green pastures;
                He leads me beside the still waters.
                He restores my soul;
                He leads me in the paths of righteousness
                For His name's sake. - Psalm 23:1-3"
  tagline = ##f
}

slideMusicBreaks = \relative c {
  \tag #'usePartials' { \partial 4 }

  \setSystemOffset \defaultTopSystemOffset
  s4    | \noBreak
  s2 s4 | \noBreak
  s2 s4 | \noBreak
  s2 s4 | \noBreak
  s2    \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s4    | \noBreak
  s2 s4 | \noBreak
  s2 s4 | \noBreak
  s2.~  | \noBreak
  s2    \bar "" \break
  
  \setSystemOffset \defaultTopSystemOffset
  s4    | \noBreak
  s2 s4 | \noBreak
  s2 s4 | \noBreak
  s2 s4 | \noBreak
  s2    \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s4    | \noBreak
  s2 s4 | \noBreak
  s2 s4 | \noBreak
  s2.~  | \noBreak
  s2    \bar "" \break
  
  \setSystemOffset \defaultTopSystemOffset
  s4    | \noBreak
  s2 s4 | \noBreak
  s2 s4 | \noBreak
  s2 s4 | \noBreak
  s2    \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s4    | \noBreak
  s2 s4 | \noBreak
  s2 s4 | \noBreak
  s2.~  | \noBreak
  s2    \bar "" \break
  
  \setSystemOffset \defaultTopSystemOffset
  s4    | \noBreak
  s2 s4 | \noBreak
  s2 s4 | \noBreak
  s2 s4 | \noBreak
  s2    \bar "" \break \noPageBreak

  \setSystemOffset \defaultBottomSystemOffset
  s4    | \noBreak
  s2 s4 | \noBreak
  s2 s4 | \noBreak
  s2.~  | \noBreak
  s2    \bar "|."
}

sheetMusicBreaks = \relative c {
  \tag #'usePartials' { \partial 4 }
  s4    | \noBreak
  s2 s4 | \noBreak
  s2 s4 | \noBreak
  s2 s4 | \noBreak
  s2    \bar "" \noBreak
  s4    | \noBreak
  s2 s4 | \noBreak
  s2 s4 | \noBreak
  s2.~  | \noBreak
  s2    \bar "" \break
  
  s4    | \noBreak
  s2 s4 | \noBreak
  s2 s4 | \noBreak
  s2 s4 | \noBreak
  s2    \bar "" \noBreak
  s4    | \noBreak
  s2 s4 | \noBreak
  s2 s4 | \noBreak
  s2.~  | \noBreak
  s2    \bar "" \break
  
  s4    | \noBreak
  s2 s4 | \noBreak
  s2 s4 | \noBreak
  s2 s4 | \noBreak
  s2    \bar "" \noBreak
  s4    | \noBreak
  s2 s4 | \noBreak
  s2 s4 | \noBreak
  s2.~  | \noBreak
  s2    \bar "" \break
  
  s4    | \noBreak
  s2 s4 | \noBreak
  s2 s4 | \noBreak
  s2 s4 | \noBreak
  s2    \bar "" \noBreak
  s4 |  \noBreak
  s2 s4 | \noBreak
  s2 s4 | \noBreak
  s2.~  | \noBreak
  s2    \bar "|."
}

sopranoVerse = \relative c' {
  \tag #'usePartials' { \partial 4 }
  c8( e8) |
  g2 e8( d8) |
  e2 g4 |
  c2 a8( g8) |
  e2
  
  c8( e8) |
  g2 c,4 |
  e2 d4 |
  c2.~ |
  c2

  c8( e8) |
  g2 e8( d8) |
  e2 g4 |
  c2 a8( g8) |
  e2
  
  c8( e8) |
  g2 c,4 |
  e2 d4 |
  c2.~ |
  c2

  g'4 |
  c2 e8( c8) |
  a2 c4 |
  d2 c8( a8) |
  g2
  
  e8( g8) |
  a2 g8( a8) |
  c2 d4 |
  c2.~ |
  c2
  
  c,8( e8) |
  g2 e8( d8) |
  e2 g4 |
  c2 a8( g8) |
  e2
  
  c8( e8) |
  g2 c,4 |
  e2 d4 |
  c2.~ |
  c2 \bar "|."
}

altoVerse = \relative c' {
  \tag #'usePartials' { \partial 4 }
  c4 |
  b2 b4 |
  b4( c4) d4 |
  e2 f8( e8) |
  c2
  
  c4 |
  b2 c4 |
  c2 g4 |
  g2.~ |
  g2
  
  c4 |
  b2 b4 |
  b4( c4) d4 |
  e2 f8( e8) |
  c2
  
  c4 |
  d2 c4 |
  c2 b4 |
  c2.~ |
  c2
  
  e4 |
  e2 g4 |
  f2 a8( g8) |
  f2 g8( f8) |
  d2
  
  e4 |
  e2 g8( f8) |
  g2 f4 |
  e2.~ |
  e2
  
  c4 |
  d2 b4 |
  c2 d4 |
  c2 c4 |
  b2
  
  c4 |
  d2 c4 |
  c2 b4 |
  g2.~ |
  g2 \bar "|."
}

tenorVerse = \relative c {
  \tag #'usePartials' { \partial 4 }
  e4 |
  d2 g4 |
  g2 g4 |
  g2 f8( g8) |
  a2
  
  a4 |
  g2 e4 |
  e2 g4 |
  e2.~ |
  e2
  
  e4 |
  d2 g4 |
  g2 g4 |
  g2 f8( g8) |
  a2
  
  a4 |
  g2 e4 |
  g2 g4 |
  e2.~ |
  e2

  c'4 |
  c2 b8( c8) |
  c2 a4 |
  a2 g8( c) |
  b2
  
  c4 |
  c2 b8( d8) |
  c2 a4 |
  g2.~ |
  g2
  
  e4 |
  d2 g4 |
  g2 g4 |
  e2 e4 |
  g2
  
  e4 |
  d2 e4 |
  g2 g4 |
  e2.~ |
  e2 \bar "|."
}

bassVerse = \relative c {
  \tag #'usePartials' { \partial 4 }
  c4 |
  g2 g'4 |
  e2 b4 |
  c2 d8( e8) |
  a2
  
  a4 |
  e2 c4 |
  a2 b4 |
  c2.~ |
  c2
  
  c4 |
  g2 g'4 |
  e2 b4 |
  c2 d8( e8) |
  a2
  
  a,4 |
  b2 c4 |
  g2 g4 |
  c2.~ |
  c2
  
  c'4 |
  a2 g8( e8) |
  f2 f8( e8) |
  d2 e8( f8) |
  g2
  
  c4 |
  a2 e8( d8) |
  e2 f4 |
  c2.~ |
  c2
  
  c4 |
  b2 g4 |
  c2 b4 |
  a2 c4 |
  e2
  
  a,4 |
  b2 c4 |
  g2 g4 |
  c2.~ |
  c2 \bar "|."
}

verseOne = \lyricmode {
  \set stanza = "1. "
  My Shep -- herd will sup -- ply my need;
  Je -- ho -- vah is His name;
  In past -- ures fresh He makes me feed,
  be -- side the liv -- ing stream.
  He brings my wan -- d’ring spir -- it back
  when I for -- sake His ways,
  And leads me for His mer -- cy’s sake
  in paths of truth and grace.
}

verseTwo = \lyricmode {
  \set stanza = "2. "
  When I walk through the shades of death,
  His pre -- sence is my stay;
  A word of His sup -- port -- ing breath
  drives all my fears a -- way.
  His hand in sight of all my foes
  does still my ta -- ble spread;
  My cup with bless -- ings ov -- er -- flows,
  His oil a -- noints my head.
}

verseThree = \lyricmode {
  \set stanza = "3. "
  The sure pro -- vis -- ions of my God
  at -- tend me all my days;
  O may His house be my a -- bode,
  and all my work be praise!
  There would I find a set -- tled rest,
  (while oth -- ers go and come)
  No more a strang -- er or a guest,
  but like a child at home.
}


