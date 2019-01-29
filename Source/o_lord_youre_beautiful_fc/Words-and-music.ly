\version "2.19.49"
#(use-modules (guile-user))

#(ly:set-option 'relative-includes #t)
\include "../../../LilypondTemplates/functions.ly"
\include "../../../LilypondTemplates/hymns.ly"
\include "../hymn_settings.ly"

global = {
  \key f \major
  \time 4/4
  \tempo 4 = 115
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
  meter = "6.6.7.6"
  composer = "Keith Green"
  poet = "Keith Green"
  songNumber = \SongNumber
  lhs = #(if RightFirstPage LeaderHints SongNumber)
  rhs = #(if RightFirstPage SongNumber LeaderHints)
  copyright = "Words and Music Copyright © 1980 by Birdwing Music/BMG Songs, Inc. All rights reserved."
  license = "Used by permission"
  tagline = ##f
}

SopranoVerseMusic = \relative c' {
  \tag #'usePartials { \partial 4 }
  d4 |
  d4 g4 a4 b4 |
  a4 g4 e4. e8 |
  fis4 g4 a4 fis4 |
  g2.
  
  d4 |
  d4 g4 a4 b4 |
  a4 g4 e4. e8 |
  fis4 g4 a4 fis4 |
  g2.
  
  b4 |
  d2. e4 |
  d2. b4 |
  a4 g4 e4 fis4 |
  g2. \bar "|."
}

AltoVerseMusic = \relative c' {
  \tag #'usePartials { \partial 4 }
  d4 |
  d4 d4 d4 g4 |
  e4 e4 c4. e8 |
  d4 d4 d4 d4 |
  d2.
  
  d4 |
  d4 d4 d4 g4 |
  e4 e4 c4. e8 |
  d4 d4 d4 d4 |
  d2.
  
  g4 |
  g4 fis4 g4 g4 |
  g4 fis4 g4 g4 |
  e4 e4 c4 d4 |
  d2. \bar "|."
}

TenorVerseMusic = \relative c' {
  \tag #'usePartials { \partial 4 }
  b4 |
  b4 b4 c4 d4 |
  c4 c4 g4. c8 |
  a4 b4 c4 a4 |
  b2.
  
  b4 |
  b4 b4 c4 d4 |
  c4 c4 g4. c8 |
  a4 g4 c4 a4 |
  b2.
  
  d4 |
  b4 a4 b4 c4 |
  b4 a4 b4 d4 |
  c4 c4 a4 c4 |
  b2. \bar "|."
}

BassVerseMusic = \relative c' {
  \tag #'usePartials { \partial 4 }
  g4 |
  g4 g4 g4 g4 |
  c,4 c4 c4. c8 |
  d4 d4 d4 d4 |
  g2.
  
  g4 |
  g4 g4 g4 g4 |
  c,4 c4 c4. c8 |
  d4 d4 d4 d4 |
  g2.
  
  g4 |
  g2. g4 |
  g2. g4 |
  c,4 c4 d4 d4 |
  <g g,>2. \bar "|."
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
  s2. \bar "" \break
  
  s4 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s2. \bar "|."
}

AlignVerseMusic = \AltoVerseMusic

SlidesVerseBreaks = \relative c {
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
  My Lord, when first I came to You,
  You prom -- ised me a price;
  To give up self for life made new,
  To toil and sc -- ri -- fice.
  To give (to give) up self, (up self)
  to toil and sac -- ri -- fice.
}

VerseTwo = \lyricmode {
  \set stanza = "2. "
  But as I lived Your sac -- ri -- fice,
  I left the things be -- fore;
  I could not love what once en -- ticed,
  For now I loved You more
  I could (I could) not love, (not love)
  for now I loved You more.
}

VerseThree = \lyricmode {
  \set stanza = "3. "
  In You, I learned that all I'd lost
  Was worth -- less, vain, and small,
  So when I turned to count the cost,
  I saw no cost at all.
  So when (So when) I turned, (I turned)
  I saw no cost at all.
}
