\version "2.19.49"
#(use-modules (guile-user))

#(ly:set-option 'relative-includes #t)
\include "../../../LilypondTemplates/functions.ly"
\include "../../../LilypondTemplates/hymns.ly"
\include "../hymn_settings.ly"

global = {
  \key g \major
  \time 3/4
  \tempo 4 = 90
}

MajorKey = ##t

%%
%% Hymn Metadata Variables
%%

Title = "Jesus, Let Us Come To Know You"
SongNumber = \jesus_let_us_come_to_know_you_fc_number
RightFirstPage = \jesus_let_us_come_to_know_you_fc_number_rhs
FirstPage = #(if RightFirstPage 1 2)

LeaderHints = \markup {
  \fontsize #-4
  \normal-text { "G - 3 - MI" }
}

Scripture = "I count all things but loss for the excellency of knowing Christ Jesus my Lord. -- Philippians 3:8"

ShowScriptureOnSheetMusic = ##t

\header {
  title = \Title
  tune = "JESUS LET US"
  meter = "8.7.8.7"
  composer = "Michael Card"
  poet = "Michael Card"
  arranger = "Dane K. Shepard"
  songNumber = \SongNumber
  lhs = #(if RightFirstPage LeaderHints SongNumber)
  rhs = #(if RightFirstPage SongNumber LeaderHints)
  copyright = "Words and Music Copyright © 1982 by Whole Armor, Adm. by the Kruger Org. Inc.  All rights reserved."
  license = "Used by permission"
  tagline = ##f
}

SopranoVerseMusic = \relative c'' {
  b4 d2 |
  a4 d2 |
  g,4 b2 |
  fis4 b2 |
  e,4 g2 |
  d4 g2 |
  b2 c4 |
  a4( b4 c4) |
  b4 d2 |
  a4 d2 |
  g,4 b2 |
  fis4 b2 |
  e,4 g2 |
  d4 g2 |
  fis4( g4) a4 |
  g2. \bar "|."
}

AltoVerseMusic = \relative c'' {
  g4 g2 |
  fis4 fis2 |
  e4 e2 |
  d4 fis2 |
  c4 e2 |
  
  d4 d2 |
  g2 g4 |
  fis4( g4 a4) |
  g4 b2 |
  fis4 fis2 |
  
  e4 e2 |
  d4 d2 |
  c4 c2 |
  d4 d2 |
  d4( e4) fis4 |
  d2. \bar "|."
}

TenorVerseMusic = \relative c' {
  d4 b4( d4) |
  d4 d2 |
  b4 g2 |
  b4 d2 |
  g,4 c2 |
  
  b4 b2 |
  d2 c4 |
  d2. |
  d4 d2 |
  d4 d2 |
  
  b4 g2 |
  b4 b2 |
  g4 a2 |
  b4 b2 |
  a4( b4) c4 |
  b2. \bar "|."
}

BassVerseMusic = \relative c {
  g4 g4( b4) |
  d4 d2 |
  e4 e2 |
  b4 b2 |
  c4 a2 |
  
  g4 g2 |
  g'4( fis4) e4 |
  d2. |
  g4 g2 |
  d4 d2 |
  
  e4 e2 |
  b4 b2 |
  c4 a2 |
  g4 g2 |
  d'2 d4 |
  g,2. \bar "|."
}

SheetMusicVerseBreaks = {
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

AlignVerseMusic = \AltoVerseMusic

SlidesVerseBreaks = \relative c {
  \setSystemOffset \defaultTopSystemOffset
  \setSystemOffset \defaultBottomSystemOffset
}

VerseOne = \lyricmode {
  \set stanza = "1. "
  Je -- sus, let us come to know You,
  Let us see You face to face;
  Touch us, hold us, use us, mold us,
  On -- ly let us live in You.
}

VerseTwo = \lyricmode {
  \set stanza = "2. "
  Je -- sus, draw us ev -- er near -- er,
  Hold us in Your lov -- ing arms;
  Wrap us in Your gen -- tle pres -- ence,
  When the end comes, bring us home.
}
