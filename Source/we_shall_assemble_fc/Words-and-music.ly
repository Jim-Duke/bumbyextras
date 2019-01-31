\version "2.19.49"
#(use-modules (guile-user))

#(ly:set-option 'relative-includes #t)
\include "../../../LilypondTemplates/functions.ly"
\include "../../../LilypondTemplates/midi.ly"
\include "../../../LilypondTemplates/hymns.ly"
\include "../hymn_settings.ly"

%%
%% Tweaks
%%

SheetMusicRaggedLast = ##t

%%
%% Music Variables
%%

global = {
  \key ees \major
  \time 4/4
  \tempo 4 = 90
}

MajorKey = ##t

%%
%% Hymn Metadata Variables
%%

Title = "We Shall Assemble"
SongNumber = \we_shall_assemble_fc_number
RightFirstPage = \we_shall_assemble_fc_number_rhs
FirstPage = #(if RightFirstPage 1 2)

LeaderHints = \markup {
  \fontsize #-4
  \normal-text { "E" \musicglyph #"accidentals.flat" " (Cm) - 4 - MI" }
}

Scripture = "But you have come to Mount Zion...to the general assembly
             and church of the firstborn...and to Jesus.  Heb. 12:22-24"

ShowScriptureOnSheetMusic = ##t

\header {
  title = \Title
  tune = "WE SHALL ASSEMBLE"
  meter = "9.8.9.8D"
  composer = "Twila Paris"
  arranger = "Dane K. Shepard"
  poet = "Twila Paris"
  songNumber = \we_shall_assemble_fc_number
  lhs = #(if RightFirstPage LeaderHints we_shall_assemble_fc_number)
  rhs = #(if RightFirstPage we_shall_assemble_fc_number LeaderHints)
  copyright = "Copyright 1991 by Ariose-Music & Mountain Spring Music.  All rights reserved."
  license = "Used by permission"
}

SopranoVerseMusic = \relative c'' {
  r8 g8 g8 g8 g8 f8
  \tag #'sheetMusic { f8( ees8) }
  \tag #'verseOne { f8 ees8 }
  \tag #'verseTwo { f8( ees8) } |
  f8.( ees16) ees2. |
  r8 ees8 ees8 ees8 ees8 f8 f8 g8 |
  g1 |
  r8 g8 g8 g8 g8 f8 f8 ees8 |
  f8.( ees16) ees2. |
  
  r8 ees8 ees8 ees8 ees8 f8 f8 bes8 |
  bes1 \bar "||"
}

SopranoChorusMusic = \relative c'' {
  r8^"Chorus" c8 c8 d8 ees8 d8 c8 bes16( c16) |
  c4 c2. |
  r8 c8 c8 c8 c8 bes8 bes8 aes16( bes16) |
  bes1 |
  r8 g8 g8 g8 g8 f8 f8 ees8 |
  f8.( ees16) ees2. |
  r8 ees8 ees8 bes'8 bes8 g8 f8. ees16 |
  ees1 \bar "|."
}

AltoVerseMusic = \relative c' {
  r8 ees8 ees8 ees8 ees8 d8
  \tag #'sheetMusic { d8( c8) }
  \tag #'verseOne { d8 c8 }
  \tag #'verseTwo { d8( c8) } |
  d8.( c16) c2. |
  r8 c8 c8 c8 c8 d8 d8 ees8 |
  ees1 |
  r8 ees8 ees8 ees8 ees8 d8 d8 c8 |
  d8. c16 c2. |
  r8 c8 c8 c8 c8 d8 d8 ees8 |
  ees1 \bar "||"
}

AltoChorusMusic = \relative c'' {
  r1 |
  r8 aes8 aes8 aes8 aes8 g8 f8 ees8 |
  f8.( ees16) ees4( d2) |
  r8 ees8 ees8 f8 g8 g8 f8 d8 |
  c2( bes2) |
  r8 ees8 ees8 c8 c4 d4 |
  r8 c8 c8 ees8 d8 d8 d8. bes16 |
  bes1 \bar "|."
}

TenorVerseMusic = \relative c' {
  r8 c8 c8 c8 c8 g8
  \tag #'sheetMusic { g8( g8) }
  \tag #'verseOne { g8 g8 }
  \tag #'verseTwo { g4 } |
  aes4 aes2. |
  r8 aes8 aes8 g8 f8 bes8 bes8 g8 |
  c1 |
  r8 c8 c8 c8 c8 g8 g8 g8 |
  aes4 aes2. |
  r8 aes8 aes8 g8 f8 bes8 bes8 g8 |
  g1 \bar "||"
}

TenorChorusMusic = \relative c' {
  r1 |
  r8 c8 c8 c8 c8 bes8 aes8 aes8 |
  aes4 aes4( bes2) |
  r8 g8 g8 aes8 bes8 bes8 bes8 d8 ees2( d2) |
  r8 c8 c8 aes8 aes4 bes4 |
  r8 aes8 aes8 c8 aes8 aes8 aes8. aes16 |
  g1 \bar "|."
}

BassVerseMusic = \relative c {
  r8 c8 c8 c8 bes8 bes8
  \tag #'sheetMusic { bes8( bes8) }
  \tag #'verseOne { bes8 bes8 }
  \tag #'verseTwo { bes4 } |
  aes4 aes2. |
  r8 aes8 aes8 aes8 aes8 bes8 bes8 c8 |
  c1 |
  r8 c8 c8 c8 bes8 bes8 bes8 bes8 |
  aes4 aes2. |
  r8 aes8 aes8 aes8 aes8 bes8 bes8 ees8 |
  ees1 \bar "||"
}

BassChorusMusic = \relative c {
  r8 ees8 ees8 ees8 ees8 ees8 ees8 ees8 |
  ees4 ees2. |
  r8 ees8 ees8 ees8 bes8 bes8 bes8 bes8 |
  ees2.( d4 |
  c8) c8 c8 c8 bes8 bes8 bes8 bes8 |
  aes4 aes2. |
  r8 aes8 aes8 aes8 bes8 bes8 bes8. bes16 |
  ees1 \bar "|."
}

SheetMusicVerseBreaks = {
  s1 | \noBreak
  s1 | \break
  
  s1 | \noBreak
  s1 | \break
  
  s1 | \noBreak
  s1 | \break
  
  s1 | \noBreak
  s1 | \pageBreak
}

SheetMusicChorusBreaks = {
  s1 | \noBreak
  s1 | \break
  
  s1 | \noBreak
  s1 | \break
  
  s1 | \noBreak
  s1 | \break
  
  s1 | \noBreak
  s1 | \break
}

SlidesVerseBreaks = \relative c {
  \setSystemOffset \defaultTopSystemOffset
  \setSystemOffset \defaultBottomSystemOffset
}

VerseOne = \lyricmode {
  \set stanza = "1. "
  We shall as -- sem -- ble on the moun -- tain,
  We shall as -- sem -- ble at the throne;
  With hum -- ble hearts in -- to His pres -- ence,
  We bring an of -- fer -- ing of song.
}

VerseTwo = \lyricmode {
  \set stanza = "2. "
  And at the end of our jour -- ney,
  We shall bow down on bend -- ed knee;
  And with the an -- gels up in heav -- en,
  We'll sing the song of vic -- to -- ry.
}

ChorusA = \lyricmode {
  Glo -- ry and hon -- or and do -- min -- ion
  un -- to the Lamb, un -- to the King.
  O, hal -- le -- lu -- jah, hal -- le -- lu -- jah!
  We sing the song of the re -- deemed.
}

ChorusB = \lyricmode {
  Glo -- ry and hon -- or and do -- min -- ion
  un -- to the Lamb, un -- to the King,
  O, hal -- le -- lu -- jah!
}
