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
  ees4 |
  aes4 aes4 aes8[ bes8] c8[ aes8] |
  f4 f4 f8[ ees8] c4 |
  ees4 ees4 f4 aes4 |
  c8.[( bes16] aes8[ c8] bes4)
  
  aes8[ c8] |
  ees4 ees4 ees4 f8[ ees8] |
  c4 c4 bes4 aes4 |
  f4 aes8[ f8] ees4 f8[ g8] |
  aes2.
  
  ees4 |
  aes4 aes4 aes8[ bes8] c8[ aes8] |
  f4.( g8 f8[ ees8]) c4 |
  ees4 ees4 f4 aes4 |
  c8.[( bes16] aes8[ c8] bes4)
  
  aes8[ c8] |
  ees4 ees4 ees4 f8[ ees8] |
  c4 c4 bes4 aes4 |
  f4 aes8[ f8] ees4 f8[ g8] |
  aes2. \bar "|."
}

AltoVerseMusic = \relative c' {
  c4 |
  ees4 ees4 ees4 ees8[ c8] |
  des4 des4 des8[ c8] aes4 |
  c4 c4 des4 f4 |
  ees4( c4 ees4)
  
  c8[ ees8] |
  aes4 aes4 aes4 aes4 |
  aes4 f4 f4 f4 |
  f4 f8[ des8] c4 des4 |
  c2.
  
  c4 |
  ees4 ees4 ees4 ees8[ c8] |
  des4.( ees8 des8[ c8]) aes4 |
  c4 c4 des4 f4 |
  ees4( c4 ees4)
  
  c8[ ees8] |
  aes4 aes4 aes4 aes4 |
  aes4 f4 f4 f4 |
  f4 f8[ des8] c4 des4 |
  c2. \bar "|."
}

TenorVerseMusic = \relative c' {
  aes4 |
  c4 c4 c4 aes4 |
  aes4 aes4 aes4 ees4 |
  aes4 aes4 aes4 aes4 |
  aes2( g4)
  
  aes4 |
  c4 c4 c4 des8[ c8] |
  aes4 aes4 des4 c4 |
  des4 aes4 aes4 ees4 |
  ees2.
  
  aes4 |
  c4 c4 c4 aes4 |
  aes2. ees4 |
  aes4 aes4 aes4 aes4 |
  aes2( g4)
  
  aes4 |
  c4 c4 c4 des8[ c8] |
  aes4 aes4 des4 c4 |
  des4 aes4 aes4 ees4 |
  ees2. \bar "|."
}

BassVerseMusic = \relative c {
  aes4 |
  aes4 aes4 aes4 aes4 |
  des4 des4 aes4 aes4 |
  aes4 aes4 aes4 aes4 |
  ees'2.
  
  aes4 |
  aes4 aes4 aes,4 aes4 |
  f'4 f4 f4 f4 |
  des4 des4 ees4 ees4 |
  aes,2.
  
  aes4 |
  aes4 aes4 aes4 aes4 |
  des2( aes4) aes4 |
  aes4 aes4 aes4 aes4 |
  ees'2.
  
  aes4 |
  aes4 aes4 aes,4 aes4 |
  f'4 f4 f4 f4 |
  des4 des4 ees4 ees4 |
  aes,2. \bar "|."
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
  When I can read my ti -- tle clear To man -- sions in the skies,
  I'll bid fare -- well to eve -- ry fear And wipe my weep -- ing eyes,
  And wipe my weep -- ing eyes, And wipe my weep -- ing eyes.
  I'll bid fare -- well to eve -- ry fear And wipe my weep -- ing eyes.
}

VerseTwo = \lyricmode {
  \set stanza = "2. "
  Should earth a -- gainst my soul en -- gage And fier -- y darts be hurled,
  Then I can smile at Sa -- tan's rage And face a frown -- ing world,
  And face a frown -- ing world, And face a frown -- ing world.
  Then I can smile at Sa -- tan's rage And face a frown -- ing world.
}

VerseThree = \lyricmode {
  \set stanza = "3. "
  Let cares, like wild del -- ug -- es come, And storms of sor -- row fall!
  May I but safe -- ly reach my home, My God, my heav'n, my all.
  My God, my heav'n, my all, My God, my heav'n, my all.
  May I but safe -- ly reach my home, My God, my heav'n, my all.
}

VerseFour = \lyricmode {
  \set stanza = "4. "
  There shall I bathe my wea -- ry soul In seas of heav'n -- ly rest,
  And not a wave of trou -- ble roll A -- cross my peace -- ful breast.
  A -- cross my peace -- ful breast, A -- cross my peace -- ful breast.
  And not a wave of trou -- ble A -- cross my peace -- ful breast.
}