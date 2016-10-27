\version "2.18.2"

\include "../common.ly"

global = {
  \key c \major
  \time 3/4
  \aikenHeads
}

topSystemOffset = \defaultTopSystemOffset
bottomSystemOffset = \defaultBottomSystemOffset

\header {
  title = \markup {
    \column {
      "My Shepherd Will"
      "Supply My Need"
    }
  }
  tune = "RESIGNATION"
  meter = "CM"
  composer = "Traditional North American"
  poet = "Isaac Watts"
  songNumber = \my_shepherd_will_supply_my_need_number
  songNumber_lhs = \my_shepherd_will_supply_my_need_number_lhs
  songNumber_rhs = \my_shepherd_will_supply_my_need_number_rhs
  copyright = "In the Public Domain"
  license = ##f
  arranger = ##f
  scripture = \markup {
    \override #'(line-width . 60)
    \center-column {
      \vspace #3
      \abs-fontsize #24
      \italic \wordwrap-string #"The Lord is my shepherd; I shall not want,
         He makes me to lie down in green pastures;
         He leads me beside the still waters.
         He restores my soul;
         He leads me in the paths of righteousness
         For His name's sake. - Psalm 23:1-3"
    }
  }
  tagline = ##f
}

slideMusicBreaks = \relative c {
  \tag #'usePartials' { \partial 4 }

  \setSystemOffset \topSystemOffset
  s4    | \noBreak
  s2 s4 | \noBreak
  s2 s4 | \noBreak
  s2 s4 | \noBreak
  s2    \bar "" \break
  
  \setSystemOffset \bottomSystemOffset
  s4    | \noBreak
  s2 s4 | \noBreak
  s2 s4 | \noBreak
  s2.~  | \noBreak
  s2    \bar "" \break
  
  \setSystemOffset \topSystemOffset
  s4    | \noBreak
  s2 s4 | \noBreak
  s2 s4 | \noBreak
  s2 s4 | \noBreak
  s2    \bar "" \break
  
  \setSystemOffset \bottomSystemOffset
  s4    | \noBreak
  s2 s4 | \noBreak
  s2 s4 | \noBreak
  s2.~  | \noBreak
  s2    \bar "" \break
  
  \setSystemOffset \topSystemOffset
  s4    | \noBreak
  s2 s4 | \noBreak
  s2 s4 | \noBreak
  s2 s4 | \noBreak
  s2    \bar "" \break
  
  \setSystemOffset \bottomSystemOffset
  s4    | \noBreak
  s2 s4 | \noBreak
  s2 s4 | \noBreak
  s2.~  | \noBreak
  s2    \bar "" \break
  
  \setSystemOffset \topSystemOffset
  s4    | \noBreak
  s2 s4 | \noBreak
  s2 s4 | \noBreak
  s2 s4 | \noBreak
  s2    \bar "" \break

  \setSystemOffset \bottomSystemOffset
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
  Je -- ho -- vah is his Name;
  In pas -- tures fresh he makes me feed,
  Be -- side the liv -- ing stream.
  He brings my wan -- d'ring spir -- it back
  When I for -- sake His ways,
  And leads me, for His mer -- cy's sake,
  In paths of truth and grace.
}

verseTwo = \lyricmode {
  \set stanza = "2. "
  When I walk through the Shades of Death,  
  Thy Pre -- sence is my Stay;  
  A Word of thy sup -- port -- ing Breath  
  Drives all my Fears a -- way.
  Thy Hand in Spite of all my Foes  
  Doth still my Ta -- ble spread;  
  My Cup with Bless -- ings o -- ver -- flows,  
  Thine Oil a -- noints my Head.

}

verseThree = \lyricmode {
  \set stanza = "3. "
  The sure Pro -- vis -- ions of my God  
  At -- tend me all my Days;  
  O may thy House be mine A -- bode,  
  And all my Work be Praise!
  There would I find a set -- tled Rest,  
  (While oth -- ers go and come)  
  No more a Strang -- er or a Guest,  
  But like a Child at Home. 
}

