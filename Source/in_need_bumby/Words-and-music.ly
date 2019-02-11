\version "2.19.49"
#(use-modules (guile-user))

#(ly:set-option 'relative-includes #t)
\include "../../../LilypondTemplates/functions.ly"
\include "../../../LilypondTemplates/hymns.ly"
\include "../hymn_settings.ly"

global = {
  \key ees \major
  \time 4/4
  \tempo 4 = 65
}

MajorKey = ##t

%%
%% Hymn Metadata Variables
%%

Title = "In Need"
SongNumber = \in_need_bumby_number
RightFirstPage = \in_need_bumby_number_rhs
FirstPage = #(if RightFirstPage 1 2)

LeaderHints = \markup {
  \fontsize #-4
  \normal-text { "E" \musicglyph #"accidentals.flat" " - 4 - MI" }
}

Scripture = "My God will supply your every need - Phil. 4:19"

ShowScriptureOnSheetMusic = ##t

\header {
  title = \Title
  tune = "IN NEED"
%  meter = "8.7.8.7"
  composer = "Ross King"
  poet = "Ross King"
  songNumber = \SongNumber
  lhs = #(if RightFirstPage LeaderHints SongNumber)
  rhs = #(if RightFirstPage SongNumber LeaderHints)
  copyright = "Words and Music Copyright © 1996 by Ross King, Simpleville Music.  All rights reserved."
  license = #(string-append "CCLI Song #2431435, License #" bumby_ccli_license)
  tagline = ##f
}

SopranoPartOne = \relative c'' {
  \tag #'usePartials { \partial 2 }
  \bar ".|:" r8 g16 aes16( g8) g16 ees16~ |
  ees2 r8 g16 aes16( g8) g16 ees16~ |
  ees2
  
  r8 g16 aes16( g8) g16 ees16~ |
  ees16 ees8 ees8 ees8 ees16~ ees8 r16 c16 ees8 g16 f16~ |
  f2~ f8
  
  g16 aes16( g8) g16 ees16~ |
  ees2 r8 g16 aes16( g8) g16 ees16~ |
  ees2
  
  r8 g16 aes16( g8) g16 ees16~ |
  ees8 r16 c16 ees8 g16 f8 f8 ees16( d8) d16 ees16~ |
  ees2
}

SopranoPartTwo = \relative c'' {
  r8\segno g16 g8 bes8 c16~ |
  c2 r8 ees,16 ees8 c'8 bes16~ |
  bes2~ bes8 aes16 g8 bes8 bes16~ |
  bes2
  
  r8 bes,16 aes'8 g16( f16) f16~ |
  f2 r8 bes,16 bes8 f'8 g16~ |
  g2 r8 bes,16 bes8 g'8 f16~ |
  f2\coda
}

SopranoFirstEnding = \relative c' {
  r8 f16 ees8 d8 ees16~ |
  ees2~ ees8 f16 ees8 d8 ees16~ |
  ees2^"2nd time D.S. al coda" \bar ":|."
}

SopranoSecondEnding = \relative c' {
  r8\coda f16 ees8 d8 ees16~ |
  ees2~ ees8 f16 ees8 d8 ees16~ |
  ees2
  
  r8 f16 ees8 d8 ees16~ |
  ees2~ ees2~ |
  ees2 r16 f16 ees8 d8 ees8~ |
  ees2 \bar "|."
}

AltoPartOne = \relative c' {
  \tag #'usePartials { \partial 2 }
  r8 ees16 ees16( ees8) ees16 bes16~ |
  bes2 r8 ees16 ees16( ees8) ees16 bes16~ |
  bes2
  
  r8 ees16 ees16( ees8) ees16 c16~ |
  c16 c8 c8 c8 c16~ c8 r16 aes16 c8 ees16 ees16~ |
  ees2( d8)
  
  ees16 ees16( ees8) ees16 bes16~ |
  bes2 r8 ees16 ees16( ees8) ees16 bes16~ |
  bes2
  
  r8 ees16 ees16( ees8) ees16 c16~ |
  c8 r16 c16 c8 ees16 d8 d8 bes16~ bes8 bes16 bes16~ |
  bes2
}

AltoPartTwo = \relative c' {
  r8 ees16 ees8 g8 aes16~ |
  aes2 r8 c,16 c8aes'8 f16~ |
  f2~ f8 d16 d8 g8 g16~ |
  g2
  
  r8 bes,16 ees8 ees16( d16) d16~ |
  d2 r8 bes16 bes8 d8 ees16~ |
  ees2 r8 bes16 bes8 ees8 d16~ |
  d2
}

AltoFirstEnding = \relative c' {
  r8 d16 c8 bes8 c16~ |
  c2~ c8 c16 bes8 bes8 bes16~ |
  bes2
}

AltoSecondEnding = \relative c' {
  r8 d16 c8 bes8 c16~ |
  c2~ c8 c16 bes8 bes8 bes16~ |
  bes2
  
  r8 d16 c8 bes8 c16~ |
  c2~ c2~ |
  c2 r16 c16 c8 bes8 bes8~ |
  bes2 \bar "|."
}

TenorPartOne = \relative c' {
  \tag #'usePartials { \partial 2 }
  r8 bes16 c16( bes8) bes16 g16~ |
  g2 r8 bes16 c16( bes8) bes16 g16~ |
  g2
  
  r8 bes16 c16( bes8) bes16 aes16~ |
  aes16 aes8 aes8 aes8 aes16~ aes8 r16 ees16 aes8 c16 bes16~ |
  bes2~ bes8
  
  bes16 c16( bes8) bes16 g16~ |
  g2 r8 bes16 c16( bes8) bes16 g16~ |
  g2
  
  r8 bes16 c16( bes8) bes16 aes16~ |
  aes8 r16 aes16 aes8 c16 bes8 bes8 g16( f8) f16 g16~ |
  g2
}

TenorPartTwo = \relative c' {
  r8 bes16 bes8 d8 ees16~ |
  ees2 r8 aes,16 aes8 ees'8 ees16~ |
  ees2( d8) bes16 bes8 ees8 ees16~ |
  ees2
  
  r8 g,16 c8 bes8 bes16~ |
  bes2 r8 bes16 bes8 bes8 bes16~ |
  bes2 r8 g16 g8 bes8 bes16~ |
  bes2
}

TenorFirstEnding = \relative c' {
  r8 bes16 bes8 bes8 bes16~ |
  bes8. aes8 g8 aes8. aes16 g8 f8 g16~ |
  g2
}

TenorSecondEnding = \relative c' {
  r8 bes16 bes8 bes8 bes16~ |
  bes8.( aes8 g8 aes8.) aes16 g8 f8 g16~ |
  g2
  
  r8 bes16 bes8 bes8 bes16~ |
  bes8. aes8 g8 aes16~ aes2~ |
  aes2 r16 aes16 g8 f8 g8~ |
  g2 \bar "|."
}

BassPartOne = \relative c {
  \tag #'usePartials { \partial 2 }
  r8 ees16 ees16( ees8) ees16 ees16~ |
  ees2 r8 ees16 ees16( ees8) ees16 c16~ |
  c2
  
  r8 c16 c16( c8) c16 aes16~ |
  aes16 aes8 aes8 aes8 aes16~ aes8 r16 aes16 aes8 aes16 bes16~ |
  bes2~ bes8
  
  bes16 bes16( bes8) bes16 ees16~ |
  ees2 r8 ees16 ees16( ees8) ees16 c16~ |
  c2
  
  r8 c16 c16( c8) c16 aes16~ |
  aes8 r16 aes16 aes8 aes16 bes8 bes8 bes16~ bes8 bes16 ees16~ |
  ees2
}

BassPartTwo = \relative c {
  r8 ees16 ees8 g,8 aes16~ |
  aes2 r8 aes16 aes8 aes8 bes16~ |
  bes2~ bes8 bes16 bes8 bes8 c16~ |
  c2
  
  r8 c16 c8 c8 bes16~ |
  bes2 r8 bes16 bes8 bes8 ees16~ |
  ees2 r8 ees16 ees8 ees8 bes16~ |
  bes2
}

BassFirstEnding = \relative c {
  r8 bes16 bes8 bes8 aes16~ |
  aes2( bes8) bes16 bes8 bes8 ees16~ |
  ees2
}

BassSecondEnding = \relative c {
  r8 bes16 bes8 bes8 aes16~ |
  aes2( bes8) bes16 bes8 bes8 c16~ |
  c2(
  
  bes8) bes16 bes8 bes8 aes16~ |
  aes1( |
  bes2) r16 bes16 bes8 bes8 <ees ees,>8~ |
  <ees ees,>2 \bar "|."
}

SheetMusicPartOneBreaks = {
  \tag #'usePartials { \partial 2 }
  s2 | \noBreak
  s1 | \noBreak
  s2 \bar "" \break
  
  s2 | \noBreak
  s1 | \noBreak
  s2 s8 \bar "" \break
  
  s4. | \noBreak
  s1 | \noBreak
  s2 \bar "" \break
  
  s2 | \noBreak
  s1 | \noBreak
  s2 \bar "" \break
}

SheetMusicPartTwoBreaks = {
  s2 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s2 \bar "" \break
  
  s2 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s2 \bar "" \break
}

SheetMusicFirstEndingBreaks = {
  s2 | \noBreak
  s1 | \noBreak
  s2 \bar "" \break
}

SheetMusicSecondEndingBreaks = {
  s2 | \noBreak
  s1 | \noBreak
  s2 \bar "" \break
  
  s2 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s2 \bar "|."
}

SlidesVerseOneBreaks = \relative c {
  \tag #'usePartials { \partial 2 }

  % In need of grace
  \setSystemOffset \defaultTopSystemOffset
  s2 | \noBreak
  s2 \bar "" \break
  
  % In need of love
  \setSystemOffset \defaultBottomSystemOffset
  s2 | \noBreak
  s2 \bar "" \pageBreak
  
  % In need of mercy raining
  \setSystemOffset \defaultTopSystemOffset
  s2 | \noBreak
  s16 s8 s4 \bar "" \break
  
  % down from high above.
  \setSystemOffset \defaultBottomSystemOffset
  s4 s4 s16 | \noBreak
  s2 s8 \bar "" \pageBreak
  
  % In need of strength
  \setSystemOffset \defaultTopSystemOffset
  s4 s8 | \noBreak
  s2 \bar "" \break
  
  % In need of peace.
  \setSystemOffset \defaultBottomSystemOffset
  s2 | \noBreak
  s2 \bar "" \pageBreak
  
  % In need of things
  \setSystemOffset \defaultTopSystemOffset
  s2 | \noBreak
  s8 \bar "" \break
  
  % that only You can give to me.
  \setSystemOffset \defaultBottomSystemOffset
  s8 s2. | \noBreak
  s2 \bar "" \pageBreak
  
  % In need of Christ,
  \setSystemOffset \defaultTopSystemOffset
  s2 | \noBreak
  s2 \bar "" \break
  
  % the perfect Lamb,
  \setSystemOffset \defaultBottomSystemOffset
  s2 | \noBreak
  s2 s8 \bar "" \pageBreak
  
  % my refuge strong,
  \setSystemOffset \defaultTopSystemOffset
  s4 s8 | \noBreak
  s2 \bar "" \break
  
  % the great I AM.
  \setSystemOffset \defaultBottomSystemOffset
  s2 | \noBreak
  s2 \bar "" \pageBreak
  
  % This is my song,
  \setSystemOffset \defaultTopSystemOffset
  s2 | \noBreak
  s2 \bar "" \break
  
  % my humble plea:
  \setSystemOffset \defaultBottomSystemOffset
  s2 | \noBreak
  s2 \bar "" \pageBreak

  % I am Your child,
  \setSystemOffset \defaultTopSystemOffset
  s2 | \noBreak
  s2 s8 \bar "" \break

  % I am in need.
  \setSystemOffset \defaultBottomSystemOffset
  s4 s8 | \noBreak
  s2 \bar "|." \pageBreak
}

SlidesVerseTwoBreaks = \relative c {
  \tag #'usePartials { \partial 2 }

  % In need of Christ,
  \setSystemOffset \defaultTopSystemOffset
  s2 | \noBreak
  s2 \bar "" \break \noPageBreak
  
  % the perfect Lamb,
  \setSystemOffset \defaultBottomSystemOffset
  s2 | \noBreak
  s2 s8 \bar "" \pageBreak
  
  % my refuge strong,
  \setSystemOffset \defaultTopSystemOffset
  s4 s8 | \noBreak
  s2 \bar "" \break
  
  % the great I AM.
  \setSystemOffset \defaultBottomSystemOffset
  s2 | \noBreak
  s2 \bar "" \pageBreak
  
  % This is my song,
  \setSystemOffset \defaultTopSystemOffset
  s2 | \noBreak
  s2 \bar "" \break
  
  % my humble plea:
  \setSystemOffset \defaultBottomSystemOffset
  s2 | \noBreak
  s2 \bar "" \pageBreak

  % I am Your child,
  \setSystemOffset \defaultTopSystemOffset
  s2 | \noBreak
  s2 s8 \bar "" \break

  % I am in need.
  \setSystemOffset \defaultBottomSystemOffset
  s4 s8 | \noBreak
  s2 s8 \bar "" \pageBreak

  % I am Your child,
  \setSystemOffset \defaultTopSystemOffset
  s4 s8 | \noBreak
  s1 | \noBreak
  s2 \bar "" \break \noPageBreak

  % I am in need.
  \setSystemOffset \defaultBottomSystemOffset
  s2 | \noBreak
  s2 \bar "|." \pageBreak
}

PartOneLyrics = \lyricmode {
  In need of grace.
  In need of love.
  In need of mer -- cy rain -- ing down from high a -- bove.
  In need of strength.
  In need of peace.
  In need of things that on -- ly You can give to me.
}

PartTwoLyrics = \lyricmode {
  In need of Christ, the per -- fect Lamb, my ref -- uge strong,
  the great I AM.
  This is my song, my hum -- ble plea:
}

FirstEndingLyrics = \lyricmode {
  I am Your child, I am in need.
}

SecondEndingLyrics = \lyricmode {
  I am Your child, I am in need.
  I am Your child, I am in need.
}
