\version "2.19.49"
#(use-modules (guile-user))

#(ly:set-option 'relative-includes #t)
\include "../../../LilypondTemplates/functions.ly"
\include "../../../LilypondTemplates/hymns.ly"
\include "../hymn_settings.ly"

global = {
  \key f \major
  \time 4/4
  \tempo 4 = 70
}

MajorKey = ##t

%%
%% Hymn Metadata Variables
%%

Title = "O Lord, You're Beautiful"
SongNumber = \o_lord_youre_beautiful_fc_number
RightFirstPage = \o_lord_youre_beautiful_fc_number_rhs
FirstPage = #(if RightFirstPage 1 2)

LeaderHints = \markup {
  \fontsize #-4
  \normal-text { "G - 4 - SOL" }
}

Scripture = "One thing have I decided..to behold the beauty of the Lord. Psalm 27:4"

ShowScriptureOnSheetMusic = ##t

\header {
  title = \Title
  tune = "O LORD"
  meter = "6.6.8.6"
  composer = "Keith Green"
  poet = "Keith Green"
  songNumber = \SongNumber
  lhs = #(if RightFirstPage LeaderHints SongNumber)
  rhs = #(if RightFirstPage SongNumber LeaderHints)
  copyright = "Words and Music Copyright © 1980 by Birdwing Music/BMG Songs, Inc. All rights reserved."
  license = "Used by permission"
  tagline = ##f
}

SopranoVerseMusic = \relative c'' {
  \tag #'usePartials { \partial 8 }
  a8 |
  a4. a8 bes4 a4 |
  g2. g4 |
  a4. c8 d4 c4 |
  c2. g4 |
  
  a4. bes8 a4. a8 |
  a4 g4 f4. a8 |
  bes4 a4 g4. f8 |
  f2. r8 \bar "|."
}

AltoVerseMusic = \relative c' {
  \tag #'usePartials { \partial 8 }
  f8 |
  f4. f8 f4 f4 |
  e2. e4 |
  f4. f8 f4 f4 |
  f2( e4) g4 |
  
  f4. f8 e4 e4 |
  f4 c4 c4. f8 |
  f4 f4 f4( e8) d8 |
  c2. r8 \bar "|."
}

TenorVerseMusic = \relative c' {
  \tag #'usePartials { \partial 8 }
  c8 |
  c4. c8 d4 c4 |
  c2. c4 |
  c4. a8 bes4 a4 |
  g2. c4 |
  
  c4. c8 cis4 cis4 |
  d4 c8 bes8 a4. c8 |
  d4 d4 c4. bes8 |
  a2. r8 \bar "|."
}

BassVerseMusic = \relative c {
  \tag #'usePartials { \partial 8 }
  f8 |
  f4. f8 f4 f4 |
  c2. c4 |
  f4. f8 bes,4 c4 |
  c2. e4 |
  
  f4. f8 e4 a,4 |
  d4 e4 f4. f8 |
  bes,4 bes4 c4. c8 |
  f2. r8 \bar "|."
}

SheetMusicVerseBreaks = {
  \tag #'usePartials { \partial 8 }
  s8 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s2. \bar "" \break
  
  s4 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s2. s8 \bar "|." \break
}

AlignVerseMusic = \SopranoVerseMusic

SlidesVerseBreaks = \relative c {
  \setSystemOffset \defaultTopSystemOffset
  s8 | \noBreak
  s1 | \noBreak
  s2. s8 \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s8 | \noBreak
  s1 | \noBreak
  s2. \bar "" \pageBreak
  
  %----------------------------------------
  
  \setSystemOffset \defaultTopSystemOffset
  s4 | \noBreak
  s1 | \noBreak
  s2. s8 \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s8 | \noBreak
  s1 | \noBreak
  s2. \bar "" \pageBreak
  
  %----------------------------------------
  
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
  O Lord, You're beau -- ti -- ful,
  Your face is all I seek;
  And when Your eyes are on this child,
  Your grace a -- bounds in me.
}

VerseTwo = \lyricmode {
  \set stanza = "2. "
  O Lord, You're beau -- ti -- ful,
  Your touch is all I need;
  when Your hand is on this child,
  Your heal -- ing I re -- ceive.
}

VerseThree = \lyricmode {
  \set stanza = "3. "
  O Lord, please light the fire
  That once burned bright and clear;
  Re -- place the lamp of my first love
  That burns with ho -- ly fear.
}
