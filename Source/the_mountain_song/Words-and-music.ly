\version "2.19.49"

\include "../../../LilypondTemplates/functions.ly"
\include "../../../LilypondTemplates/hymns.ly"
\include "../hymn_settings.ly"

global = {
  \key ees \major
  \time 2/4
  \tempo 4 = 75
}

MajorKey = ##t

Title = "The Mountain Song"
SongNumber = \the_mountain_song_number
LeaderHints = \markup {
  \fontsize #-4
  \normal-text { "E" \musicglyph #"accidentals.flat" " - 2 - DO" }
}

number_on_rhs = \the_mountain_song_number_rhs

#(if number_on_rhs
     (begin
      (define lhs LeaderHints)
      (define rhs SongNumber))
     (begin
      (define lhs SongNumber)
      (define rhs LeaderHints)))

\header {
  title = \Title
  tune = "The Mountain Song"
  meter = "10.11.11.10 with Chorus"
  composer = "Roger Carson"
  poet = "Roger Carson"
  songNumber = \SongNumber
  lhs = \lhs
  rhs = \rhs
  copyright = "Copyright (c) 1972 by Kingsmen Publishing Co."
  license = #(string-append "CCLI Song #85969, License #" ccli_license)
  tagline = ##f
}

Scripture = #"He went out to the mountain to pray, and continued all night in prayer
 to God. -- Luke 6:12 NASB95"

SheetMusicBreaks = \relative c {
  \tag #'usePartials { \partial 8 }
}

SheetMusicChorusBreaks = \relative c {
  \tag #'usePartials { \partial 8 }
}

SlidesMusicBreaks = \relative c {
  \tag #'usePartials { \partial 8 }
  \setSystemOffset \defaultTopSystemOffset
  \setSystemOffset \defaultBottomSystemOffset
}

slideMusicBridgeBreaks = \relative c {
  \tag #'usePartials { \partial 8 }
  \setSystemOffset \defaultTopSystemOffset
  \setSystemOffset \defaultBottomSystemOffset
}

SopranoVerseMusic = \relative c' {
  \tag #'usePartials { \partial 8 }
  \autoBeamOff
  ees8 |
  g8 bes8 bes8 g16 aes16~ |
  aes8 g8 f16 f8. |
  ees2~ |
  ees4. \bar ""
  
  ees16 ees16 |
  g8 bes8 bes8 g16 aes16~ |
  aes8 g8 aes8 g8 |
  f2~ |
  f4. \bar ""
  
  \tag #'verseOneSlidesRhythms { ees8 }
  \tag #'(verseTwoSlidesRhythms verseTwoSheetRhythms) { ees16 ees16 }
  \tag #'(verseOneSheetRhythms sheetMusicRhythms) { ees16~ ees16 } |
  g8 bes8 bes8 g16 aes16~ |
  aes8 g8 f8 f8 |
  ees2~ |
  ees4~ ees8. \bar ""
  
  \tag #'verseOneSlidesRhythms { r16 }
  \tag #'(verseOneSheetRhythms verseTwoSheetRhythms verseTwoSlidesRhythms sheetMusicRhythms) { ees16 } |
  aes8 aes16 aes8. g8 |
  f8 f16 ees8. d8 |
  ees2~ |
  ees4 r8 \bar "||"
}

SopranoChorusMusic = \relative c' {
  \tag #'usePartials { \partial 8 }
  \autoBeamOff
  ees16 ees16 |
  c'16 c8 c8. c8 |
  d16 d8 d8. d8 |
  ees8 ees16 bes8 g16
  
  bes8 |
  ees,4 r8 ees16 ees16 |
  c'16 c8 c8. c8 |
  d16 d8 d8. d8 |
  
  ees8 ees16 bes8 g16 bes8~ |
  bes4 r8 ees,16 ees16 |
  c'16 c8 c8. c8 |
  
  d16 d8 d8. d8 |
  ees8 ees16 bes8 g16 bes8~ |
  bes4 r8
}

SopranoChorusTailMusic = \relative c' {
  \tag #'usePartials { \partial 8 }
  \autoBeamOff
  ees8 |
  g8 bes16 bes8. c8 |
  bes8 g8 r8 ees8 |
  g8 g8 f16 f8. |
  ees4. \bar "|."
}

AltoVerseMusic = \relative c' {
  \tag #'usePartials' { \partial 8 }
  \autoBeamOff
  bes8 |
  ees8 g8 g8 ees16 ees16~ |
  ees8 ees8 d16 d8. |
  ees2~ |
  ees4. \bar ""
  
  bes16 bes16 |
  ees8 g8 g8 ees16 ees16~ |
  ees8 ees8 ees8 ees8 |
  d2~ |
  d4. \bar ""
  
  \tag #'verseOneSlidesRhythms { bes8 }
  \tag #'(verseTwoSlidesRhythms verseTwoSheetRhythms) { bes16 bes16 }
  \tag #'(verseOneSheetRhythms sheetMusicRhythms) { bes16~ bes16 } |
  ees8 g8 g8 ees16 ees16~ |
  ees8 ees8 d8 d8 |
  c2~ |
  c4~ c8. \bar ""
  
  \tag #'verseOneSlidesRhythms { r16 }
  \tag #'(verseOneSheetRhythms verseTwoSheetRhythms verseTwoSlidesRhythms sheetMusicRhythms) { c16 } |
  ees8 ees16 ees8. ees8 |
  d8 d16 bes8. bes8 |
  bes2~ |
  bes4 r8 \bar "||"
}

AltoChorusMusic = \relative c' {
  \tag #'usePartials { \partial 8 }
  \autoBeamOff
}

AltoChorusTailMusic = \relative c' {
  \tag #'usePartials { \partial 8 }
  \autoBeamOff
}

TenorVerseMusic = \relative c' {
  \tag #'usePartials' { \partial 8 }
  \autoBeamOff
  g8 |
  bes8 ees8 ees8 bes16 c16~ |
  c8 bes8 aes16 aes8. |
  g2~ |
  g4. \bar ""
  
  g16 g16 |
  bes8 ees8 ees8 bes16 c16~ |
  c8 bes8 c8 c8 |
  bes2( |
  aes4.) \bar ""
  
  \tag #'verseOneSlidesRhythms { g8 }
  \tag #'(verseTwoSlidesRhythms verseTwoSheetRhythms) { g16 g16 }
  \tag #'(verseOneSheetRhythms sheetMusicRhythms) { g16~ g16 } |
  bes8 ees8 ees8 bes16 c16~ |
  c8 bes8 aes8 aes8 |
  g2~ |
  g4~ g8. \bar ""
  
  \tag #'verseOneSlidesRhythms { r16 }
  \tag #'(verseOneSheetRhythms verseTwoSheetRhythms verseTwoSlidesRhythms sheetMusicRhythms) { g16 } |
  c8 c16 c8. c8 |
  aes8 aes16 g8. f8 |
  g2~ |
  g4 r8 \bar "||"
}

TenorChorusMusic = \relative c {
  \tag #'usePartials { \partial 8 }
  \autoBeamOff
}

TenorChorusTailMusic = \relative c {
  \tag #'usePartials { \partial 8 }
  \autoBeamOff
}

BassVerseMusic = \relative c {
  \tag #'usePartials' { \partial 8 }
  \autoBeamOff
  ees8 |
  ees8 ees8 ees8 ees16 aes,16~ |
  aes8 bes8 bes16 bes8. |
  ees2~ |
  ees4. \bar ""
  
  ees16 ees16 |
  ees8 ees8 ees8 ees16 aes,16~ |
  aes8 aes8 aes8 a8 |
  bes2~ |
  bes4. \bar ""
  
  \tag #'verseOneSlidesRhythms { bes8 }
  \tag #'(verseTwoSlidesRhythms verseTwoSheetRhythms) { bes16 bes16 }
  \tag #'(verseOneSheetRhythms sheetMusicRhythms) { bes16~ bes16 } |
  ees8 ees8 ees8 ees16 aes,16~ |
  aes8 bes8 bes8 bes8 |
  c2~ |
  c4~ c8. \bar ""
  
  \tag #'verseOneSlidesRhythms { r16 }
  \tag #'(verseOneSheetRhythms verseTwoSheetRhythms verseTwoSlidesRhythms sheetMusicRhythms) { c16 } |
  aes8 aes16 aes8. a8 |
  bes8 bes16 bes8. bes8 |
  ees2~ |
  ees4 r8 \bar "||"
}

BassChorusMusic = \relative c {
  \tag #'usePartials { \partial 8 }
  \autoBeamOff
}

BassChorusTailMusic = \relative c {
  \tag #'usePartials { \partial 8 }
  \autoBeamOff
}

SheetMusicVerseBreaks = {
  \tag #'usePartials { \partial 8 }
  s8 | \noBreak
  s2 | \noBreak
  s2 | \noBreak
  s2 | \noBreak
  s4. \bar "" \break

  s8 | \noBreak
  s2 | \noBreak
  s2 | \noBreak
  s2 | \noBreak
  s4. \bar "" \break

  s8 | \noBreak
  s2 | \noBreak
  s2 | \noBreak
  s2 | \noBreak
  s4 s8. \bar "" \break

  s16 | \noBreak
  s2 | \noBreak
  s2 | \noBreak
  s2 | \noBreak
  s4. \bar "||" \break
}

SheetMusicChorusBreaks = {
  \tag #'usePartials { \partial 8 }
  s8 | \noBreak
  s2 | \noBreak
  s2 | \noBreak
  s2 | \noBreak
  s4. \bar "" \break \noPageBreak
  
  s8 | \noBreak
  s2 | \noBreak
  s2 | \noBreak
  s2 | \noBreak
  s4. \bar "" \break \noPageBreak
  
  s8 | \noBreak
  s2 | \noBreak
  s2 | \noBreak
  s2 | \noBreak
  s4. \bar "" \break \noPageBreak
}

SheetMusicChorusTailBreaks = {
  \tag #'usePartials { \partial 8 }
  s8 | \noBreak
  s2 | \noBreak
  s2 | \noBreak
  s2 | \noBreak
  s4. \bar "|."
}

SlidesVerseBreaks = {
  \tag #'usePartials { \partial 8 }
  \setSystemOffset \defaultTopSystemOffset
  s8 | \noBreak
  s4 s8. \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s16 | \noBreak
  s2 | \noBreak
  s2 | \noBreak
  s4. \bar "" \pageBreak
  
  \setSystemOffset \defaultTopSystemOffset
  s8 | \noBreak
  s4 s8. \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s16 | \noBreak
  s2 | \noBreak
  s2 | \noBreak
  s4. \bar "" \pageBreak
  
  \setSystemOffset \defaultTopSystemOffset
  s8 | \noBreak
  s4 s8. \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s16 | \noBreak
  s2 | \noBreak
  s2 | \noBreak
  s4 s8. \bar "" \pageBreak
  
  \setSystemOffset \defaultTopSystemOffset
  s16 | \noBreak
  s2  | \noBreak
  s8  \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s4. | \noBreak
  s2  | \noBreak
  s4. \bar "||" \pageBreak
}

lyricRest = \markup { \raise #1.0 \musicglyph #"rests.4" }

VerseOne = \lyricmode {
  \set stanza = "1. "
  O Lord, I need a moun -- tain to climb on;
  Just a qui -- et place to go and know You're there.
  O Lord, I need to spend some time with You;
  \tag #'verseOneSheetRhythms { \lyricRest }
  Spend the night with You, dear Lord, in prayer.
}

VerseTwo = \lyricmode {
  \set stanza = "2. "
  O Lord, I tho't the day would nev -- er dawn,
  When I'd lay my bur -- dens down and walk with You;
  But this morn -- ing as I met the ris -- ing sun;
  I felt, dear Lord, my dreams had all come true.
}

Chorus = \lyricmode {
  And the great -- est Friend you'll ev -- er find is on a lone -- ly moun -- tain.
  And the high -- est high you'll ev -- er feel is when you kneel to pray.
  And the bright -- est light you'll ev -- er see is when you close your eyes.
}

ChorusTail = \lyricmode {
  O Lord, You are my first love; at last I re -- al -- ize.
}