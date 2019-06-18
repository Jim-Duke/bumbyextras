\version "2.19.49"
#(use-modules (guile-user))

#(ly:set-option 'relative-includes #t)
\include "../../../../LilypondTemplates/functions.ly"
\include "../../../../LilypondTemplates/hymns.ly"
\include "../hymn_settings.ly"

global = {
  \key g \major
  \time 4/4
  \tempo 4 = 72
}

MajorKey = ##t

%%
%% Hymn Metadata Variables
%%

Title = "Lord Jesus, Think on Me"
SongNumber = \lord_jesus_think_on_me_phss_number
RightFirstPage = \lord_jesus_think_on_me_phss_number_rhs
FirstPage = #(if RightFirstPage 1 2)

LeaderHints = \markup {
  \fontsize #-4
  \normal-text { "G (Em) - 4 - LA" }
}

Scripture = "TBD"

ShowScriptureOnSheetMusic = ##f

\header {
  title = \Title
  tune = "SOUTHWELL"
  meter = "SM"
  composer = "Damon's Psalter (1579)"
  poet = "Synesius of Cyrene (c. 410)"
  translator = "Allen W. Chatfield (1876)"
  songNumber = \SongNumber
  lhs = #(if RightFirstPage LeaderHints SongNumber)
  rhs = #(if RightFirstPage SongNumber LeaderHints)
  copyright = "Public Domain"
  license = ##f
  tagline = ##f
}

AlignVerseMusic = {
  c4 |
  c4 c4 c4 c4 |
  c2. c4 |
  c4 c4 c4 c4 |
  c2.

  c4 |
  c4 c4 c4 c4 |
  c4 c4 c4 c4 |
  c4 c4 c4 c4 |
  c2. \bar "|."
}

SopranoVerseMusic = \relative c' {
  e4 |
  g4 g4 fis4 fis4 |
  e2. e4 |
  g4 g4 a4 a4 |
  b2.

  b4 |
  d4 d4 c4 c4 |
  b4 b4 a4 b4 |
  a4 g4 fis4 fis4 |
  e2. \bar "|."
}

AltoVerseMusic = \relative c' {
  b4 |
  b4 e4 e4 dis4 |
  e2. b4 |
  b4 b4 e4 d4 |
  d2.

  g4 |
  g4 fis4 e4 d4 |
  d4 d4 d4 d4 |
  e4 e4 e4 dis4 |
  b2. \bar "|."
}

TenorVerseMusic = \relative c' {
  g4 |
  g4 g4 c4 b4 |
  g2. g4 |
  g4 g4 g4 fis4 |
  g2.

  b4 |
  a4 a4 g4 a4 |
  g4 g4 fis4 g4 |
  a4 b4 b4 a4 |
  g2. \bar "|."
}

BassVerseMusic = \relative c {
  e4 |
  e4 c4 a4 b4 |
  e2. e4 |
  e4 d4 c4 d4 |
  g,2.

  g'4 |
  d4 d4 e4 fis4 |
  g4 b,4 d4 g,4 |
  c4 e4 b4 b4 |
  e2. \bar "|."
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
  s2. \bar "|."
}

SlidesVerseBreaks = \relative c {
  \setSystemOffset \defaultTopSystemOffset
  \setSystemOffset \defaultBottomSystemOffset
}

VerseOne = \lyricmode {
  \set stanza = "1. "
  Lord Je -- sus, think on me
    And purge a -- way my sin;
  From earth -- born pas -- sions set me free
    And make me pure with -- in.
}

VerseTwo = \lyricmode {
  \set stanza = "2. "
  Lord Je -- sus, think on me,
    With care and woe op -- pressed;
  Let me Thy lov -- ing serv -- ant be
    And gain Thy prom -- ised rest.
}

VerseThree = \lyricmode {
  \set stanza = "3. "
  Lord Je -- sus, think on me,
    A -- mid the bat -- tle's strife;
  In all my pain an mis -- er -- y
    Be Thou my health and life.
}

VerseFour = \lyricmode {
  \set stanza = "4. "
  Lord Je -- sus, think on me,
    That, when the flood is past,
  I may th'e -- ter -- nal bright -- ness see
    And share Thy joy at last.
}
