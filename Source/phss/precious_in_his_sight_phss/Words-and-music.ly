\version "2.19.49"
#(use-modules (guile-user))

#(ly:set-option 'relative-includes #t)
\include "../../../../LilypondTemplates/functions.ly"
\include "../../../../LilypondTemplates/hymns.ly"
\include "../hymn_settings.ly"

global = {
  \key f \major
  \time 4/4
  \tempo 4 = 80 - 82
}

MajorKey = ##t

%%
%% Hymn Metadata Variables
%%

Title = "Precious in His Sight"
SongNumber = \precious_in_his_sight_phss_number
RightFirstPage = \precious_in_his_sight_phss_number_rhs
FirstPage = #(if RightFirstPage 1 2)

LeaderHints = \markup {
  \fontsize #-4
  \normal-text { "F - 4 - SOL" }
}

Scripture = "TBD"

ShowScriptureOnSheetMusic = ##f

\header {
  title = \Title
  tune = "HOUCHEN"
  meter = "8.7.8.8 with chorus"
  composer = "C. E. Couchman (2003)"
  poet = "C. E. Couchman (2003)"
  songNumber = \SongNumber
  lhs = #(if RightFirstPage LeaderHints SongNumber)
  rhs = #(if RightFirstPage SongNumber LeaderHints)
  copyright = "TBD"
  license = ##f
  tagline = ##f
}

AlignVerseMusic = {
  c8 c8 |
  c4 c4 c4. c8 |
  c4 c2 c8 c8 |
  c4 c4 c4. c8 |
  c2.

  c8 c8 |
  c4 c4 c4 c4 |
  c2 c4 c8 c8 |
  c4 c8 c8 c4. c8 |
  c2 \bar "||"
}

AlignChorusMusic = {
  r8 c8 c8 c8 |
  c4 c4 c8 c4 c8 |
  c8 c8 c8 c8 c4

  c4 |
  c4 c4 c8 c8 c8 c8 |
  c4 c4 c4

  c4 |
  c4. c8 c4 c4 |
  c4 c4 c4 c8 c8 |
  c4 c8 c8 c4. c8 |
  c2. \bar "|."
}

SopranoVerseMusic = \relative c' {
  c8 f8 |
  f4 f4 g4. f8 |
  g4 a2 c,8 f8 |
  f4 f4 g4. a8 |
  a2.

  a8 bes8 |
  c4 c4 c4 f,4 |
  bes4( a8[ g8]) a4 a8 g8 |
  f4 f8 a8 g4. f8 |
  f2 \bar "||"
}

SopranoChorusMusic = \relative c' {
  r8 f8 f8 g8 |
  a4 a4 g8 f4 c8 |
  d8 f8 f8 g8 a4

  a8[ c8] |
  d4 d4 c8 a8 bes8 a8 |
  a8[ g8] g8[ a8] c4

  a8[ g8] |
  f4. a8 c4 c4 |
  d4 d8[ c8] c4 f,8 a8 |
  g4 f8 a8 g4. f8 |
  f2. \bar "|."
}

AltoVerseMusic = \relative c' {
  c8 c8 |
  c4 c4 e4. c8 |
  e4 f2 c8 c8 |
  d4 d4 e4. f8 |
  f2.

  f8 f8 e4 e4 f4 c4 |
  d2 f4 f8 e8 |
  d4 d8 f8 e4. c8 |
  c2 \bar "||"
}

AltoChorusMusic = \relative c' {
  r8 f8 f8 g8 |
  a4 a4 g8 f4 c8 |
  d8 f8 f8 g8 f4

  f4 |
  f4 f4 f8 f8 f8 f8 |
  e4 e4 e4

  e4 |
  c4. f8 f4 f4 |
  f4 f4 f4 f8 f8 |
  d4 d8 d8 e4. c8 |
  c2. \bar "|."
}

TenorVerseMusic = \relative c' {
  a8 a8 |
  a4 a4 c4. a8 |
  c4 c2 a8 a8 |
  a4 a4 c4. c8 |
  c2.

  c8 c8 a4 a4 a4 a4 |
  bes2 c4 c8 c8 |
  a4 a8 a8 c4 bes4 |
  a2 \bar "||"
}

TenorChorusMusic = \relative c {
  r8 f8 f8 g8 |
  a4 a4 g8 f4 a8 |
  bes8 d8 d8 bes8 c4

  c8[ a8] |
  bes4 bes4 a8 c8 d8 c8 |
  c4 c4 c4

  c4 |
  a4. c8 c4 c4 |
  bes4 bes4 a4 a8 c8 |
  bes4 bes8 bes8 c4 bes4 |
  a2. \bar "|."
}

BassVerseMusic = \relative c {
  f8 f8 |
  f4 f4 c4. c8 |
  c4 f2 f8 f8 |
  d4 d4 c4. c8 |
  f2.

  f8 g8 |
  a4 a4 a4 f4 |
  f2 f4 c8 c8 |
  d4 d8 d8 c4 c4 |
  f2 \bar "||"
}

BassChorusMusic = \relative c {
  r8 f8 f8 g8 |
  a4 a4 g8 f4 r8 |
  r2 r4

  f4 |
  bes,4 bes4 f'8 f8 f8 f8 |
  c4 g'4 g4

  a8[ g8] |
  f4 c4 a4 <a f>4 |
  bes4 d4 f4 f8 f8 |
  g4 g8 g8 g4 c,4 |
  f2. \bar "|."
}

SheetMusicVerseBreaks = \relative c {
  s4 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s2. \bar "" \break

  s4 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s2 \bar "||" \break
}

SheetMusicChorusBreaks = {
  s2 | \noBreak
  s1 | \noBreak
  s2. \bar "" \break

  s4 | \noBreak
  s1 | \noBreak
  s2. \bar "" \break

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
  In our sor -- row there is com -- fort; Tears of an -- guish bring re -- lease;
  Though we grieve, our hopes are strength -- ened; In our loss, Lord, we find this peace:
}

VerseTwo = \lyricmode {
  \set stanza = "2. "
  From our birth, our days are num -- bered; Though we flour -- ish, soon we die,
  But with this, our hope, to wak -- en Face to face with the ris -- en Christ!
}

Chorus = \lyricmode {
  An -- oth -- er race is fin --ished; A bur -- den is laid down;
  The gate of heav -- en o -- pens to the Sun!
  How pre -- cious in Your sight, O Lord, Is the death of a god -- ly one.
}
