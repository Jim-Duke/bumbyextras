\version "2.19.49"
#(use-modules (guile-user))

#(ly:set-option 'relative-includes #t)
\include "../../../LilypondTemplates/functions.ly"
\include "../../../LilypondTemplates/hymns.ly"
\include "../hymn_settings.ly"

global = {
  \key g \major
  \numericTimeSignature
  \time 4/4
  \tempo 4 = 85
}

MajorKey = ##t

%%
%% Hymn Metadata Variables
%%

Title = "Weeping Garden"
SongNumber = \weeping_garden_bumby_number
RightFirstPage = \weeping_garden_bumby_number_rhs
FirstPage = #(if RightFirstPage 1 2)

LeaderHints = \markup {
  \fontsize #-4
  \normal-text { "E minor - 4 - DO" }
}

Scripture = "Then they came to a place which was named Gethsemane;
 and He said to His disciples, \"Sit here while I pray.\" -- Mark 14:32"

ShowScriptureOnSheetMusic = ##t

\header {
  title = \Title
  tune = "WEEPING GARDEN"
  meter = "9.9.9.9"
  composer = "Aneva Peirce"
  poet = "Jon Gardner"
  songNumber = \SongNumber
  lhs = #(if RightFirstPage LeaderHints SongNumber)
  rhs = #(if RightFirstPage SongNumber LeaderHints)
  copyright = "Words and Music Copyright © 2016 Jon Gardner and Aneva Peirce. All rights reserved."
  license = "Used by permission"
  tagline = ##f
}

SopranoVerseMusic = \relative c'' {
  g4 fis4 e4. fis8 |
  g4 a4 g4 fis8( e8) |
  e1 |
  
  g4 a4 b4. b8 |
  c4 c4 a4 b8( c8) |
  b1 |
  
  g4 fis4 e4. fis8 |
  g4 a4 g4 fis8( e8) |
  e1 |
  
  b'4 b8( c8) c4. a8 |
  b4 b4 c4 b8( a8) |
  g2( fis2) \bar "|."
}

AltoVerseMusic = \relative c' {
  e4 dis4 e4. dis8 |
  e4 e4 e4 c4 |
  c2( b2) |
  
  e4 e8 fis8 g4. g8 |
  g8( fis8) e4 fis4 e4 |
  e2( dis2) |

  e4 dis4 e4. dis8 |
  e4 e4 e4 c4 |
  c2( b2) |
  
  e4 e4 e4. fis8 |
  g4 g4 fis4 g8( fis8) |
  e2( dis2) \bar "|."
}

TenorVerseMusic = \relative c' {
  b4 b4 g4. b8 |
  c4 c4 c8 b8 a4 |
  a2( g2) |
  
  b4 c4 e4. e8 |
  e4 c4 c4 a4 |
  g2( fis2) |
  
  b4 b4 g4. b8 |
  c4 c4 c8 b8 a4 |
  a2( g2) |
  
  g4 g4 a4. c8 |
  e4 e4 e4 e4 |
  b1 \bar "|."
}

BassVerseMusic = \relative c {
  e4 b4 e4. b8 |
  a4 a4 a4 a4 |
  e'1 |
  
  e4 e4 e4. b8 |
  a4 a4 a4 a4 |
  b1 |
  
  e4 b4 e4. b8 |
  a4 a4 a4 a4 |
  e'1 |
  
  e4 b4 a4. a8 |
  e'4 b4 a4 a4 |
  b1 \bar "|."
}

SheetMusicVerseBreaks = \relative c {
  s1 | \noBreak
  s1 | \noBreak
  s1 | \break

  s1 | \noBreak
  s1 | \noBreak
  s1 | \break

  s1 | \noBreak
  s1 | \noBreak
  s1 | \break

  s1 | \noBreak
  s1 | \noBreak
  s1 \bar "|."
}

SlidesVerseBreaks = \relative c {
  \setSystemOffset \defaultTopSystemOffset
  s1 \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s1 | \noBreak
  s1 | \pageBreak

  \setSystemOffset \defaultTopSystemOffset
  s1 \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s1 | \noBreak
  s1 | \pageBreak

  \setSystemOffset \defaultTopSystemOffset
  s1 \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s1 | \noBreak
  s1 | \pageBreak

  \setSystemOffset \defaultTopSystemOffset
  s1 \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s1 | \noBreak
  s1 \bar "|."
}

VerseOne = \lyricmode {
  \set stanza = "1. "
  Weep -- ing gar -- den, gent -- ly bow your leaves.
  Wilt be -- side the Sav -- ior as He grieves.
  Turn a -- way the splend -- or of each flow'r.
  Hush the birds in this, His desp -- 'rate hour.
}

VerseTwo = \lyricmode {
  \set stanza = "2. "
  Weep -- ing gar -- den, look up -- on His face.
  See His an -- guish, temp -- ered by such grace.
  As He suf -- fers, sweat pours out as blood.
  Let your sor -- row drip from ev -- 'ry bud.
}

VerseThree = \lyricmode {
  \set stanza = "3. "
  Weep -- ing gar -- den, how the twi -- light dims,
  Through your can -- o -- py of twist -- ed limbs.
  Trait -- ors lurk -- ing near the gar -- den's bliss,
  Whisp -- er of a cold be -- tray -- al kiss.
}

VerseFour = \lyricmode {
  \set stanza = "4. "
  Weep -- ing gar -- den, hear the pray'r He speaks.
  Not His will, but God's He humb -- ly seeks.
  Great -- er love has nev -- er been dis -- played.
  Weep with Him who weeps be -- neath your shade!
}
