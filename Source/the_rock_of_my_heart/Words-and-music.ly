\version "2.19.49"
#(use-modules (guile-user))

#(ly:set-option 'relative-includes #t)
\include "../../../LilypondTemplates/functions.ly"
\include "../../../LilypondTemplates/hymns.ly"
\include "../hymn_settings.ly"

global = {
  \key f \major
  \time 3/4
  \tempo 4 = 115
}

MajorKey = ##t

%%
%% Hymn Metadata Variables
%%

Title = "The Rock Of My Heart"
SongNumber = \the_rock_of_my_heart_number
RightFirstPage = \the_rock_of_my_heart_number_rhs
FirstPage = #(if RightFirstPage 1 2)

LeaderHints = \markup {
  \fontsize #-4
  \normal-text { "F - 3 - MI" }
}

Scripture = "\"My flesh and my heart may fail, but God is the 
 strength (rock) of my heart and my portion forever.\" -- Psalm 73:26 NASB95"

ShowScriptureOnSheetMusic = ##t

\header {
  title = \Title
  tune = "ROCK Of MY HEART"
  meter = "9.8.10.8 D"
  composer = "Glenda B. Schales"
  poet = "M. W. Bassford"
  altered = ##t
  songNumber = \SongNumber
  lhs = #(if RightFirstPage LeaderHints SongNumber)
  rhs = #(if RightFirstPage SongNumber LeaderHints)
  copyright = "Copyright 2000 by Lynn & Janet Wall.  All Rights Reserved."
  license = "Used by Permission"
  tagline = ##f
}

SopranoVerseMusic = \relative c'' {
  \tag #'usePartials { \partial 4 }
  a4 |
  a2 a8 a8 |
  bes4 bes4 bes8( a8) |
  g2. |
  a2
  
  g4 |
  f4 f4. f8 |
  g4 f4 e4 |
  f2.~ |
  f2
  
  a4 |
  a4 a4 a8 a8 |
  bes2 bes8 a8 |
  g2. |
  a2
  
  g4 |
  f4 f4. f8 |
  g4 f4 e4 |
  f2.~ |
  f2 \bar "||"
}

SopranoRefrainMusic = \relative c'' {
  \tag #'usePartials { \partial 4 }
  a4 |
  c2 d8 c8 |
  c8( bes8) a4. a8 |
  a8( g8) f8
  
  f8-> f8-> f8-> |
  f4 f4 e4 |
  f4. r8
  
  a4 |
  c2 d8 c8 |
  c8( bes8) a4. a8 |
  a8( g8) f8
  
  f8-> f8-> f8-> |
  f4 f4 e4 |
  f4.
  
  f8-> f8-> f8-> |
  f4 f4 e4 |
  f2 \bar "|."
}

AltoVerseMusic = \relative c' {
  \tag #'usePartials { \partial 4 }
  f4 |
  f2 f8 e8 |
  d4 d4 g8( f8) |
  e2. |
  f2
  
  e4 |
  d4 d4. d8 |
  d4 c4 c4 |
  c2.~ |
  c2
  
  f4 |
  f4 f4 f8 e8 |
  d2 g8 f8 |
  e2. |
  f2
  
  e4 |
  d4 d4. d8 |
  d4 c4 c4 |
  c2.~ |
  c2 \bar "||"
}

AltoRefrainMusic = \relative c' {
  \tag #'usePartials { \partial 4 }
  f4 |
  f2 f8 f8 |
  e4 f4. f8 |
  e4 d8 d8-> d8-> d8-> |
  d4 d4 c4 |
  c4. r8 f4 |
  f2 f8 f8 e4 f4. f8 |
  e4 d8 d8-> d8-> d8-> |
  d4 d4 c4 |
  c4. c8-> c8-> c8-> |
  d4 d4 c4 |
  c2 \bar "|."
}

TenorVerseMusic = \relative c' {
  \tag #'usePartials { \partial 4 }
  c4 |
  c2 c8 c8 |
  bes4 bes4 d4 |
  c2. |
  c2
  
  c4 |
  a4 a4. a8 |
  bes4 a4 g4 |
  a2.~ |
  a2
  
  c4 |
  c4 c4 c8 c8 |
  bes2 d8 d8 |
  c2. |
  c2
  
  c4 a4 a4. a8 |
  bes4 a4 g4 |
  a2.~ |
  a2 \bar "||"
}

TenorRefrainMusic = \relative c' {
  \tag #'usePartials { \partial 4 }
  c4 |
  c2 bes8 c8 |
  c4 c4. c8 |
  c4 a8 a8-> a8-> a8-> |
  bes4 bes4 g4 |
  a4. r8
  
  c4 |
  c2 bes8 c8 |
  c4 c4. c8 |
  c8( bes8) a8 a8-> a8-> a8-> |
  bes4 bes4 g4 |
  a4. a8-> a8-> a8-> |
  a4 bes4 g4 |
  a2 \bar "|."
}

BassVerseMusic = \relative c {
  \tag #'usePartials { \partial 4 }
  f4 |
  f2 f8 f8 |
  g4 g4 g4 |
  c,2. |
  f2
  
  c4 |
  d4 d4. d8 |
  bes4 c4 c4 |
  f2.~ |
  f2
  
  f4 |
  f4 f4 f8 f8 |
  g2 g8 g8 |
  c,2. |
  f2
  
  c4 |
  d4 d4. d8 |
  bes4 c4 c4 |
  f2.~ |
  f2 \bar "||"
}

BassRefrainMusic = \relative c {
  \tag #'usePartials { \partial 4 }
  f4 |
  a2 bes8 a8 |
  g4 f4. f8 |
  c4 d8 d8-> d8-> d8-> |
  bes4 bes4 c4 |
  f4. r8
  
  f4 a2 bes8 a8 |
  g4 f4. f8 |
  c4 d8 d8-> d8-> d8-> |
  bes4 bes4 c4 |
  f4. f8-> f8-> f8-> |
  d4 bes4 c4 |
  <f f,>2 \bar "|."
}

SheetMusicVerseBreaks = {
  \tag #'usePartials { \partial 4 }
  s4 | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2 \bar "" \break
  
  s4 | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2 \bar "" \break
  
  s4 | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2 \bar "" \break
  
  s4 | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2 \bar "" \break
}

SheetMusicRefrainBreaks = {
  \tag #'usePartials { \partial 4 }
  s4 | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \break
  
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s4. \bar "" \break
  
  s4. | \noBreak
  s2. | \noBreak
  s4. \bar "" \break
  
  s4. | \noBreak
  s2. | \noBreak
  s2 \bar "|." \break
}

SlidesVerseBreaks = {
  \tag #'usePartials { \partial 4 }
  \setSystemOffset \defaultTopSystemOffset
  s4 | \noBreak
  s2. | \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s2. | \noBreak
  s2. | \noBreak
  s2 \bar "" \pageBreak
  
  %-----------------------------------------
  
  \setSystemOffset \defaultTopSystemOffset
  s4 | \noBreak
  s2. | \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s2. | \noBreak
  s2. | \noBreak
  s2 \bar "" \pageBreak
  
  %-----------------------------------------
  
  \setSystemOffset \defaultTopSystemOffset
  s4 | \noBreak
  s2. | \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s2. | \noBreak
  s2. | \noBreak
  s2 \bar "" \pageBreak
  
  %-----------------------------------------
  
  \setSystemOffset \defaultTopSystemOffset
  s4 | \noBreak
  s2. | \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s2. | \noBreak
  s2. | \noBreak
  s2 \bar "||" \pageBreak
}

SlidesRefrainBreaks = {
  \tag #'usePartials { \partial 4 }
  \setSystemOffset \defaultTopSystemOffset
  s4 | \noBreak
  s2. | \noBreak
  s2 s8 \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s8 | \noBreak
  s2. | \pageBreak
  
  %------------------------------------------------
  
  \setSystemOffset \defaultTopSystemOffset
  s2. | \noBreak
  s2. | \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s2. | \noBreak
  s2 s8 \bar "" \pageBreak
  
  %------------------------------------------------
  
  \setSystemOffset \defaultTopSystemOffset
  s8 | \noBreak
  s2. | \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s2. | \noBreak
  s4. \bar "" \pageBreak
  
  %------------------------------------------------
  
  \setSystemOffset \defaultTopSystemOffset
  s4. | \noBreak
  s2. | \noBreak
  s2 \bar "|."
}

VerseOne = \lyricmode {
  \set stanza = "1. "
  My Lord, I need noth -- ing be -- side You;
  With -- out You, I could not have stood.
  Your prom -- ise is my hope, and my ref -- uge;
  Your near -- ness, my strength and my good.
}

VerseTwo = \lyricmode {
  \set stanza = "2. "
  When I was dis -- tressed and em -- bit -- tered,
  by things I could not un -- der -- stand,
  Your pres -- ence was con -- tin -- ual -- ly with me,
  You al -- ways took hold of my hand.
}

VerseThree = \lyricmode {
  \set stanza = "3. "
  I know that Your coun -- sel will guide me
  in wis -- dom, de -- vo -- tion, and love,
  And af -- ter -- ward You'll call me to glo -- ry
  to dwell in Your pres -- ence a -- bove.
}

Refrain = \lyricmode {
  My heart may be bro -- ken with -- in me;
  My earth -- ly strength may de -- part.
  But You are my por -- tion for -- ev -- er,
  You are the Rock of my heart.
  You are the Rock of my heart.
}
