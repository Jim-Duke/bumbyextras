\version "2.19.49"
#(use-modules (guile-user))

#(ly:set-option 'relative-includes #t)
\include "../../../LilypondTemplates/functions.ly"
\include "../../../LilypondTemplates/hymns.ly"
\include "../hymn_settings.ly"

global = {
  \key f \major
  \time 4/4
  \tempo 4 = 95
}

MajorKey = ##t

%%
%% Hymn Metadata Variables
%%

Title = "Naked As From the Earth We Came"
SongNumber = \naked_as_from_the_earth_we_came_winchester_old_bumby_number
RightFirstPage = \naked_as_from_the_earth_we_came_winchester_old_bumby_number_rhs
FirstPage = #(if RightFirstPage 1 2)

LeaderHints = \markup {
  \fontsize #-4
  \normal-text { "F - 4 - DO" }
}

Scripture = "He said, \"Naked I came from my mother's womb,
 And naked I shall return there.
 The Lord gave and the Lord has taken away.
 Blessed be the name of the Lord.\" -- Job 1:21 NASB95"

ShowScriptureOnSheetMusic = ##t

\header {
  title = \Title
  tune = "WINCHESTER OLD"
  meter = "CM"
  composer = "Este's Psalter (1582)"
  arranger = "Monk's Hymns Ancient and Modern, alt"
  poet = "Isaac Watts (1707)"
  songNumber = \SongNumber
  lhs = #(if RightFirstPage LeaderHints SongNumber)
  rhs = #(if RightFirstPage SongNumber LeaderHints)
  copyright = "In the Public Domain"
  tagline = ##f
}

SopranoVerseMusic = \relative c' {
  \tag #'usePartials { \partial 4 }
  f4 |
  a4. a8 g4 f4 |
  bes4 bes4 a4 g4 |
  a4 c4 c4 b4 |
  c2.
  
  a4 |
  d4. c8 bes4 a4 |
  g4 f4 e4 a4 |
  g4 f4 f4 e4 |
  f2. \bar "|."
}

AltoVerseMusic = \relative c' {
  \tag #'usePartials { \partial 4 }
  c4 |
  f4 f4 e4 d4 |
  d4 f4 f4 e4 |
  f4 g4 g4 d4 |
  e2.
  
  f4 |
  f4. e8 f4 f4 |
  e4 d4 cis4 c4 |
  e4 d4 d4 c4 |
  c2. \bar "|."
}

TenorVerseMusic = \relative c' {
  \tag #'usePartials { \partial 4 }
  a4 |
  c4. c8 c4 a4 |
  bes4 d4 c4 c4 |
  c4 c4 d4 g,4 |
  g2.
  
  a4 |
  bes4. g8 f4 c'4 |
  c4 a4 a4 a4 |
  c4 a4 bes4 g4 |
  a2. \bar "|."
}

BassVerseMusic = \relative c {
  \tag #'usePartials { \partial 4 }
  f4 |
  f4 a,4 c4 d4 |
  bes4 bes4 f'4 c4 |
  f4 e4 g4 g,4 |
  c2.
  
  f4 |
  bes,4. c8 d4 f4 |
  c4 d4 a4 f'4 |
  c4 d4 bes4 c4 |
  f2. \bar "|."
}

SheetMusicVerseBreaks = {
  \tag #'usePartials { \partial 4 }
  s4 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s2. \bar "" \break
  
  s4 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s2. \bar "|."
}

SlidesVerseBreaks = {
  \tag #'usePartials { \partial 4 }
  \setSystemOffset \defaultTopSystemOffset
  s4 | \noBreak
  s1 | \noBreak
  s2. \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s4 | \noBreak
  s1 | \noBreak
  s2. \bar "" \pageBreak
  
  %--------------------------------------------
  
  \setSystemOffset \defaultTopSystemOffset
  s4 | \noBreak
  s1 | \noBreak
  s2. \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s4 | \noBreak
  s1 | \noBreak
  s2. \bar "|."
}

VerseOne = \lyricmode {
  \set stanza = "1. "
  Nak -- ed as from the earth we came,
  And crept to life at first,
  We to the earth re -- turn a -- gain,
  And min -- gle with our dust.
}

VerseTwo = \lyricmode {
  \set stanza = "2. "
  The dear de -- lights we here en -- joy,
  And fond -- ly call our own,
  Are but short fav -- ors bor -- rowed now,
  To be re -- paid a -- non.
}

VerseThree = \lyricmode {
  \set stanza = "3. "
  'Tis God that lifts our com -- forts high,
  Or sinks them in the grave;
  He gives, and, bles -- sed be his name!
  He takes but what he gave.
}

VerseFour = \lyricmode {
  \set stanza = "4. "
  Peace, all our an -- gry pas -- sions, then;
  Let each re -- bel -- lious sigh
  Be si -- lent at his sove -- reign will,
  And ev -- 'ry mur -- mur die.
}

VerseFive = \lyricmode {
  \set stanza = "5. "
  If smil -- ing mer -- cy crown our lives,
  Its prais -- es shall be spread;
  And we'll a -- dore the just -- ice too
  That strikes our com -- forts dead.
}
