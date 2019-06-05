\version "2.19.49"
#(use-modules (guile-user))

#(ly:set-option 'relative-includes #t)
\include "../../../LilypondTemplates/functions.ly"
\include "../../../LilypondTemplates/hymns.ly"
\include "../hymn_settings.ly"

global = {
  \key ees \major
  \time 4/4
  \tempo 4 = 100
}

MajorKey = ##t

%%
%% Hymn Metadata Variables
%%

Title = "Lord, Be Glorified"
SongNumber = \lord_be_glorified_fc_number
RightFirstPage = \lord_be_glorified_fc_number_rhs
FirstPage = #(if RightFirstPage 1 2)

LeaderHints = \markup {
  \fontsize #-4
  \normal-text { "E" \musicglyph #"accidentals.flat" " - 4 - MI" }
}

Scripture = "Let the Lord be glorified that we may see your joy. -- Isaiah 60:5"

ShowScriptureOnSheetMusic = ##t

\header {
  title = \Title
  tune = "BE GLORIFIED"
  meter = "4.4.4.4.4.6"
  composer = "Bob Kilpatrick"
  poet = "Bob Kilpatrick"
  songNumber = \SongNumber
  lhs = #(if RightFirstPage LeaderHints SongNumber)
  rhs = #(if RightFirstPage SongNumber LeaderHints)
  copyright = "Words and Music Copyright © 1978 Bob Kilpatrick Music. Assigned 1998 to The Lorenz Corp.  All rights reserved."
  license = "Used by permission"
  tagline = ##f
}

SopranoVerseMusic = \relative c'' {
  g2 bes2 |
  g2 bes2 |
  aes4 g8 aes8 f2 |
  aes4 g8 aes8 f2 |
  
  g2 bes2 |
  g2 bes2 |
  aes4 g8 aes8 f4. ees8 |
  ees1 \bar "|."
}

AltoVerseMusic = \relative c' {
  ees2 f2 |
  ees2 d2 |
  ees4 ees8 ees8 ees4( d4) |
  f4 f8 f8 ees4( d4) |
  
  ees2 f2 |
  ees2 d2 |
  ees4 ees8 ees8 ees4( d8) c8 |
  bes1 \bar "|."
}

TenorVerseMusic = \relative c' {
  bes2 bes2 |
  c2 bes2 |
  c4 c8 c8 bes2 |
  aes4 aes8 aes8 bes2 |
  
  bes2 bes2 |
  c2 bes2 |
  c4 c8 c8 bes4( aes8) aes8 |
  g1 \bar "|."
}

BassVerseMusic = \relative c {
  ees2 d2 |
  c2 g'2 |
  f4 f8 f8 bes,2 |
  des4 des8 des8 bes2 |
  
  ees2 d2 |
  c2 g'2 |
  f4 f8 f8 bes,4. bes8 |
  ees1 \bar "|."
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
}

AlignVerseMusic = \SopranoVerseMusic

SlidesVerseBreaks = \relative c {
  \setSystemOffset \defaultTopSystemOffset
  s1 | \noBreak
  s1 | \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s1 | \noBreak
  s1 | \pageBreak
  
  %----------------------------------------
  
  \setSystemOffset \defaultTopSystemOffset
  s1 | \noBreak
  s1 | \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s1 | \noBreak
  s1 | \pageBreak
}

VerseOne = \lyricmode {
  \set stanza = "1. "
  In my life, Lord,
  be glo -- ri -- fied,
  be glo -- ri -- fied.
  In my life, Lord,
  be glo -- ri -- fied to -- day.
}

VerseTwo = \lyricmode {
  \set stanza = "2. "
  In my song, Lord,
  be glo -- ri -- fied,
  be glo -- ri -- fied.
  In my song, Lord,
  be glo -- ri -- fied to -- day.
}

VerseThree = \lyricmode {
  \set stanza = "3. "
  In Your church, Lord,
  be glo -- ri -- fied,
  be glo -- ri -- fied.
  In Your church, Lord,
  be glo -- ri -- fied to -- day.
}
