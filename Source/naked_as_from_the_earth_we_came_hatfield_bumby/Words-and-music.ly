\version "2.19.49"
#(use-modules (guile-user))

#(ly:set-option 'relative-includes #t)
\include "../../../LilypondTemplates/functions.ly"
\include "../../../LilypondTemplates/hymns.ly"
\include "../hymn_settings.ly"

global = {
  \key bes \major
  \time 4/4
  \tempo 4 = 95
}

MajorKey = ##t

%%
%% Hymn Metadata Variables
%%

Title = "Naked As From the Earth We Came"
SongNumber = \naked_as_from_the_earth_we_came_hatfield_bumby_number
RightFirstPage = \naked_as_from_the_earth_we_came_hatfield_bumby_number_rhs
FirstPage = #(if RightFirstPage 1 2)

LeaderHints = \markup {
  \fontsize #-4
  \normal-text { "Gm - 4 - DO" }
}

Scripture = "He said, \"Naked I came from my mother's womb,
 And naked I shall return there.
 The Lord gave and the Lord has taken away.
 Blessed be the name of the Lord.\" -- Job 1:21 NASB95"

ShowScriptureOnSheetMusic = ##t

\header {
  title = \Title
  tune = "HATFIELD"
  meter = "CM"
  composer = "American Folk Song"
  arranger = "Amzi Chapin (1798)"
  poet = "Isaac Watts (1707)"
  songNumber = \SongNumber
  lhs = #(if RightFirstPage LeaderHints SongNumber)
  rhs = #(if RightFirstPage SongNumber LeaderHints)
  copyright = "In the Public Domain"
  tagline = ##f
}

OldSopranoVerseMusic = \transpose a g \relative c'' {
  c4 c8 b8 a4 a4 |
  b4 e4 c4 a4 |
  g4 a4 b4 e4 |
  e1 |
  
  b4 b8 b8 c4 a4 |
  b4 g4 c4 c4 |
  e4 e4 d8( c8) b4 |
  a1 |
  
  c4 c8 c8 c4 c4 |
  b4 b4 a4 e'4 |
  e4 e4 g4 e4 |
  e2
  
  b2 |
  b4 g4 c4 c4 |
  d4 d4 e4 d4 |
  e4 e4 d8( c8) b4 |
  a1 \bar "|."
}

SopranoVerseMusic = \transpose a g \relative c'' {
  a4 a8 b8 c4 d4 |
  e4 c4 a4 a4 |
  b4 c4 d4 c4 |
  b1 |
  
  e4 e8 e8 e4 c4 |
  d4 b4 g4 a4 |
  b4 c4 a4 g4 |
  a1 |
  
  e'4 e8 e8 e4 f4 |
  g4 e4 c4 c4 |
  f4 e4 d4 c4 |
  b2
  
  e2 |
  e4 c4 a4 c4 |
  d4 b4 g4 a4 |
  b4 c4 a4 g4 |
  a1 \bar "|."
}

AltoVerseMusic = \transpose a g \relative c' {
  e4 e8 e8 e4 f4 |
  g4 e4 c4 e4 |
  g4 e4 f4 e8( d8) |
  e1 |
  
  g4 g8 g8 a4 e4 |
  d4 d4 e4 f4 |
  g4 g4 f4 e4 |
  e1 |
  
  a4 a8 a8 a4 a4 |
  b4 b8. a16 e4 e4 |
  a4 e4 g4 a4 |
  g2
  
  g2 |
  g4 g4 a4 g4 |
  f4 f4 e4 d4 |
  e4 e4 f4 e4 |
  e1
}

OldTenorVerseMusic = \transpose a g \relative c' {
  a4 a8 b8 c4 d4 |
  e4 c4 a4 a4 |
  b4 c4 d4 c4 |
  b1 |
  
  e4 e8 e8 e4 c4 |
  d4 b4 g4 a4 |
  b4 c4 a4 g4 |
  a1 |
  
  e'4 e8 e8 e4 f4 |
  g4 e4 c4 c4 |
  f4 e4 d4 c4 |
  b2
  
  e2 |
  e4 c4 a4 c4 |
  d4 b4 g4 a4 |
  b4 c4 a4 g4 |
  a1 \bar "|."
}

TenorVerseMusic = \transpose a g \relative c' {
  c4 c8 b8 a4 a4 |
  b4 e4 c4 a4 |
  g4 a4 b4 e4 |
  e1 |
  
  b4 b8 b8 c4 a4 |
  b4 g4 c4 c4 |
  e4 e4 d8( c8) b4 |
  a1 |
  
  c4 c8 c8 c4 c4 |
  b4 b4 a4 e'4 |
  e4 e4 g4 e4 |
  e2
  
  b2 |
  b4 g4 c4 c4 |
  d4 d4 e4 d4 |
  e4 e4 d8( c8) b4 |
  a1 \bar "|."
}

BassVerseMusic = \transpose a g \relative c' {
  a4 a8 e8 a4 g8( f8) |
  e4 e4 f4 d4 |
  e4 a4 g4 a4 |
  e1 |
  
  e4 e8 e8 a4 a4 |
  g4 g4 c,4 f4 |
  e4 c4 d4 e4 |
  a,1 |
  
  a'4 a8 a8 a4 a4 |
  e4 e4 a4 a4 |
  a4 a4 g4 a4 |
  e2
  
  e2 |
  e4 e4 f4 e4 |
  d4 d4 e4 f4 |
  e4 c4 d4 e4 |
  a,1 \bar "|."
}

SheetMusicVerseBreaks = {
  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 | \break
  
  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 | \break
  
  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s2 \bar "" \break
  
  s2 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 \bar "|."
}

SlidesVerseBreaks = {
  \setSystemOffset \defaultTopSystemOffset
  s1 | \noBreak
  s2. \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s4 | \noBreak
  s1 | \noBreak
  s1 | \pageBreak
  
  %------------------------------------------
  
  \setSystemOffset \defaultTopSystemOffset
  s1 | \noBreak
  s2. \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s4 | \noBreak
  s1 | \noBreak
  s1 | \pageBreak
  
  %------------------------------------------
  
  \setSystemOffset \defaultTopSystemOffset
  s1 | \noBreak
  s2. \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s4 | \noBreak
  s1 | \noBreak
  s2 \bar "" \pageBreak
  
  %------------------------------------------
  
  \setSystemOffset \defaultTopSystemOffset
  s2 | \noBreak
  s1 | \noBreak
  s2. \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s4 | \noBreak
  s1 | \noBreak
  s1 \bar "|."
}

VerseOne = \lyricmode {
  \set stanza = "1. "
  Nak -- ed as from the earth we came,
  And crept to life at first,
  We to the earth re -- turn a -- gain,
  And min -- gle with our dust.

  The dear de -- lights we here en -- joy,
  And fond -- ly call our own,
  Are but short fav -- ors bor -- rowed now,
  To be re -- paid a -- non.
}

VerseTwo = \lyricmode {
  \set stanza = "2. "
  'Tis God that lifts our com -- forts high,
  Or sinks them in the grave;
  He gives, and, bles -- sed be his name!
  He takes but what he gave.

  Peace, all our an -- gry pas -- sions, then;
  Let each re -- bel -- lious sigh
  Be si -- lent at his sove -- reign will,
  And ev -- 'ry mur -- mur die.
}

VerseThree = \lyricmode {
  \set stanza = "3. "
  If smil -- ing mer -- cy crown our lives,
  Its prais -- es shall be spread;
  And we'll a -- dore the just -- ice too
  That strikes our com -- forts dead.
}
