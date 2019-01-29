\version "2.19.49"
#(use-modules (guile-user))

#(ly:set-option 'relative-includes #t)
\include "../../../LilypondTemplates/functions.ly"
\include "../../../LilypondTemplates/hymns.ly"
\include "../hymn_settings.ly"

global = {
  \key f \major
  \time 4/4
  \tempo 4 = 90
}

MajorKey = ##t

%%
%% Hymn Metadata Variables
%%

Title = "More Precious Than Silver"
SongNumber = \more_precious_than_silver_fc_number
RightFirstPage = \more_precious_than_silver_fc_number_rhs
FirstPage = #(if RightFirstPage 1 2)

LeaderHints = \markup {
  \fontsize #-4
  \normal-text { "F - 4 - MI" }
}

Scripture = "For [His] proceeds are better than silver and [His] gain than fine gold...
  And all the things you may desire cannot compare with [Him]. Proverbs 3:14, 15"

ShowScriptureOnSheetMusic = ##t

\header {
  title = \Title
  tune = "MORE PRECIOUS"
  meter = "Irregular"
  composer = "Lynn De Shazo"
  poet = "Lynn De Shazo"
  songNumber = \SongNumber
  lhs = #(if RightFirstPage LeaderHints SongNumber)
  rhs = #(if RightFirstPage SongNumber LeaderHints)
  copyright = "Copyright © 1982 by Integrity's Hosanna! Music.  All rights reserved."
  license = "Used by permission"
  tagline = ##f
}

SopranoRepeat = \relative c' {
  c4^"Repeat slowly" |
  bes'8 bes4. a4. a8 |
  g4. g8 f4 e4 |
  f2.
}

SopranoVerseMusic = \relative c'' {
  a2. c4 |
  g2. a4 |
  bes4 bes2 a4 |
  f4 c2. |
  a'2. c4 |
  g2. f4 |
  
  d4 f2 a4 |
  g1 |
  a2. c4 |
  g2. a4 |
  bes4 a8 bes8~ bes4 a4 |
  
  f4 c2 \repeat volta 2 \SopranoRepeat
}

AltoRepeat = \relative c' {
  a4 |
  d8 d4. c4. c8 |
  d4. d8 d4 c4 |
  c2.
}

AltoVerseMusic = \relative c' {
  f2. f4 |
  g2. g4 |
  f4 f2 f4 |
  c4 a2. |
  c2. f4 |
  g2( e4) c4 |
  
  bes4 d2 f4 |
  f2( e2) |
  f2. f4 |
  g2. g4 |
  f4 f8 f8~ f4 f4 |
  
  c4 a2 \repeat volta 2 \AltoRepeat
}

TenorRepeat = \relative c {
  f4 |
  f8 f4. f4. f8 |
  f4. f8 bes4 bes4 |
  a2.
}

TenorVerseMusic = \relative c' {
  c2. a4 |
  c2. c4 |
  bes4 bes2 bes4 |
  a4 f2. |
  f2. a4 |
  c2. f,4 |
  
  f4 bes2 d4 |
  c1 |
  c2. a4 |
  c2. c4 |
  bes4 bes8 bes8~ bes4 bes4 |
  
  a4 f2 \repeat volta 2 \TenorRepeat
}

BassRepeat = \relative c {
  c4 |
  g8 g4. a4. a8 |
  bes4. bes8 c4 c4 |
  <f f,>2.
}

BassVerseMusic = \relative c {
  f2. f4 |
  e2. e4 |
  d4 d2 d4 |
  c4 c2. |
  f2. f4 |
  e2( c8 bes8) a4 |
  
  bes4 bes2 bes4 |
  c1 |
  f2. f4 |
  e2. e4 |
  d4 d8 d8~ d4 d4 |
  
  c4 c2 \repeat volta 2 \BassRepeat
}

SheetMusicVerseBreaks = {
  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 | \break \noPageBreak
  
  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 | \break \noPageBreak

  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 | \pageBreak
}

SlidesVerseBreaks = \relative c {
  \setSystemOffset \defaultTopSystemOffset
  \setSystemOffset \defaultBottomSystemOffset
}

VerseOne = \lyricmode {
  Lord, You are more pre -- cious than sil -- ver,
  Lord, You are more cost -- ly than gold;
  Lord, You are more beau -- ti -- ful than dia -- monds,
  And noth -- ing I de -- sire com -- pares with You.
}
