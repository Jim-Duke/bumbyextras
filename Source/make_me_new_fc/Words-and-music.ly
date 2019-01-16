\version "2.19.49"
#(use-modules (guile-user))

#(ly:set-option 'relative-includes #t)
\include "../../../LilypondTemplates/functions.ly"
\include "../../../LilypondTemplates/hymns.ly"
\include "../hymn_settings.ly"

global = {
  \key ees \major
  \time 4/4
  \tempo 4 = 120
}

MajorKey = ##t

%%
%% Hymn Metadata Variables
%%

Title = "Make Me New"
SongNumber = \make_me_new_fc_number
RightFirstPage = \make_me_new_fc_number_rhs
FirstPage = #(if RightFirstPage 1 2)

LeaderHints = \markup {
  \fontsize #-4
  \normal-text { "E" \musicglyph #"accidentals.flat" " - 4 - MI" }
}

Scripture = "Serve the Spirit but not in the old way of the written code -- Romans 7:6"

ShowScriptureOnSheetMusic = ##t

\header {
  title = \Title
  tune = "MAKE ME NEW"
  meter = "Irregular"
  composer = "Dan Burr (w. 1985)"
  poet = "Dan Burr (w. 1985)"
  songNumber = \SongNumber
  lhs = #(if RightFirstPage LeaderHints SongNumber)
  rhs = #(if RightFirstPage SongNumber LeaderHints)
  copyright = "Copyright © 1985 Dan Burr, Eagle Ministries/Productions.  All rights reserved."
  license = "Used by permission"
  tagline = ##f
}

SopranoVerseMusic = \relative c'' {
  \tag #'usePartials { \partial 2 }
  g4. aes8 |
  bes2. bes4 |
  aes8 g4. ees4. c'8 |
  bes1~ |
  bes2 g4 aes4 |
  
  bes4. bes8 bes4 bes4 |
  c8 bes4 aes8~ aes4 g4 |
  bes4 aes8 aes8~ aes4 g4 |
  f2 f4 g4 |
  
  r4 aes8 aes8 aes8 f4 bes8~ |
  bes4 aes8 g8~ g4. f8 |
  g4. aes8 g4 f8 ees8~ |
  
  ees2 ees4 g4 |
  f2~ \tuplet 3/2 { f4 f4 ees4 } |
  d8 bes4. g'4. f8 |
  ees1~ |
  ees2 \bar "|."
}

AltoVerseMusic = \relative c' {
  \tag #'usePartials { \partial 2 }
  ees4. f8 |
  g2. g4 |
  ees8 ees4. c4. ees8 |
  <g ees>1~ |
  <g ees>2 d4 f4 |
  
  g4. g8 g4 g4 |
  aes8 g4 f8~ f4 ees4 |
  g4 f8 f8~ f4 ees4 |
  d2 d4 ees4 |
  
  r4 f8 f8 f8 d4 g8~ |
  g4 f8 ees8~ ees4. d8 |
  ees4. ees8 ees4 d8 c8~ |
  c2 bes4 ees4 |
  c2~ \tuplet 3/2 { c4 c4 c4 } |
  c8 bes4. d4. d8 |
  bes1~ |
  bes2 \bar "|."
}

TenorVerseMusic = \relative c' {
  \tag #'usePartials { \partial 2 }
  bes4. bes8 ees2. ees4 |
  c8 bes4. bes4. aes8 |
  bes1~ |
  bes2 bes4 c4 |
  bes4. ees8 f4 ees4 |
  ees8 ees4 ees8~ ees4 d4 |
  c4 c8 c8~ c4 c4 |
  bes2 bes4 bes4 |
  r4 c8 c8 c8 d4 d8~ |
  d4 c8 bes8~ bes4. bes8 |
  bes4. c8 bes4 aes8 g8~ |
  g2 g4 bes4 |
  aes2~ \tuplet 3/2 { aes4 aes4 aes4 } |
  aes8 aes4. aes4. aes8 |
  g1~ |
  g2 \bar "|."
}

BassVerseMusic = \relative c {
  \tag #'usePartials { \partial 2 }
  ees4. ees8 |
  ees2. ees4 |
  ees8 ees4. aes,4. aes8 |
  ees'1~ |
  ees2 bes4 bes4 |
  ees4. ees8 ees4 ees4 |
  ees8 ees4 ees8~ ees4 ees4 |
  ees4 ees8 ees8~ ees4 ees4 |
  bes2 bes4 bes4 |
  r4 bes8 bes8 bes8 bes4 bes8~ |
  bes4 bes8 bes8~ bes4. bes8 |
  ees4. ees8 ees4 bes8 c8~ |
  c2 c4 c4 |
  f,2~ \tuplet 3/2 { f4 f4 f4 } |
  bes8 bes4. bes4. bes8 |
  <ees ees,>1~ |
  <ees ees,>2 \bar "|."
}

SheetMusicVerseBreaks = {
  \tag #'usePartials { \partial 2 }
  s2 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s2 \bar "" \break
  
  s2 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s2 \bar "" \break
  
  s2 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s2 \bar "" \break
  
  s2 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s2 \bar "|."
}

SlidesVerseBreaks = \relative c {
  \setSystemOffset \defaultTopSystemOffset
  \setSystemOffset \defaultBottomSystemOffset
}

VerseOne = \lyricmode {
  Make me new Lord Je -- sus, make me new,
  For it seems that in so ma -- ny ways I'm not e -- nough like You.
  Take this wea -- ry ves -- sel I am in and mold me once a -- gain.
  Take my life, take my spir -- it, make me new.
}
