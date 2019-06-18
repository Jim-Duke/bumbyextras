\version "2.19.49"
#(use-modules (guile-user))

#(ly:set-option 'relative-includes #t)
\include "../../../../LilypondTemplates/functions.ly"
\include "../../../../LilypondTemplates/hymns.ly"
\include "../hymn_settings.ly"

global = {
  \key aes \major
  \time 4/4
  \tempo 4 = 96
}

MajorKey = ##t

%%
%% Hymn Metadata Variables
%%

Title = "When I Can Read My Title Clear"
SongNumber = \when_i_can_read_my_title_clear_phss_number
RightFirstPage = \when_i_can_read_my_title_clear_phss_number_rhs
FirstPage = #(if RightFirstPage 1 2)

LeaderHints = \markup {
  \fontsize #-4
  \normal-text { "A" \musicglyph #"accidentals.flat" " - 4 - SOL" }
}

Scripture = "TBD"

ShowScriptureOnSheetMusic = ##f

\header {
  title = \Title
  tune = "PISGAH"
  meter = "CM"
  composer = "Davisson's KEntucky HArmony, attr. Joseph C. Lowry (1817), alt."
  poet = "Isaac Watts (1707)"
  songNumber = \SongNumber
  lhs = #(if RightFirstPage LeaderHints SongNumber)
  rhs = #(if RightFirstPage SongNumber LeaderHints)
  copyright = "TBD"
  license = ##f
  tagline = ##f
}

AlignVerseMusic = {
  c4 |
  c4 c4 c4 c4 |
  c4 c4 c4 c4 |
  c4 c4 c4 c4 |
  c2.

  c4 |
  c4 c4 c4 c4 |
  c4 c4 c4 c4 |
  c4 c4 c4 c4 |
  c2.

  c4 |
  c4 c4 c4 c4 |
  c4 c4 c2 |
  c4 c8 c8 c4 c4 |
  c2.

  c4 |
  c4 c4 c4 c4 |
  c4 c4 c4 c4 |
  c4 c4 c4 c4 |
  c2. \bar "|."
}

SopranoVerseMusic = \relative c'' {
  a8[ gis8] |
  fis4 fis4 fis4 e8[ fis8] |
  a4 a4 b4 a8[ b8] |
  cis4 cis4 b8[ a8] fis4 |
  e2.

  a8[ gis8] |
  fis4 fis4 fis4 e8[ fis8] |
  a4 a4 b4 a8[ b8] |
  cis4 cis4 b8[ a8] fis4 |
  fis2.

  cis'4 |
  e4 cis4 cis4 b8[ a8] |
  b4 b4 b2 |
  cis4 cis8 b8 a4 fis4 |
  e2.

  a8[ gis8] |
  fis4 fis4 fis8[ e8] fis8[ gis8] |
  a4 a4 b4 a8[ b8] |
  cis4 cis4 b8[ a8] fis4 |
  fis2. \bar "|."
}

AltoVerseMusic = \relative c' {
  cis4 |
  cis4 cis4 d4 d4 |
  cis4 e4 e4 cis8[ e8] |
  e4 e4 d4 d8[ cis8] |
  b2.

  e4 |
  d4 d4 d4 d4 |
  e4 e4 e4 cis8[ e8] |
  e4 e4 fis4 fis4 |
  fis2.

  fis4 |
  e4 e4 e4 e4 |
  e4 e4 e2 |
  e4 e8 e8 e4 d8[ cis8] |
  b2.

  e4 |
  d4 d4 d4 d4 |
  e4 e4 e4 cis8[ e8] |
  e4 e4 d4 d4 |
  cis2. \bar "|."
}

TenorVerseMusic = \relative c' {
  a4 |
  a4 a4 a4 a4 |
  a4 a4 gis4 a8[ gis8] |
  a4 a4 fis4 a4 |
  gis2.

  a4 |
  a4 a4 b4 b4 |
  cis4 b8[ a8] gis4 a8[ gis8] |
  a4 a4 a4 a4 |
  a2.

  a4 |
  cis4 a4 a4 a4 |
  gis4 gis4 gis2 |
  a4 a8 gis8 a4 a4 |
  gis2.

  a4 |
  a4 a4 b4 b4 |
  cis4 b8[ a8] gis4 a8[ gis8] |
  a4 a4 fis4 a4 |
  a2. \bar "|."
}

BassVerseMusic = \relative c {
  fis4 |
  fis4 fis8[ e8] d4 d4 |
  a4 cis4 e4 e4 |
  a,4 a4 d4 d4 |
  e2.

  cis4 |
  d4 d8[ cis8] b4 b4 |
  a4 cis4 e4 e4 |
  a,4 a4 d4 d4 |
  fis2.

  fis4 |
  a,4 a4 a4 cis4 |
  e4 e4 e2 |
  a,4 a8 b8 cis4 d4 |
  e2.

  cis4 |
  d4 d8[ cis8] b4 b4 |
  a4 cis4 e4 e4 |
  a,4 a4 d4 d4 |
  <fis fis,>2. \bar "|."
}

SheetMusicVerseBreaks = \relative c {
  s4 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s2. \bar "" \break \noPageBreak

  s4 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s2. \bar "" \break \noPageBreak

  s4 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s2. \bar "" \break \noPageBreak

  s4 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s2. \bar "|."
}

SlidesVerseBreaks = \relative c {
  \setSystemOffset \defaultTopSystemOffset
  \setSystemOffset \defaultBottomSystemOffset
}

VerseOne = \lyricmode {
  \set stanza = "1. "
  En -- camped a -- long the hills of light, Ye Chris -- tian sol -- diers, rise,
  And press the bat -- tle ere the night Shall veil the glow -- ing skies.
  Sal -- va -- tion's hel -- met on each head, With truth all girt a -- bout,
  The earth shall trem -- ble 'neath our tread And ech -- o with our shout.
}

VerseTwo = \lyricmode {
  \set stanza = "2. "
  Our Lord sees eve -- ry Chris -- tian die, And feels each dy -- ing breath,
  And calls out from a field near -- by, "\"Be" faith -- ful un -- to "death\""
  Our breth -- ren, dead be -- neath the plain, Whose spir -- its nev -- er died,
  Rise up to march and shout a -- gain, "\"O" Christ, be glo -- ri -- "fied!\""
}

VerseThree = \lyricmode {
  \set stanza = "3. "
  Must I be car -- ried to the skies On flow -- 'ry beds of ease,
  While oth -- ers fought to win the prize And saled thru blood -- y seas?
  Sure I must fight if I would reign; In -- crease my cour -- age, Lord.
  I'll bear the toil, en -- dure the pain, Sup -- port -- ed by Thy word.
}
