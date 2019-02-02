\version "2.19.49"
#(use-modules (guile-user))

#(ly:set-option 'relative-includes #t)
\include "../../../LilypondTemplates/functions.ly"
\include "../../../LilypondTemplates/hymns.ly"
\include "../hymn_settings.ly"

global = {
  \key c \major
  \time 4/4
  \tempo 4 = 85
}

MajorKey = ##t

%%
%% Hymn Metadata Variables
%%

Title = "Faithful Love"
SongNumber = \faithful_love_fc_number
RightFirstPage = \faithful_love_fc_number_rhs
FirstPage = #(if RightFirstPage 1 2)

LeaderHints = \markup {
  \fontsize #-4
  \normal-text { "C - 4 - DO" }
}

Scripture = "His compasions fail not...Great is Type faithfulness. -- Lamentations 3:22-23"

ShowScriptureOnSheetMusic = ##t

\header {
  title = \Title
  tune = "FAITHFUL LOVE"
  meter = "12.12.12.10"
  composer = "Ken Young"
  poet = "Ken Young"
  songNumber = \SongNumber
  lhs = #(if RightFirstPage LeaderHints SongNumber)
  rhs = #(if RightFirstPage SongNumber LeaderHints)
  copyright = "Words and Music Copyright © 1993 by Hallal Music, Preston Christian Music.  Administered by LCS Music Group.  All rights reserved."
  license = "Used by permission"
  tagline = ##f
}

SopranoVerseMusic = \relative c' {
  \tag #'usePartials { \partial 4 }
  c8 d8 |
  e4 d8 e8 f4 e8 f8 |
  g4 c8 b8 a4
  
  c,8 d8 |
  e4 f8 e8 d4 c8 d8 |
  e4 f8 g8 d4
  
  c8 d8 |
  e4 d8 e8 f4 e8 f8 |
  g4 c8 b8 a4
  
  c,8 d8 |
  e4 f8 e8 d4 \tuplet 3/2 { d8 c8 b8 } |
  c2. \bar "||"
}

SopranoChorusMusic = \relative c'' {
  \tag #'usePartials { \partial 4 }
  g8 c8 |
  b2. g8 d'16( c16) |
  d16( c8.~ c2) c8 b8 |
  a4 b4 c8 b16 c16~ c8 a16( g16) |
  a16( g8.~ g2) g8 c8 |
  b4 b2 g8 d'16( c16) |
  d16( c8.~ c2) c8 b8 |
  a4 a8 b16 c16~ c4
  
  c8 b16 c16~ |
  c4. c8 c8 b16 a16~ a8 b8 c2. \bar "|."
}

AltoVerseMusic = \relative c' {
  \tag #'usePartials { \partial 4 }
  c8 b8 |
  c4 b8 c8 d4 c8 d8 |
  e4 e8 e8 e8( f8)
  
  c8 b8 |
  c4 d8 c8 b4 a8 b8 |
  c4 d8 e8 b4
  
  a8 b8 |
  c4 b8 c8 d4 c8 d8 |
  e4 e8 e8 e8( f8)
  
  c8 b8 |
  c4 d8 c8 b4 \tuplet 3/2 { b8 a8 g8 } |
  a4( g2) \bar "||"
}

AltoChorusMusic = \relative c' {
  \tag #'usePartials { \partial 4 }
  \partcombineApart
  r4 |
  r4 d8 e8 f2( |
  e4) e8 f16( e16) f16( e8.)
  \partcombineAutomatic
  e8 g8 |
  
  f4 g4 a8 g16 a16~ a8 f16( e16) |
  f16( e8. d4 e4)
  \partcombineApart
  r4 |
  r4 d8 e8 f4 f4( |
  \partcombineAutomatic
  e4) e8 f16( e16) f16( e8.) e8 g8 |
  f4 f8 f16 g16~ g4
  
  g8 e16 f16~ |
  f4. f8 f8 f16 f16~ f8 f8 |
  f4( d4 e4) \bar "|."
}

TenorVerseMusic = \relative c {
  \tag #'usePartials { \partial 4 }
  e8 f8 |
  g4 g8 g8 b4 a8 b8 |
  c4 g8 g8 c4
  
  g8 g8 |
  g4 g8 g8 g4 g8 g8 |
  g4 g8 c8 b8( a8)
  
  g8 f8 |
  g4 g8 g8 b4 a8 b8 |
  c4 g8 g8 c4
  
  g8 g8 |
  g4 g8 g8 g4 \tuplet 3/2 { g8 g8 f8 } |
  f4( e2) \bar "||"
}

TenorChorusMusic = \relative c' {
  \tag #'usePartials { \partial 4 }
  r4 |
  r4 g8 g8 g2~ |
  g4 g8 a16( g16) a16( g8.) g8 c8 |
  
  c4 c4 c8 c16 c16~ c8 c8 |
  c4( b4 c4) r4 |
  r4 g8 g8 g4 g4~ |
  g4 g8 a16( g16) a16( g8.) g8 c8 |
  c4 c8 c16 c16~ c4
  
  c8 c16 a16~ |
  a4. a8 g8 g16 c16~ c8 g8 |
  a4( g2) \bar "|."
}

BassVerseMusic = \relative c {
  \tag #'usePartials { \partial 4 }
  c8 g8 |
  c4 c8 c8 g4 g8 g8 |
  c4 c8 c8 c8( d8)
  
  e8 f8 |
  g4 g8 g8 g,4 g8 g8 |
  c4 c8 c8 g4
  
  g8 g8 |
  c4 c8 c8 g4 g8 g8 |
  c4 c8 c8 c8( d8)
  
  e8 f8 |
  g4 g8 g8 g,4 \tuplet 3/2 { g8 g8 g8 } |
  c2. \bar "||"
}

BassChorusMusic = \relative c {
  \tag #'usePartials { \partial 4 }
  c8 c8 |
  g2. g8 g8 |
  c2. c8 e8 |
  f4 f4 f8 f16 f16~ f8 g,8 |
  c4( g4 c4) c8 c8 g4 g2 g8 g8 |
  c2. c8 e8 |
  f4 f8 f16 e16~ e4
  
  e8 e16 d16~ |
  d4. d8 g8 g16 g16~ g8 g,8 |
  c2. \bar "|."
}

SheetMusicVerseBreaks = {
  \tag #'usePartials { \partial 4 }
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
  s2. \bar "||"
}

SheetMusicChorusBreaks = {
  \tag #'usePartials { \partial 4 }
  s4 | \noBreak
  s1 | \noBreak
  s1 | \break
  
  s1 | \noBreak
  s1 | \noBreak
  s1 | \break
  
  s1 | \noBreak
  s2. \bar "" \break
  
  s4 | \noBreak
  s1 | \noBreak
  s2. \bar "|."
}

AlignVerseMusic = \SopranoVerseMusic
AlignChorusA = \SopranoChorusMusic
AlignChorusB = {
  \tag #'usePartials { \partial 4 }
  r4 |
  r4 c8 c8 c2~ |
  c4 c8 c8 c4 r4 |
  r1 |
  r1 |
  r4 c8 c8 c4 c4~ |
  c4 c8 c8 c4 r4 |
  r1
  r1 |
  r2. \bar "|."
}
AlignChorusC = {
  \tag #'usePartials { \partial 4 }
  c8 c8 |
  c2. c8 c8 |
  c2. r4 |
  r1 |
  r2. c8 c8 |
  c4 c2 c8 c8 |
  c2. r4 |
  r1 |
  r1 |
  r1 |
  r2. \bar "|."
}

SlidesVerseBreaks = \relative c {
  \setSystemOffset \defaultTopSystemOffset
  \setSystemOffset \defaultBottomSystemOffset
}

VerseOne = \lyricmode {
  \set stanza = "1. "
  Faith -- ful love flow -- ing down from the thorn cov -- ered crown,
  Makes me whole, saves my soul, wash -- es whit -- er than snow;
  Faith -- ful love calms each fear, reach -- es down, dries each tear,
  Holds my hand when I can't stand on my own.
}

VerseTwo = \lyricmode {
  \set stanza = "2. "
  Faith -- ful love is a friend just when hope seems to end,
  Wel -- come face, sweet em -- brace, tend -- er touch filled with grace;
  Faith -- ful love, end -- les pow'r, liv -- ing flame, Spir -- it's fire,
  Burn -- ing bright in the night, guid -- ing my way.
}

ChorusA = \lyricmode {
  Faith -- ful love from a -- bove came to earth to show the Fa -- ther's love;
  And I'll nev -- er be the same, for I've seen faith -- ful love face to face,
  and Je -- sus is His name.
}

ChorusB = \lyricmode {
  Faith -- ful love, from a -- bove
  And I'll nev -- er be the same,
}

ChorusC = \lyricmode {
  Faith -- ful love from a -- bove
  And I'll nev -- er be the same,
}
