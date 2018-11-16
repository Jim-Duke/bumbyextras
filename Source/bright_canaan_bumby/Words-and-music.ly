\version "2.19.49"
#(use-modules (guile-user))

#(ly:set-option 'relative-includes #t)
\include "../../../LilypondTemplates/functions.ly"
\include "../../../LilypondTemplates/midi.ly"
\include "../../../LilypondTemplates/hymns.ly"
\include "../hymn_settings.ly"

global = {
  \key f \major
  \time 4/4
  \tempo 4=105
}

MajorKey = ##t

Title = "Bright Canaan"
SongNumber = \bright_canaan_bumby_number

LeaderHints = \markup {
  \fontsize #-4
  \normal-text { "F - 4 - SOL" }
}

number_on_rhs = \bright_canaan_bumby_number_rhs

FirstPage = #(if bright_canaan_bumby_number_rhs 1 2)

Scripture = "Your eyes will see the King in His beauty;
 They will behold a far-distant land. -- Isaiah 33:17 (NASB)"

ShowScriptureOnSheetMusic = ##t

\header {
  title = \Title
  songNumber = \SongNumber
  lhs = #(if bright_canaan_bumby_number_rhs LeaderHints bright_canaan_bumby_number)
  rhs = #(if bright_canaan_bumby_number_rhs bright_canaan_bumby_number LeaderHints)
  meter = "8.9.8.9.Ref"
  poet = "Portions by John Newland Maffitt Sr."
  translator = ##f

  tune = "TOGETHER LET US SWEETLY LIVE"
  composer = "Melody by John Newland Maffit Sr."
  arranger = "R. M. McIntosh (1886)"

  maintainer = "Jim Duke"
  maintainerEmail = "jim@dukeboys.org"
  maintainerWeb = ##f
  
  copyright = "In the Public Domain"
  license = ##f
}

SopranoVerseMusic = \relative c' {
  \tag #'usePartials { \partial 4 }
  c4 |
  f4 a4 g4 bes4 |
  a8( f8) f'8( d8) c4
  
  a8 bes8 |
  c4 a8. f16 bes8( a8) g4 |
  f2 f4

  c4 |
  f4 a4 g4 bes4 |
  a8( f8) f'8( d8) c4
  
  a8 bes8 |
  c4 a8. f16 bes8( a8) g4 |
  f2 f4 \bar "|."
}

AltoVerseMusic = \relative c' {
  \tag #'usePartials { \partial 4 }
  c4 |
  c4 f4 e4 g4 |
  f4 f4 f4
  
  f8 g8 |
  f4 f8. f16 f4 e4 |
  f2 f4
  
  c4 |
  c4 f4 e4 g4 |
  f4 f4 f4 f8 g8 |
  f4 f8. f16 f4 e4 |
  f2 f4
}

TenorVerseMusic = \relative c' {
  \tag #'usePartials { \partial 4 }
  a4 |
  a4 c4 c4 c4 |
  c8( a8) d8( bes8) a4
  
  c8 bes8 |
  a4 c8. a16 d4 c8( bes8) |
  a2 a4
  
  a4 |
  a4 c4 c4 c4 |
  c8( a8) d8( bes8) a4
  
  c8 bes8 |
  a4 c8. a16 d4 c8( bes8) |
  a2 a4
}

BassVerseMusic = \relative c {
  \tag #'usePartials { \partial 4 }
  f4 |
  f4 f4 c4 c4 |
  f4 f4 f4
  
  f8 f8 |
  f4 f8. f16 bes,4 c4 |
  f2 f4
  
  f4 |
  f4 f4 c4 c4 |
  f4 f4 f4
  
  f8 f8 |
  f4 f8. f16 bes,4 c4 |
  f2 f4 \bar "|."
}

SheetMusicVerseBreaks = \relative c {
  \tag #'usePartials { \partial 4 }
  s4 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s2. \bar "" \break
  
  s4 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s2. \bar "" \break
}

SlidesVerseBreaks = \relative c {
  \tag #'usePartials { \partial 4 }
  s4 | \noBreak
  s1 | \noBreak
  s2. \bar "" \break \noPageBreak
  
  s4 | \noBreak
  s1 | \noBreak
  s2. \bar "" \pageBreak

  \tag #'usePartials { \partial 4 }
  s4 | \noBreak
  s1 | \noBreak
  s2. \bar "" \break \noPageBreak
  
  s4 | \noBreak
  s1 | \noBreak
  s2. \bar "|."
}

SopranoChorusMusic = \relative c'' {
  \tag #'usePartials { \partial 4 }
  a8( bes8) |
  c2 c4 a4 |
  bes2 bes4 g8 g8 |
  a4 f8 a8 c4 a4 |
  g2 c4
  
  c8( a8) |
  f4 f8 a8 g4 bes4 |
  a8( f8) f'8( d8) c4\fermata a8 bes8 |
  c4 a8. f16 bes8( a8) g4 |
  f2 f4 \bar "|."
}

AltoChorusMusic = \relative c' {
  \tag #'usePartials { \partial 4 }
  c4 |
  f2 f4 f4 |
  g2 g4 e8 e8 |
  f4 f8 f8 a4 f4 |
  e2 e4
  
  f4 |
  c4 c8 f8 e4 g4 |
  f4 f4 f4\fermata
  
  f8 g8 |
  f4 f8. f16 f4 e4 |
  f2 f4 \bar "|."
}

TenorChorusMusic = \relative c {
  \tag #'usePartials { \partial 4 }
  f8( g8) |
  a2 a4 c4 |
  c2 c4
  
  c8 c8 |
  c4 a8 c8 c4 c4 |
  c2 bes4
  
  a8( f8) |
  a4 a8 a8 c4 c4 |
  c8( a8) d8( bes8) a4\fermata
  c8 bes8 |
  a4 c8. a16 d4 c8( bes8) |
  a2 a4 \bar "|."
}

BassChorusMusic = \relative c {
  \tag #'usePartials { \partial 4 }
  f4 |
  f2 f4 f4 |
  c2 c4
  
  c8 c8 |
  f4 f8 f8 f4 f4 |
  c2 c4
  
  c4 |
  f4 f8 f8 c4 c4 |
  f4 f4 f4\fermata
  
  f8 f8 |
  f4 f8. f16 bes,4 c4 |
  f2 f4\fermata
}

SheetMusicChorusBreaks = \relative c {
  \tag #'usePartials { \partial 4 }
  s4 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s2. \bar "" \break
  
  s4 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s2. \bar "|."
}

SlidesChorusBreaks = \relative c {
  \tag #'usePartials { \partial 4 }
  \setSystemOffset \defaultTopSystemOffset
  s4 | \noBreak
  s1 | \noBreak
  s2. \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s4 | \noBreak
  s1 | \noBreak
  s2. \bar "" \pageBreak

  \setSystemOffset \defaultTopSystemOffset
  s4 | \noBreak
  s1 | \noBreak
  s2. \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s4 | \noBreak
  s1 | \noBreak
  s2. \bar "" \pageBreak
}

VerseOne = \lyricmode {
  \set stanza = "1. "
  O who will come and go with me
  I am bound for the land of Ca -- naan
  I'm bound fair Ca -- naan's land to see
  I am bound for the land of Ca -- naan
}

VerseTwo = \lyricmode {
  \set stanza = "2. "
  I'll join with them who've gone be -- fore
  I am bound for the land of Ca -- naan
  where sin and sor -- row are no more
  I am bound for the land of Ca -- naan
}

VerseThree = \lyricmode {
  \set stanza = "3. "
  Our songs of praise shall fill the skies;
  I am bound for the land of Ca -- naan
  While high -- er still our joys shall rise;
  I am bound for the land of Ca -- naan
}

VerseFour = \lyricmode {
  \set stanza = "4. "
  Then come with me, be -- lov -- ed friend,
  I am bound for the land of Ca -- naan.
  The joys to come shall nev -- er end,
  I am bound for the land of Ca -- naan.
}

ChorusLyrics = \lyricmode {
  O Ca -- naan, bright Ca -- naan,
  I am bound for the land of Ca -- naan.
  O Ca -- naan, it is my hap -- py home,
  I am bound for the land of Ca -- naan.
}
