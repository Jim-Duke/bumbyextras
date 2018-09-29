\version "2.19.49"
#(use-modules (guile-user))

#(ly:set-option 'relative-includes #t)
\include "../../../LilypondTemplates/functions.ly"
\include "../../../LilypondTemplates/hymns.ly"
\include "../hymn_settings.ly"

global = {
  \key ees \major
  \time 3/4
  \tempo 4 = 90
}

MajorKey = ##t

%%
%% Hymn Metadata Variables
%%

Title = "What the Lord Has Done in Me"
SongNumber = \what_the_lord_has_done_in_me_number
RightFirstPage = \what_the_lord_has_done_in_me_number_rhs
FirstPage = #(if RightFirstPage 1 2)

LeaderHints = \markup {
  \fontsize #-4
  \normal-text { "E" \musicglyph #"accidentals.flat" " - E - DO" }
}

Scripture = "And He has said to me, “My grace is sufficient for you, for power
             is perfected in weakness.”  Most gladly, therefore, I will rather
             boast about my weaknesses, so that the power of Christ may dwell
             in me.  (2 Corinthians 12:9 NASB95)"

ShowScriptureOnSheetMusic = ##t

\header {
  title = \Title
  meter = "Irregular"
  composer = "Reuben Morgan (1998)"
  poet = "Reuben Morgan (1998)"
  songNumber = \SongNumber
  lhs = #(if RightFirstPage LeaderHints SongNumber)
  rhs = #(if RightFirstPage SongNumber LeaderHints)
  copyright = "Copyright 1998, arr. 2010 Reuben Morgan and Hillsong Publishing (admin. by EMI Christian Music Group, Inc.)"
  license = #(string-append "CCLI Song #2582803, License #" ccli_license)
  tagline = ##f
}

SopranoVerseMusic = \relative c' {
  \autoBeamOff
  \tag #'usePartials { \partial 4 }
  ees8 f8 |
  g4 g4 f8. ees16 |
  ees4. r8 g8 bes8 |
  c4 c4 c8. bes16 |
  g4. r8 \bar ""
  
  ees8 f8 |
  g4 g4 f8. ees16 |
  ees4
  \tag #'(verseOneRhythms sheetMusicRhythms) { r8 c8 }
  \tag #'(verseTwoRhythms verseThreeRhythms) { r4 }
  c8 d8 |
  ees4 g4 f8. ees16 |
  ees4 r4 \bar "||"
}

SopranoRefrainMusic = \relative c'' {
  \autoBeamOff
  \tag #'usePartials { \partial 4 }
  ees8.[ d16] |
  d4 d8 r8 c8[ d8] |
  ees8.[ c16] c8 r8 g8 bes8 |
  c2 c8. bes16 |
  bes4. r8 \bar ""
  
  ees8.[ d16] |
  d4 d8 r8 c8[ d8] |
  ees8.[ c16] c8 r8 ees,8 f8 |
  g4. g8 f8. ees16 |
  ees2 \bar "|."
}

AltoVerseMusic = \relative c' {
  \autoBeamOff
  \tag #'usePartials { \partial 4 }
  ees8 d8 |
  ees4 ees4 d8. bes16 |
  bes4. r8 ees8 ees8 |
  ees4 ees4 ees8. d16 |
  ees4. r8 \bar ""
  
  ees8 d8 |
  ees4 ees4 d8. c16 |
  c4
  \tag #'(verseOneRhythms sheetMusicRhythms) { r8 c8 }
  \tag #'(verseTwoRhythms verseThreeRhythms) { r4 }
  c8 d8 |
  c4 c4 d8. ees16 |
  ees4 r4 \bar "||"
}

AltoRefrainMusic = \relative c'' {
  \autoBeamOff
  \tag #'usePartials { \partial 4 }
  g8. f16 |
  f4 f8 r8 aes4 |
  g8. ees16 ees8 r8 ees8 g8 |
  aes2 aes8. g16 |
  g4. r8 \bar ""
  
  g8. f16 |
  f4 f8 r8 aes4 |
  g8. ees16 ees8 r8 ees8 ees8 |
  ees4. ees8 d8. ees16 |
  ees2 \bar "|."
}

TenorVerseMusic = \relative c' {
  \autoBeamOff
  \tag #'usePartials { \partial 4 }
  g8 bes8 |
  bes4 bes4 aes8. g16 |
  g4. r8 bes8 g8 |
  aes4 aes4 aes8. aes16 |
  g4. r8 \bar ""
  
  g8 bes8 |
  bes4 bes4 aes8. g16 |
  g4
  \tag #'(verseOneRhythms sheetMusicRhythms) { r8 aes8 }
  \tag #'(verseTwoRhythms verseThreeRhythms) { r4 }
  aes8 aes8 |
  aes4 aes4 aes8. g16 |
  g4 r4 \bar "||"
}

TenorRefrainMusic = \relative c' {
  \autoBeamOff
  \tag #'usePartials { \partial 4 }
  bes4 |
  bes4 bes8 r8 d4 |
  c4 c8 r8 c8 d8 |
  ees2 ees8. ees16 |
  ees4. r8 \bar ""
  
  bes4 |
  bes4 bes8 r8 d4 |
  c4 c8 r8 c8 c8 |
  bes4. bes8 aes8. g16 |
  g2 \bar "|."
}

BassVerseMusic = \relative c {
  \autoBeamOff
  \tag #'usePartials { \partial 4 }
  ees8 bes8 |
  ees4 ees4 bes8. bes16 |
  ees4. r8 ees8 ees8 |
  aes,4 aes4 aes8. bes16 |
  c4. r8 \bar ""
  
  bes8 bes8 |
  ees4 ees4 bes8. c16 |
  c4
  \tag #'(verseOneRhythms sheetMusicRhythms) { r8 c8 }
  \tag #'(verseTwoRhythms verseThreeRhythms) { r4 }
  c8 bes8 |
  aes4 aes4 bes8. bes16 |
  ees4 r4 \bar "||"
}

BassRefrainMusic = \relative c {
  \autoBeamOff
  \tag #'usePartials { \partial 4 }
  ees4 |
  bes4 bes8 r8 bes4 |
  c4 c8 r8 c8 bes8 |
  aes2 aes8. aes16 |
  ees'4. r8 \bar ""
  
  ees4 |
  bes4 bes8 r8 bes4 |
  c4 c8 r8 aes8 aes8 |
  ees'4. ees8 bes8. bes16 |
  ees2 \bar "|."
}

AlignRefrainMusic = \relative c {
  \tag #'usePartials { \partial 4 }
  c4 |
  c4 c8 r8 c4 |
  c4 c8 r8 c8 c8 |
  c2 c8. c16 |
  c4. r8 \bar ""
  
  c4 |
  c4 c8 r8 c4 |
  c4 c8 r8 c8 c8 |
  c4. c8 c8. c16 |
  c2 \bar "|."
}

SheetMusicVerseBreaks = \relative c {
  \tag #'usePartials { \partial 4 }
  s4  | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2  \bar "" \break
  
  s4  | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2  \bar "" \break
}

SlidesVerseBreaks = \relative c {
  \tag #'usePartials { \partial 4 }
  \setSystemOffset \defaultTopSystemOffset
  s4  | \noBreak
  s2. | \noBreak
  s2  \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s4  | \noBreak
  s2. | \noBreak
  s2  \bar "" \pageBreak
  
  \setSystemOffset \defaultTopSystemOffset
  s4  | \noBreak
  s2. | \noBreak
  s4
  \tag #'verseOneRhythms { r8 }
  \tag #'(verseTwoRhythms verseThreeRhythms) { r4 }
  \bar "" \break \noPageBreak 
  
  \setSystemOffset \defaultBottomSystemOffset
  \tag #'verseOneRhythms { s4. }
  \tag #'(verseTwoRhythms verseThreeRhythms) { s4 }
  | \noBreak
  s2. | \noBreak
  s2  \bar "" \pageBreak
}

SlidesRefrainBreaks = \relative c {
  \tag #'usePartials { \partial 4 }
  \setSystemOffset \defaultTopSystemOffset
  s4  | \noBreak
  s2. | \noBreak
  s2  \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s4  | \noBreak
  s2. | \noBreak
  s2  \bar "" \pageBreak

  \setSystemOffset \defaultTopSystemOffset
  s4  | \noBreak
  s2. | \noBreak
  s2  \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s4  | \noBreak
  s2. | \noBreak
  s2  \bar "|." \pageBreak
}

VerseOne = \lyricmode {
  \set stanza = "1. "
  Let the weak say, \markup { "\" I" } am \markup { "strong\";" }
  Let the poor say, \markup { "\"I" } am \markup { "rich\";" }
  Let the blind say, \markup { "\"I" } can \markup { "see\";" }
  It's what the Lord has done in me.
}

VerseTwo = \lyricmode {
  \set stanza = "2. "
  In the riv -- er I will wade;
  There my sins are washed a -- way
  By the heav -- en's mer -- cy stream
  Of the Sav -- ior's love for me.
}

VerseThree = \lyricmode {
  \set stanza = "3. "
  I will rise from wa -- ters deep
  To the sav -- ing arms of God.
  I will sing sal -- va -- tion's songs.
  Je -- sus Christ has set me free.
}

RefrainLyrics = \lyricmode {
  Ho -- san -- na, Ho -- san -- na
  To the Lamb that was slain.
  Ho -- san -- na, Ho -- san -- na
  Je -- sus died and rose a -- gain.
}
