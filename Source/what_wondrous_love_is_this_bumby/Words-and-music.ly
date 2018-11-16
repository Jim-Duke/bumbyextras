\version "2.19.49"
#(use-modules (guile-user))

#(ly:set-option 'relative-includes #t)
\include "../../../LilypondTemplates/functions.ly"
\include "../../../LilypondTemplates/midi.ly"
\include "../../../LilypondTemplates/hymns.ly"
\include "../hymn_settings.ly"

global = {
  \key c \major
  \numericTimeSignature
  \time 2/2
  \tempo 2=55
}

MajorKey = ##t

Title = "What Wondrous Love is This"
SongNumber = \what_wondrous_love_is_this_bumby_number

LeaderHints = \markup {
  \fontsize #-4
  \normal-text { "D - 2 - DO" }
}

FirstPage = #(if what_wondrous_love_is_this_bumby_number_rhs 1 2)

Scripture = "This is how God showed his love among us: he sent
 his one and only Son into the world that we might live through him.
 This is love: not that we loved God, but that he loved us and sent
 his Son as an atoning sacrifice for our sins. (1 John 4:9-10, NIV)"

ShowScriptureOnSheetMusic = ##t

\header {
  title = \Title
  tune = "WONDROUS LOVE"
  meter = "12.9.6.6.12.9"
  composer = "Southern Harmony, 1835"
  poet = "Appalachian folk hymn"
  songNumber = \SongNumber
  lhs = #(if what_wondrous_love_is_this_bumby_number_rhs LeaderHints what_wondrous_love_is_this_bumby_number)
  rhs = #(if what_wondrous_love_is_this_bumby_number_rhs what_wondrous_love_is_this_bumby_number LeaderHints)
  copyright = "In the Public Domain"
  license = ##f
  tagline = ##f
}

SopranoVerseMusic = \relative c' {
  \tag #'usePartials { \partial 2 }
  d2 |
  d4 c4 e4 g4 |
  a2 g4 e4 |
  d2 d4 c4 |
  e2
  
  a2 |
  c4 b4 a4 g4 |
  a2 g4 e4 |
  d1~ |
  d2
  
  g2 |
  a4 g4 a4 c4 |
  d2 d2 |
  c4 a4 a8( g8) e4 |
  d2
  
  d2 |
  d4 c4 e4 g4 |
  a2 g4 e4 |
  d2 d4 c4 |
  e2
  
  a2 |
  c4 b4 a4 g4 |
  a2 g4 e4 |
  d1~ |
  d2 \bar "|."
}

AltoVerseMusic = \relative c' {
  \tag #'usePartials { \partial 2 }
  a2 |
  a4 a4 c4 b4 |
  a4( b4) c4 c4 |
  a2 a4 c4 |
  c2
  
  c2 |
  c4 d4 e4 d4 |
  e2 d4 c4 |
  a1~ |
  a2
  
  c2 |
  c4 e4 f4 g4 |
  f2 f2 |
  g4 e4 d4 c4 |
  a2
  
  a2 |
  a4 a4 b4 b4 |
  a4( b4) c4 c4 |
  a2 a4 c4 |
  c2
  
  c2 |
  c4 d4 e4 d4 |
  e2 d4 c4 |
  a1~ |
  a2 \bar "|."
}

TenorVerseMusic = \relative c {
  \tag #'usePartials { \partial 2 }
  f2 |
  f4 e4 g4 e4 |
  d2 e4 g4 |
  f2 f4 f4 |
  g2
  
  f2 |
  g4 f8( g8) a4 b4 |
  c2 g4 g4 |
  f1~ |
  f2
  
  g2 |
  f4 c'4 c4 g4 |
  a2 a4( b4) |
  c4 c4 a4 g4 |
  f2
  
  f2 |
  f4 e4 g4 e4 |
  d2 e4 g4 |
  f2 f4 f4 |
  g2
  
  f2 |
  g4 f8( g8) a4 b4 |
  c2 g4 g4 |
  f1~ |
  f2 \bar "|."
}

BassVerseMusic = \relative c {
  \tag #'usePartials { \partial 2 }
  d2 |
  d4 a4 g4 g4 |
  f2 c'4 c4 |
  d2 d4 d4 |
  c2
  
  f2 |
  e4 d4 c4 b4 |
  a2 b4 c4 |
  d1~ |
  d2
  
  e2 |
  f4 g4 f4 e4 |
  d2 d2 |
  e4 c4 b4 c4 |
  d2
  
  d2 |
  d4 a4 g4 g4 |
  f2 c'4 c4 |
  d2 d4 d4 |
  c2
  
  f2 |
  e4 d4 c4 b4 |
  a2 b4 c4 |
  d1~ |
  d2 \bar "|."
}

SheetMusicVerseBreaks = \relative c {
  \tag #'usePartials { \partial 2 }
  s2 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s2 \bar "" \break \noPageBreak
  
  s2 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s2 \bar "" \break \noPageBreak
  
  s2 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s2 \bar "" \break \noPageBreak
  
  s2 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s2 \bar "" \break \noPageBreak
  
  s2 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s2 \bar "|."
}

SlidesVerseBreaks = \relative c {
  \setSystemOffset \defaultTopSystemOffset
  \setSystemOffset \defaultBottomSystemOffset
}

VerseOne = \lyricmode {
  \set stanza = "1. "
  What won -- drous love is this,
  O my soul, O my soul,
  what won -- drous love is this,
  O my soul!
  What won -- drous love is this
  that caused the Lord of bliss
  to bear the dread -- ful curse
  for my soul, for my soul,
  to ber the dread -- ful curse
  for my soul!
}

VerseTwo = \lyricmode {
  \set stanza = "2. "
  When I was sink -- ing down,
  sink -- ing down, sink -- ing down,
  when I was sink -- ing down, sink -- ing down;
  when I was sink -- ing down
  be -- neath God's right -- eous frown,
  Christ laid a -- side his crown
  for my soul, for my soul,
  Christ laid a -- side his crown
  for my soul!
}

VerseThree = \lyricmode {
  \set stanza = "3. "
  To God and to the Lamb
  I will sing, I will sing,
  to God and to the Lamb
  I will sing!
  To God and to the Lamb,
  who is the great "\"I" "AM,\""
  while mil -- lions join the theme,
  I will sing, I will sing,
  while mil -- lions join the theme,
  I will sing.
}

VerseFour = \lyricmode {
  \set stanza = "4. "
  And when from death I'm free,
  I'll sing on, I'll sing on,
  and when from death I'm free,
  I'll sing on!
  And when from death I'm free,
  I'll sing and joy -- ful be,
  and through e -- ter -- ni -- ty
  I'll sing on, I'll sing on,
  and through e -- ter -- ni -- ty
  I'll sing on.
}
