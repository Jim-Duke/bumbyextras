\version "2.19.49"

\include "../../../LilypondTemplates/functions.ly"
\include "../../../LilypondTemplates/hymns.ly"
\include "../hymn_settings.ly"

global = {
  \key bes \major
  \time 3/4
  \tempo 4 = 100
}

Title = "Just As I Am - I Come Broken"
SongNumber = \just_as_I_am_I_come_broken_bumby_number
LeaderHints = \markup {
  \fontsize #-4
  \normal-text { "B" \musicglyph #"accidentals.flat" " - 3 - DO" }
}

number_on_rhs = \just_as_I_am_I_come_broken_bumby_number_rhs

#(if number_on_rhs
     (begin
      (define lhs LeaderHints)
      (define rhs SongNumber))
     (begin
      (define lhs SongNumber)
      (define rhs LeaderHints)))

FirstPage = #(if number_on_rhs 1 2)

\header {
  title = \Title
  tune = "Just As I Am - I Come Broken"
  meter = ""
  composer = "Charlotte Elliott, David Moffitt, Sue C. Smith, Travis Cottrell, William Batchelder Bradbury"
  poet = "Charlotte Elliott, David Moffitt, Sue C. Smith, Travis Cottrell, William Batchelder Bradbury"
  songNumber = \SongNumber
  lhs = \lhs
  rhs = \rhs
  copyright = \markup {
    "Copyright " \char ##x00A9 " 2009 CCTB Music, First Hand Revelation Music, Universal Music - Brentwood Benson Publishing"
  }
  license = #(string-append "CCLI Song #5635850, License #" bumby_ccli_license)
  arranger = "Sam Souder"
  scripture = #"“Your sins shall be as white as snow” - Isaiah 1:18"
  tagline = ##f
}

%
% Rhythms for the sheet music with line break controls
%
sheetMusicBreaks = \relative c {
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
  
  s4  | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2  \bar "" \break
  
  s4  | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2  \bar "|." \break
}

slideMusicBreaks = \relative c {
  \tag #'usePartials { \partial 4 }
  \setSystemOffset \defaultTopSystemOffset
  s4  | \noBreak
  s2. | \noBreak
  s2 \bar "" \break
  
  \setSystemOffset \defaultBottomSystemOffset
  s4 | \noBreak
  s2. | \noBreak
  s2  \bar "" \pageBreak
  
  \setSystemOffset \defaultTopSystemOffset
  s4  | \noBreak
  s2. | \noBreak
  s2 \bar "" \break
  
  \setSystemOffset \defaultBottomSystemOffset
  s4 | \noBreak
  s2. | \noBreak
  s2 \bar "" \pageBreak
  
  \setSystemOffset \defaultTopSystemOffset
  s4  | \noBreak
  s2. | \noBreak
  s2 \bar "" \break
  
  \setSystemOffset \defaultBottomSystemOffset
  s4 | \noBreak
  s2. | \noBreak
  s2  \bar "" \pageBreak
  
  \setSystemOffset \defaultTopSystemOffset
  s4  | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \break
  
  \setSystemOffset \defaultBottomSystemOffset
  s2. | \noBreak
  s2. | \noBreak
  s2  \bar "|." \pageBreak
}

%
% Special space notes to capture the rhythm of the 3rd verse
%
thirdVerseAlign = \relative c {
  \tag #'usePartials { \partial 4 }
  % Just as I am I would be lost,
  c8( c8) |
  c2 c4 |
  c4( c4) c4 |
  c4( c4) c4 |
  c4. r8
  
  % but mer-cy and grace my free-dom bought
  c4 |
  c4 c4 c4 |
  c2 c4 |
  c2 c4 |
  c4. r8
  
  % And now to glo-ry in Your cross
  c8( c8) |
  c2 c4 |
  c4( c4) c4 |
  c2 c4 |
  c4( c4)
  
  % O Lamb of God, I come, I come
  c4 |
  c2 c4 |
  c4( c4) c4 |
  c2 r4 |
  c2. |
  c2.~ |
  c4 r4 \bar "|."
}

sheetMusicRefrainBreaks = \relative c {
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

  s4  | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2  \bar "" \break

  s4  | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2  \bar "|." \break
}

slideMusicRefrainBreaks = \relative c {
  \tag #'usePartials { \partial 4 }
  \setSystemOffset \defaultTopSystemOffset
  s4  | \noBreak
  s2. | \noBreak
  s2  \bar "" \break
  
  \setSystemOffset \defaultBottomSystemOffset
  s4  | \noBreak
  s2. | \noBreak
  s2  \bar "" \break

  \setSystemOffset \defaultTopSystemOffset
  s4  | \noBreak
  s2. | \noBreak
  s2  \bar "" \break
  
  \setSystemOffset \defaultBottomSystemOffset
  s4  | \noBreak
  s2. | \noBreak
  s2  \bar "" \break

  \setSystemOffset \defaultTopSystemOffset
  s4  | \noBreak
  s2. | \noBreak
  s2  \bar "" \break
  
  \setSystemOffset \defaultBottomSystemOffset
  s4  | \noBreak
  s2. | \noBreak
  s2  \bar "" \break

  \setSystemOffset \defaultTopSystemOffset
  s4  | \noBreak
  s2. | \noBreak
  s2  \bar "" \break

  \setSystemOffset \defaultBottomSystemOffset
  s4  | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2  \bar "|." \break
}

%
% Notes for the Soprano part during the verses.
% No break guidance is included.
%
sopranoVerse = \relative c' {
  \tag #'usePartials { \partial 4 }
  \set Staff.autoBeaming = ##f
  bes8[( c8]) |
  d2 d4 |
  f4( ees4) d4 |
  c4( d4) ees4 |
  d4. r8
  
  f4 |
  f4( c4) d4 |
  ees2 g4 |
  g2 f4 |
  d4. r8
  
  bes8[( c8]) |
  d2 d4 |
  f4( ees4) d4 |
  g2 g4 |
  bes4( a4)
  
  g4 |
  f2 f4 |
  f4( ees4) d4 |
  c2 r4 |
  f2. |
  d2.~ |
  d4 r4 \bar "|."
}

altoVerse = \relative c' {
  \tag #'usePartials { \partial 4 }
  \set Staff.autoBeaming = ##f
  bes4 |
  bes2 bes4 |
  d4( c4) bes4 |
  a4( bes4) c4 |
  bes4. r8
  
  d4 |
  c4~ c4 bes4 |
  c2 ees4 |
  ees2 d4 |
  bes4. r8
  
  bes4 |
  bes2 bes4 |
  d4( c4) bes4 |
  ees2 ees4 |
  ees2
  
  ees4 |
  d2 d4 |
  d4( c4) bes4 |
  a2 r4 |
  c2. |
  bes2.~ |
  bes4 r4 \bar "|."
}

tenorVerse = \relative c {
  \tag #'usePartials { \partial 4 }
  \set Staff.autoBeaming = ##f
  d8[( ees8]) |
  f2 f4 |
  f2 f4 |
  f2 f4 |
  f4. r8
  
  bes4 |
  a4( a4) f4 |
  f2 a4 |
  bes2 bes4 |
  f4. r8
  
  d8[( ees8]) |
  f2 f4 |
  f2 bes4 |
  bes2 bes4 |
  g4( a4)
  
  bes4 |
  bes2 bes4 |
  bes2 f4 |
  f2 r4 |
  a2. |
  f2.~ |
  f4 r4 \bar "|."
}

bassVerse = \relative c {
  \tag #'usePartials { \partial 4 }
  \set Staff.autoBeaming = ##f
  bes4 |
  bes2 bes4 |
  bes2 bes4 |
  f'2 f4 |
  bes,4. r8
  
  bes8[( d8]) |
  f4( f4) f4 |
  f2 f4 |
  bes,2 bes4 |
  bes4. r8
  
  bes4 |
  bes2 bes4 |
  bes4( c4) d4 |
  ees2 ees4 |
  ees2
  
  ees4 |
  bes2 bes4 |
  bes4.( c8) d8[( ees8]) |
  f2 r4 |
  <f f,>2.
  bes,2.~ |
  bes4 r4 \bar "|."
}

alignChorus = \relative c'' {
  \tag #'usePartials { \partial 4 }
  c8 c8 |
  c4 c4 c8 c8 |
  c4 c4
  
  c8 c8 |
  c4 c4 c8 c8 |
  c4 r4
  
  c8 c8 |
  c4 c4 c8 c8 |
  c4 c4 c8 c8 |
  c4 c4 c8 c8 |
  c4 r4
  
  c8 c8 |
  c4 c4 c8 c8 |
  c4 c4 c8 c8 |
  c4. c8 c8 c8 |
  c2
  
  c8 c8 |
  c4 c4 r8 c8 |
  c8 c8 c4 c4 |
  c4 r4 c4 |
  c2 c4 |
  c2.~ |
  c4 r4 \bar "|."
}

sopranoChorus = \relative c'' {
  \tag #'usePartials { \partial 4 }
  \set Staff.autoBeaming = ##f
  bes8[ a8] |
  g4 g4 bes8[ a8] |
  g4 g4
  
  f8[ bes8] |
  bes4 bes4 f8[ c'8] |
  c4 r4
  
  bes8[ a8] |
  g4 g4 bes8[ a8] |
  g4 g4 f8[ bes8] |
  bes4 bes4 f8[ c'8] |
  c4 r4
  
  d8[ c8] |
  c4 bes4 d8[ c8] |
  c4 bes4 bes8[ c8] |
  d4. ees8 d8[ bes8] |
  g2
  
  bes8[ a8] |
  g4 g4 r8 a8 |
  a8[ bes8] bes4 c4 |
  bes4 r4 g4 |
  a2 bes4 |
  bes2.~ |
  bes4 r4 \bar "|."
}

altoChorus = \relative c' {
  \tag #'usePartials { \partial 4 }
  \set Staff.autoBeaming = ##f
  f8[ f8] |
  d4 d4 f8[ f8] |
  f4 ees4 ees8[ f8] |
  f4 f4 f8[ f8] |
  a4 r4
  
  f8[ f8] |
  d4 d4 f8[ f8] |
  f4 ees4 ees8[ f8] |
  f4 f4 f8[ f8] |
  a4 r4
  
  bes8[ a8] |
  a4 g4 bes8[ a8] |
  a4 g4 g8[ a8] |
  bes4. bes8 bes8[ f8] |
  f4( ees4)
  
  f8[ f8] |
  f4 ees4 r8 f8 |
  f8[ f8] f4 f4 |
  g4 r4 ees4 |
  f2 f4 |
  f2.~ |
  f4 r4 \bar "|."
}

tenorChorus = \relative c' {
  \tag #'usePartials { \partial 4 }
  \set Staff.autoBeaming = ##f
  d8[ c8] |
  bes4 bes4 d8[ c8] |
  bes4 bes4 bes8[ bes8] |
  ees4 d4 d8[ f8] |
  f4 r4
  
  d8[ c8] |
  bes4 bes4 d8[ c8] |
  bes4 bes4 bes8[ bes8] |
  ees4 d4 d8[ f8] |
  f4 r4
  
  f8[ f8] |
  f4 d4 f8[ f8] |
  ees4 ees4 d8[ ees8] |
  f4. f8 f8[ d8] |
  bes2
  
  d8[ c8] |
  bes4 bes4 f8\rest c'8 |
  c8[ d8] d4 d4 |
  ees4 r4 bes4 |
  c2 ees4 |
  ees2.( |
  d4) r4 \bar "|."
}

bassChorus = \relative c {
  \tag #'usePartials { \partial 4 }
  \set Staff.autoBeaming = ##f
  f8[ f8] |
  g4 g4 g8[ g8] |
  ees4 ees4 ees8[ ees8] |
  bes4 bes4 bes8[ bes8] |
  f'4 r4
  
  f8[ f8] |
  g4 g4 g8[ g8] |
  ees4 ees4 ees8[ ees8] |
  bes4 bes4 bes8[ bes8] |
  f'4 r4
  
  f8[ f8] |
  g4 g4 g8[ g8] |
  ees4 ees4 ees8[ ees8] |
  d4. d8 d8[ d8] |
  ees2
  
  ees8[ ees8] |
  ees4 ees4 r8 f8 |
  g8[ g8] g4 g4 |
  ees4 r4 ees4 |
  f2 f4 |
  bes,2.( |
  bes4) r4 \bar "|."
}

SheetMusicCodaBreaks = {
  \tag #'usePartials { \partial 4 }
  s4  | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2  \bar "|."
}

sopranoCoda = \relative c'' {
  \tag #'usePartials { \partial 4 }
  \set Staff.autoBeaming = ##f
  c4 |
  bes4 r4 g4 |
  a2 bes4 |
  bes2.~ |
  bes2 \bar "|."
}

altoCoda = \relative c'' {
  \tag #'usePartials' { \partial 4 }
  \set Staff.autoBeaming = ##f
  g4 |
  g4 r4 ees4 |
  f2 f4 |
  f2.~ |
  f2 \bar "|."
}

tenorCoda = \relative c' {
  \tag #'usePartials' { \partial 4 }
  \set Staff.autoBeaming = ##f
  ees4 |
  ees4 r4 bes4 |
  c2 ees4 |
  ees2.( |
  d2) \bar "|."
}

bassCoda = \relative c {
  \tag #'usePartials' { \partial 4 }
  \set Staff.autoBeaming = ##f
  ees4 |
  ees4 r4 ees4 |
  f2 f4 |
  bes,2.( |
  bes2) \bar "|."
}

verseOne = \lyricmode {
  \set stanza = "1. "
  Just as I am with -- out one plea
  but that Thy blood was shed for me,
  And that Thou bidst me come to Thee,
  O Lamb of God, I come, I Come.
}

verseTwo = \lyricmode {
  \set stanza = "2. "
  Just as I am and wait -- ing not
  to rid my soul of one dark blot.
  To Thee whose blood can cleanse each spot,
  O Lamb of God, I come, I Come.
}

verseThree = \lyricmode {
  \set stanza = "3. "
  Just as I am I would be lost,
  but mer -- cy and grace my free -- dom bought.
  And now to glo -- ry in Your cross,
  O Lamb of God, I come, I Come.
}

chorusLyrics = \lyricmode {
  I come bro -- ken to be mend -- ed.
  I come wound -- ed to be healed.
  I come des -- p'rate to be res -- cued.
  I come emp -- ty to be filled.
  I come guilt -- y to be par -- doned
  by the blood of Christ the Lamb,
  and I'm wel -- comed with o -- pen arms,
  praise God, just as I am.
}

codaLyrics = \lyricmode {
  Praise God, just as I am.
}
