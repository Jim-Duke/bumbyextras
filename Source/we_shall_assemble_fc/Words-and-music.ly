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
  \key c \minor
  \time 4/4
  \tempo 4 = 90
}

MajorKey = ##f

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
  r8 c8 c8 d8 ees8 d8 c8 bes16[ c16] |
  c4 c2. |
  r8 c8 c8 c8 c8 bes8 bes8 aes16[ bes16] |
  bes1 |
  r8 g8 g8 g8 g8 f8 f8 ees8 |
  f8.[ ees16] ees2. |
  r8 ees8 ees8 bes'8 bes8 g8 f8. ees16 |
  ees1 \bar "|."
}

AltoVerseMusic = \relative c' {
  r8 ees8 ees8 ees8 ees8 d8 d8( c8) |
  d8.( c16) c2. |
  r8 c8 c8 c8 c8 d8 d8 ees8 |
  ees1 |
  r8 ees8 ees8 ees8 ees8 d8 d8 c8 |
  d8. c16 c2. |
  r8 c8 c8 c8 c8 d8 d8 ees8 |
  ees1 \bar "||"
}

TenorVerseMusic = \relative c' {
}

BassVerseMusic = \relative c' {
}

SheetMusicVerseBreaks = {
  s1 | \noBreak
  s1 | \break
  
  s1 | \noBreak
  s1 | \break
  
  s1 | \noBreak
  s1 | \break
  
  s1 | \noBreak
  s1 | \break
}

SheetMusicChorusBreaks = {
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
  O, hal -- le -- lu -- jah, hal -- le -- lu - jah!
  We sing the song of the re -- deemed.
}

ChorusB = \lyricmode {
}
