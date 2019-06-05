\version "2.19.49"
#(use-modules (guile-user))

#(ly:set-option 'relative-includes #t)
\include "../../../LilypondTemplates/functions.ly"
\include "../../../LilypondTemplates/hymns.ly"
\include "../hymn_settings.ly"

global = {
  \key aes \major
  \numericTimeSignature
  \time 4/4
  \tempo \markup { \italic "Tempo Rubato" } 4 = 100
  \autoBeamOff
}

MajorKey = ##t

%%
%% Hymn Metadata Variables
%%

Title = "An Honest Heart"
SongNumber = \an_honest_heart_cs_number
RightFirstPage = \an_honest_heart_cs_number_rhs
FirstPage = #(if RightFirstPage 1 2)

LeaderHints = \markup {
  \fontsize #-4
  \normal-text { "A" \musicglyph #"accidentals.flat" "(Fm) - 4 - DO" }
}

Scripture = ""

ShowScriptureOnSheetMusic = ##f

\header {
  title = \Title
  tune = "HONEST HEART"
  meter = "9.9.11.9.9"
  composer = "Ethan Tate"
  poet = "Ethan Tate"
  songNumber = \SongNumber
  lhs = #(if RightFirstPage LeaderHints SongNumber)
  rhs = #(if RightFirstPage SongNumber LeaderHints)
  copyright = "Words and Music Copyright © 2016 Ethan Tate. All rights reserved."
  license = "Used by permission"
  tagline = ##f
}

SopranoVerseMusic = \relative c'' {
  aes16 bes16 |
  c4 aes4 f4 ees4 |
  f4 aes4
  \set Score.tempoHideNote = ##t
  \tempo 4=33
  aes4.\fermata
  \tempo 4=100
  
  aes16 bes16 |
  c4 aes4 aes4 aes4 |
  c4 ees4
  \tempo 4=33
  ees4.\fermata
  \tempo 4=100
  
  c16 ees16 |
  \tuplet 3/2 { f4 ees4 c4 } c8( bes8) bes8 aes8 |
  bes4 c16( bes16 aes8)
  \tempo 4=33
  aes4.\fermata
  \tempo 4=100
  
  aes16 bes16 |
  c4 aes4 f4 ees4 |
  f4 aes4
  \tempo 4=33
  c4.\fermata
  \tempo 4=100
  
  aes16 bes16 |
  c4 aes4 f4 ees4 |
  f4 aes4
  \tempo 4=33
  aes4.\fermata
  \tempo 4=100
  \bar "|."
}

AltoVerseMusic = \relative c' {
  f16 g16 |
  aes4 ees4 ees4 des4 |
  des4 c4 c4.\fermata
  
  f16 g16 |
  aes4 g4 f4 ees4 |
  aes4 c4 bes4.\fermata
  
  aes16 bes16 |
  \tuplet 3/2 { c4 bes4 aes4 } aes8\( g8\) g8 f8 |
  g4 aes16\( g16 ees8\) f4.\fermata
  
  f16 g16 |
  aes4 ees4 ees4 des4 |
  des4 c4 c4.\fermata
  
  f16 g16 |
  aes4 ees4 ees4 des4 |
  des4 c4 c4.\fermata \bar "|."
}

TenorVerseMusic = \relative c {
  f16 g16 |
  aes4 aes4 bes4 aes4 |
  bes4 aes4 aes4.\fermata
  
  aes16 g16 |
  aes4 bes4 c4 c4 |
  c4 ees4 ees4.\fermata
  
  f16 ees16 |
  \tuplet 3/2 { f4 ees4 c4 }
  c8( bes8) bes8 aes8 |
  ees4 aes8( bes8) c4.\fermata
  
  aes16 bes16 |
  c4 c4 bes4 bes4 |
  aes4 aes4 aes4.\fermata
  
  aes16 bes16 |
  c4 c4 c4 bes4 |
  bes4 aes4 aes4.\fermata \bar "|."
}

BassVerseMusic = \relative c {
  c16 bes16 |
  aes4 c4 des4 c4 |
  des4 ees4 f4.\fermata
  
  f16 ees16 |
  f4 g4 aes4 g4 |
  aes4 aes4 bes4.\fermata
  
  c16 bes16 |
  \tuplet 3/2 { aes4 g4 f4 }
  f8\( ees8\) ees8 des8 |
  c4 bes8\( c8\) des4.\fermata
  
  f16 g16 |
  aes4 ees4 des4 c4 |
  des4 ees4 f4.\fermata
  
  f16 g16 |
  aes4 ees4 des4 c4 |
  des4 <ees c>4 <f f,>4.\fermata \bar "|."
}

SheetMusicVerseBreaks = \relative c {
  s8 | \noBreak
  s1 | \noBreak
  s2 s4. \bar "" \break \noPageBreak

  s8 | \noBreak
  s1 | \noBreak
  s2 s4. \bar "" \break \noPageBreak

  s8 | \noBreak
  s1 | \noBreak
  s2 s4. \bar "" \break \noPageBreak

  s8 | \noBreak
  s1 | \noBreak
  s2 s4. \bar "" \break \noPageBreak

  s8 | \noBreak
  s1 | \noBreak
  s2 s4. \bar "|."
}

SlidesVerseBreaks = \relative c {
  \setSystemOffset \defaultTopSystemOffset
  \setSystemOffset \defaultBottomSystemOffset
}

VerseOne = \lyricmode {
  \set stanza = "1. "
  When I feel the dark -- nes draw -- ing near;
  And I drown with -- in my griev -- ous tears,
  Fa -- ther help me to see tru -- ly who I am!
  Do I wor -- ship You or wor -- ship man?
  Do I wor -- ship You or wor -- ship man?
}

VerseTwo = \lyricmode {
  \set stanza = "2. "
  Am I real -- ly who I seem to be?
  Do I mask my sin or am I free?
  Fa -- ther speak to my heart from Your Word to -- day!
  Do I trust in You or fall a -- way?
  Do I trust in You or fall a -- way?
}

VerseThree = \lyricmode {
  \set stanza = "3. "
  Lord I know I'm weak, at times I'm wrong.
  I am blind -- ed to my sin -- ful wants!
  Fa -- ther for -- give my sins when I fail to stand!
  Lord I choose to fol -- low Your com -- mands!
  Lord I choose to fol -- low Your com -- mands!
}

VerseFour = \lyricmode {
  \set stanza = "4. "
  Now I'm wait -- ing for that glor -- ious day;
  When all death has passed there is no grave!
  Ho -- ly Lord reign on high on Your glor -- ious throne!
  I will praise You God for -- ev -- er more!
  I will praise You God for -- ev -- er more!
}
