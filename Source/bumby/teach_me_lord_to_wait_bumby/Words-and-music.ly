\version "2.19.49"

\include "../../../../LilypondTemplates/functions.ly"
\include "../../../../LilypondTemplates/hymns.ly"
\include "../hymn_settings.ly"

global = {
  \key f \major
  \time 3/4
  \tempo 4 = 100
}

MajorKey = ##t

Title = "Teach Me Lord to Wait"
SongNumber = \teach_me_lord_to_wait_bumby_number
leaderHints = \markup {
  \fontsize #-4
  \normal-text { "F - 3 - SOL" }
}
number_on_rhs = \teach_me_lord_to_wait_bumby_number_rhs
FirstPage = #(if number_on_rhs 1 2)

#(if number_on_rhs
     (begin
      (define lhs leaderHints)
      (define rhs SongNumber))
     (begin
      (define lhs SongNumber)
      (define rhs leaderHints)))

\header {
  title = "Teach Me Lord to Wait"
  tune = "Teach Me Lord to Wait"
  meter = ""
  composer = "Stuart Hamblen, 1953"
  poet = "Stuart Hamblen, 1953"
  songNumber = \SongNumber
  lhs = \lhs
  rhs = \rhs
  copyright = "Words and Music Copyright © 1953, Renewal 1981 by Hamblen Music Co., Inc. All rights reserved."
  license = #(string-append "CCLI Song #31463, License #" bumby_ccli_license)
  arranger = "Gerald Moore, 1992"
  tagline = ##f
}

Scripture = #"“But those who wait on the LORD Shall renew their strength;
         They shall mount up with wings like eagles,
         They shall run and not be weary,
         They shall walk and not faint.” (Isaiah 40:31, NKJV)"

%
% Rhythms for the sheet music with line break controls
%
SheetMusicBreaks = {
  \tag #'usePartials { \partial 4 }
  s4  | \noBreak
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
  s2 \bar "|."
}

SheetMusicChorusBreaks = {
  \tag #'usePartials { \partial 4 }
  s4  | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2  \bar "" \break \noPageBreak
  
  s4  | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2  \bar "" \break \noPageBreak
  
  s4  | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2  \bar "" \break \noPageBreak
  
  s4  | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2 \bar "|."
}

EchoAlign = {
  \tag #'usePartials { \partial 4 }
  s4 |
  s2. |
  s2. |
  s2. |
  s2. |
  
  s2. |
  s2. |
  s2. |
  c2 c4 |
}

slideMusicBreaks = \relative c {
  \tag #'usePartials { \partial 4 }
  
  \setSystemOffset \defaultTopSystemOffset
  s4    | \noBreak
  s2.   | \noBreak
  s2 s8 \bar "" \break \noPageBreak
  
  \setSystemOffset #32
  s8  | \noBreak
  s2. | \noBreak
  s2  \bar "" \pageBreak
  
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
  s2 \bar "" \pageBreak
  
  \setSystemOffset \defaultTopSystemOffset
  s4  | \noBreak
  s2. | \noBreak
  s2  \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s4  | \noBreak
  s2. | \noBreak
  s2 \bar "|."
}
  
slideChorusBreaks = \relative c {
  \tag #'usePartials { \partial 4 }
  
  % They that wait upon the Lord
  \setSystemOffset \defaultTopSystemOffset
  s4  | \noBreak
  s2. | \noBreak
  s2  \bar "" \break \noPageBreak
  
  % shall renew their strength,
  \setSystemOffset #32
  s4  | \noBreak
  s2. | \noBreak
  s2  \bar "" \break \pageBreak
  
  % they shall mount up with wings
  \setSystemOffset \defaultTopSystemOffset
  s4  | \noBreak
  s2. | \noBreak
  s2  \bar "" \break \noPageBreak
  
  % like eagles.
  \setSystemOffset \defaultBottomSystemOffset
  s4  | \noBreak
  s2. | \noBreak
  s2  \bar "" \break \pageBreak
  
  % They shall run and not be weary.
  \setSystemOffset \defaultTopSystemOffset
  s4  | \noBreak
  s2. | \noBreak
  s2  \bar "" \break \noPageBreak
  
  % They shall walk and not faint."
  \setSystemOffset \defaultBottomSystemOffset
  s4  | \noBreak
  s2. | \noBreak
  s2  \bar "" \break \pageBreak
  
  % Teach me Lord, Teach me
  \setSystemOffset \defaultTopSystemOffset
  s4  | \noBreak
  s2. | \break \noPageBreak
  
  %  Lord, to wait.
  \setSystemOffset \defaultBottomSystemOffset
  s2. | \noBreak
  s2  \bar "|."
}

%
% Notes for the Soprano part during the verses.
% No break guidance is included.
%
sopranoVerse = \relative c' {
  \tag #'usePartials { \partial 4 }
  c8. d16 |
  f2 f4 |
  f8.( d16 c4.) f8 |
  a4 a4 a4 |
  a8.( g16 f4)
  
  e8. f16 |
  g4 g4 g4 |
  g4( f4) g4 |
  a4 a4 gis4 |
  a8.( g16 f4)
  
  g8. a16 |
  \tag #'verseOneRhythms { bes4 bes4 }
  \tag #'verseTwoRhythms { bes2 }
  \tag #'sheetMusicRhythms { bes4( bes4) }
  bes4 |
  bes4( f4) g4 |
  \tag #'verseOneRhythms { a4 a4 }
  \tag #'verseTwoRhythms { a2 }
  \tag #'sheetMusicRhythms { a4( a4) }
  gis4 |
  a8.( g16 f4)
  
  e8. f16 |
  \tag #'verseOneRhythms { g2 }
  \tag #'verseTwoRhythms { g4 g4 }
  \tag #'sheetMusicRhythms { g4( g4) }
  g4 |
  g4( a4) a8. g16 |
  f4 f4 f4 |
  f2 \bar "|."
}

altoVerse = \relative c' {
  \tag #'usePartials { \partial 4 }
  c8. d16 |
  c2 c4 |
  c8.( d16 c4.) c8 |
  f4 f4 f4 |
  f8.( d16 c4)
  
  c8. d16 |
  e4 e4 e4 |
  e4( d4) e4 |
  f4 f4 d4 |
  f8.( d16 c4)
  
  c8. f16 |
  \tag #'verseOneRhythms { f4 f4 }
  \tag #'verseTwoRhythms { f2 }
  \tag #'sheetMusicRhythms { f4( f4) }
  f4 |
  f2 f4 |
  \tag #'verseOneRhythms { f4 f4 }
  \tag #'verseTwoRhythms { f2 }
  \tag #'sheetMusicRhythms { f4( f4) }
  f4 |
  f8.( d16 c4)
  
  c8. d16 |
  \tag #'verseOneRhythms { e2 }
  \tag #'verseTwoRhythms { e4 e4 }
  \tag #'sheetMusicRhythms { e4( e4) }
  e4 |
  e2 e8. e16 |
  f4 c4 d4 |
  c2 \bar "|."
}

tenorVerse = \relative c' {
  \tag #'usePartials { \partial 4 }
  a8. a16 |
  a2 a4 |
  a8.( bes16 a4.) a8 |
  a4 a4 a4 | c8.( bes16 a4)
  
  g8. a16 |
  bes4 bes4 bes4 |
  bes4( a4) bes4 |
  c4 c4 b4 |
  c8.( bes16 a4)
  
  ees'8. ees16 |
  \tag #'verseOneRhythms { d4 d4 }
  \tag #'verseTwoRhythms { d2 }
  \tag #'sheetMusicRhythms { d4( d4) }
  d4 |
  d2 des4 |
  \tag #'verseOneRhythms { c4 c4 }
  \tag #'verseTwoRhythms { c2 }
  \tag #'sheetMusicRhythms { c4( c4) }
  b4 |
  c8.( bes16 a4)
  
  g8. a16 |
  \tag #'verseOneRhythms { bes2 }
  \tag #'verseTwoRhythms { bes4 bes4 }
  \tag #'sheetMusicRhythms { bes4( bes4) }
  bes4 |
  bes4( c4) c8. bes16 |
  a4 a4 bes4 |
  a2 \bar "|."
}

bassVerse = \relative c {
  \tag #'usePartials { \partial 4 }
  f8. f16 |
  f2 f4 |
  f4~ f4. f8 |
  f4 f4 f4 |
  f2
  
  c8. c16 |
  c4 c4 c4 |
  c4~ c4 c4 |
  f4 f4 f4 |
  f2
  
  c'8. c16 |
  \tag #'verseOneRhythms { bes4 bes4 }
  \tag #'verseTwoRhythms { bes2 }
  \tag #'sheetMusicRhythms { bes4( bes4) }
  bes4 |
  bes2 bes4 |
  \tag #'verseOneRhythms { f4 f4 }
  \tag #'verseTwoRhythms { f2 }
  \tag #'sheetMusicRhythms { f4( f4) }
  f4 |
  f2
  
  c8. c16 |
  \tag #'verseOneRhythms { c2 }
  \tag #'verseTwoRhythms { c4 c4 }
  \tag #'sheetMusicRhythms { c4( c4) }
  c4 |
  c2 c8. c16 |
  f4 f4 f4 |
  f2 \bar "|."
}

sopranoChorus = \relative c' {
  \tag #'usePartials { \partial 4 }
  c8. d16 |
  f4. d8 f8. d16 |
  f8.( d16 c4)
  
  f8. g16 |
  a2 a4 |
  a8.( g16 f4)
  
  e8. f16 |
  g4 g4. g8 |
  g4( f4)
  
  g4 |
  a4 c2~ |
  c2 f8 e8 |
  d4. d8 d8. d16 |
  d4 bes4 f'8. d16 |
  c4. d8 c8.( a16) |
  f2 c8. d16 |
  f2 f'8. d16 |
  c8( a4.) g4 |
  f2^\fermataMarkup \bar "|."
}

altoChorus = \relative c' {
  \tag #'usePartials { \partial 4 }
  c8. d16 |
  c4. d8 c8. d16 |
  c8.( d16 c4)
  
  c8. e16 |
  f2 f4 |
  f8.( d16 c4)
  
  c8. d16 |
  e4 e4. e8 |
  e4( d4)
  e4 |
  f4 f2 |
  a4( bes4) c4 |
  bes4. bes8 bes8. bes16 |
  bes4 f4 bes8. bes16 |
  a4. f8 e4 |
  f2 c8. d16 |
  c2 f8. f16 |
  f2 e4 |
  c2 \bar "|."
}

tenorChorus = \relative c' {
  \tag #'usePartials { \partial 4 }
  a8. bes16 |
  a4. bes8 a8. bes16 |
  a8.( bes16 a4)
  
  a8. bes16 |
  c2 c4 |
  c8.( bes16 a4)
  
  g8. a16 |
  bes4 bes4. bes8 |
  bes4( a4)
  bes4 |
  c4 a2 |
  f'2 f4 |
  f4. f8 f8. f16 |
  f4 d4 d8. f16 |
  f4. a,8 c4 |
  a2 a8. bes16 |
  a2 d8. bes16 |
  a8( c4.) bes4 |
  a2 \bar "|."
}

bassChorus = \relative c {
  \tag #'usePartials { \partial 4 }
  f8. f16 |
  f4. f8 f8. f16 |
  f2
  
  a8. g16 |
  f2 f4 |
  f2
  
  c8. c16 |
  c4 c4. c8 |
  c2
  
  c4 |
  f4 f2 |
  f4( g4) a4 |
  bes4. bes8 bes8. bes16 |
  bes4 bes4 bes8. bes16 |
  f4. f8 c4 |
  d2 f8. f16 |
  f2 bes,8. bes16 |
  c2 c4 |
  f2 \bar "|."
}

verseOne = \lyricmode {
  \set stanza = "1. "
  Teach me, Lord, to "wait! " __ right down on my knees.
  Till in Your own good time You an -- swer my pleas;
  Teach me not to re -- ly on what oth -- ers do.
  But to wait in prayer for an an -- swer from You.
}

verseTwo = \lyricmode {
  \set stanza = "2. "
  Teach me Lord, to "wait! " __ while hearts are a -- flame.
  Let me hum -- ble my pride and call on Your name.
  Keep my faith re -- newed, my eyes on Thee.
  Let me be on this earth what you want me to be.
}

chorusLyrics = \lyricmode {
  "\"They" that wait up -- on the Lord shall re -- new their strength.
  They shall mount up with wings like ea -- gles. __
  They shall run and not be wea -- ry,
  they shall walk and not "faint.\""
  Teach me, Lord, teach me, Lord, to wait.
}

EchoLyrics = \lyricmode {
  They shall
}
