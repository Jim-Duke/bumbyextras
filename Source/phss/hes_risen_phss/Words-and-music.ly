\version "2.19.49"
#(use-modules (guile-user))

#(ly:set-option 'relative-includes #t)
\include "../../../../LilypondTemplates/functions.ly"
\include "../../../../LilypondTemplates/hymns.ly"
\include "../hymn_settings.ly"

global = {
  \key d \major
  \time 3/4
  \tempo 4 = 102
}

MajorKey = ##t

%%
%% Hymn Metadata Variables
%%

Title = "He's Risen!"
SongNumber = \hes_risen_phss_number
RightFirstPage = \hes_risen_phss_number_rhs
FirstPage = #(if RightFirstPage 1 2)

LeaderHints = \markup {
  \fontsize #-4
  \normal-text { "D - 3 - MI" }
}

Scripture = "TBD"

ShowScriptureOnSheetMusic = ##f

\header {
  title = \Title
  tune = "RISEN!"
  meter = "Irr"
  composer = "C. E. Couchman (1997)"
  poet = "C. E. Couchman (1997)"
  songNumber = \SongNumber
  lhs = #(if RightFirstPage LeaderHints SongNumber)
  rhs = #(if RightFirstPage SongNumber LeaderHints)
  copyright = "Copyright 1997 C. E. Couchman"
  license = ##f
  tagline = ##f
}

AlignVerseMusic = {
  c2 c4 |
  c4 c4 c4 |
  c2 c4 |
  c2

  c4 c2 c4 |
  \tag #'verseOne { c4 c4 }
  \tag #'verseTwo { c2 }
  \tag #'verseThree { c2 }
  c4 |
  c2 c4 |
  c2

  c4 |
  c2 c4 |
  \tag #'verseOne { c4 c4 }
  \tag #'verseTwo { c2 }
  \tag #'verseThree { c2 }
  c4 |
  c2 c4 |
  c2

  c4 |
  c4 c4 c4 |
  c4 c4 c4 |
  c2 c4 |
  c2. \bar "|."
}

SopranoVerseMusic = \relative c' {
  fis2 fis4 |
  fis8[ g8] a4 d,4 |
  d2 e4 |
  fis2

  a4 |
  g2 g4 |
  \tag #'sheetMusic { g4( fis4) }
  \tag #'verseOne { g4 fis4 }
  \tag #'verseTwo { g4( fis4) }
  \tag #'verseThree { g4( fis4) }
  g4 |
  e2 e4 |
  e2

  e4 |
  fis2 fis4 |
  \tag #'sheetMusic { fis4( e4) }
  \tag #'verseOne { fis4 e4 }
  \tag #'verseTwo { fis4( e4) }
  \tag #'verseThree { fis4( e4) }
  d4 |
  g2 a4 |
  b2

  cis4 |
  d4 cis4 b4 |
  a4 fis4 d4 |
  e2 d4 |
  d2. \bar "|."
}

AltoVerseMusic = \relative c' {
  d2 d4 |
  d4 d4 d4 |
  d2 cis4 |
  d2

  d4 |
  d2 d4 |
  \tag #'sheetMusic { d4~ d4 }
  \tag #'verseOne { d4 d4 }
  \tag #'verseTwo { d2 }
  \tag #'verseThree { d2 }
  d4 |
  cis2 cis4 |
  cis4( d4)

  e4 |
  d2 d4 |
  \tag #'sheetMusic { d4( cis4) }
  \tag #'verseOne { d4 cis4 }
  \tag #'verseTwo { d4( cis4) }
  \tag #'verseThree { d4( cis4) }
  d4 |
  d2 g4 |
  g2

  g4 |
  fis4 fis4 d4 |
  fis4 d4 d4 |
  cis2 d4 |
  a2. \bar "|."
}

TenorVerseMusic = \relative c' {
  a2 a4 |
  a4 fis4 fis4 |
  fis2 a4 |
  a2

  a4 |
  b2 b4 |
  \tag #'sheetMusic { b4( a4) }
  \tag #'verseOne { b4 a4 }
  \tag #'verseTwo { b4( a4) }
  \tag #'verseThree { b4( a4) }
  a4 |
  a2 a4 |
  a4( b4)

  cis4 |
  a2 a4 |
  \tag #'sheetMusic { a4~ a4 }
  \tag #'verseOne { a4 a4 }
  \tag #'verseTwo { a2 }
  \tag #'verseThree { a2 }
  a4 |
  b2 cis4 |
  d2

  a4 |
  b4 a4 g4 |
  d'4 a4 a4 |
  a4( e4) g4 |
  fis2. \bar "|."
}

BassVerseMusic = \relative c {
  d2 d4 |
  d4 d4 d4 |
  b2 a4 |
  d2

  fis4 |
  g2 g4 |
  \tag #'sheetMusic { g4( a4) }
  \tag #'verseOne { g4 a4 }
  \tag #'verseTwo { g4( a4) }
  \tag #'verseThree { g4( a4) }
  a4 |
  a,2 a4 |
  a2

  a4 |
  d2 d4 |
  \tag #'sheetMusic { d4( e4) }
  \tag #'verseOne { d4 e4 }
  \tag #'verseTwo { d4( e4) }
  \tag #'verseThree { d4( e4) }
  fis4 |
  g2 g4 |
  g2

  a4 |
  b4 fis4 g4 |
  d4 d4 fis4 |
  a,2 a4 |
  d2. \bar "|."
}

SheetMusicVerseBreaks = {
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2 \bar "" \break \noPageBreak

  s4 | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2 \bar "" \break \noPageBreak

  s4 | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2 \bar "" \break \noPageBreak

  s4 | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. \bar "|."
}

SlidesVerseBreaks = \relative c {
  \setSystemOffset \defaultTopSystemOffset
  \setSystemOffset \defaultBottomSystemOffset
}

VerseOne = \lyricmode {
  \set stanza = "1. "
  Night is o -- ver; the morn -- ing breaks,
  The sun has ris -- en on this first day,
  Just like the morn -- ing when Mar -- y cried,
  "\"He's" ris -- en! I've seen Him! The Cru -- ci -- "fied!\""
}

VerseTwo = \lyricmode {
  \set stanza = "2. "
  Night is o -- ver; how bright the day
  That dares to step in -- side the grave
  And shout to all, "\"A" -- wake and see:
  He's ris -- en! Christ Je -- sus of Cal -- va -- "ry!\""
}

VerseThree = \lyricmode {
  \set stanza = "3. "
  Night is o -- ver; Lord, send the day
  To lift the veil where death once lay.
  Un -- seal our hearts; we, too, would sing,
  "\"He's" ris -- en! My Sav -- ior! My Lord! My "King!\""
}
