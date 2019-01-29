\version "2.19.49"
#(use-modules (guile-user))

#(ly:set-option 'relative-includes #t)
\include "../../../LilypondTemplates/functions.ly"
\include "../../../LilypondTemplates/hymns.ly"
\include "../hymn_settings.ly"

global = {
  \key f \major
  \time 6/8
  \tempo 4. = 40
}

MajorKey = ##t

%%
%% Hymn Metadata Variables
%%

Title = "Pierce My Ear"
SongNumber = \pierce_my_ear_fc_number
RightFirstPage = \pierce_my_ear_fc_number_rhs
FirstPage = #(if RightFirstPage 1 2)

LeaderHints = \markup {
  \fontsize #-4
  \normal-text { "F - 2c - MI" }
}

Scripture = ""

ShowScriptureOnSheetMusic = ##t

\header {
  title = \Title
  meter = "Irregular"
  composer = "Steve Croft"
  poet = "Steve Croft"
  arranger = "Barbie Jones"
  songNumber = \SongNumber
  lhs = #(if RightFirstPage LeaderHints SongNumber)
  rhs = #(if RightFirstPage SongNumber LeaderHints)
  copyright = "Unknown"
  license = ##f
  tagline = ##f
}

SopranoVerseStartMusic = {
  \autoBeamOff
  \tag #'sheetMusic { c'8 | a'4 }
  \tag #'sheetMusicVerseOne { c'8 | a'4 }
  \tag #'verseOne { a'4 }
  \tag #'verseTwo { c'8 | a'4 }
  \tag #'verseThree { c'8 | a'4 }
}

SopranoVerseBodyMusic = {
  \autoBeamOff
  a'8 g'4 g'8 |
  f'4 d'8 c'4. |
  d'8[ e'8] f'8 f'8[ e'8] f'8 |
  
  g'4 a'8
  \tag #'sheetMusic { g'4( c'8) | }
  \tag #'verseOne { g'4( c'8) | }
  \tag #'verseTwo { g'4 c'8 | }
  \tag #'verseThree { g'4( c'8) | }
  a'4 a'8 g'4 g'8 |
  \tag #'sheetMusic { f'8~ f'8 }
  \tag #'verseOne { f'4 }
  \tag #'verseTwo { f'8 f'8 }
  \tag #'verseThree { f'4 }
  d'8
  \tag #'sheetMusic { c'4~ c'8 }
  \tag #'verseOne { c'4. }
  \tag #'verseTwo { c'4 c'8 }
  \tag #'verseThree { c'4. } |
}

SopranoFirstEnding = \relative c' {
  \tag #'sheetMusic {
    d8( e8)
    f8 bes8( a8) g8 |
    f4.~ f8 r8
  }
  \tag #'verseOne {
    d8( e8)
    f8 bes8( a8) g8 |
    f4.~ f8 r8
  }
  \tag #'verseTwo {
    d8 e8
    f8 bes8( a8) g8 |
    f4.~ f8 r8
  }
  \tag #'verseThree {
    r2. |
    r4. r4
  }
}

SopranoLastEnding = \relative c' {
  d8( e8) f8 bes8( a8) g8 |
  a2. |
}

SopranoEnding = \relative c' {
  d8( e8) f8 bes8( a8) g8 |
  f2. \bar "|."
}

AltoVerseStartMusic = {
  \autoBeamOff
  \tag #'sheetMusic { c'8 | f'4 }
  \tag #'sheetMusicVerseOne { c'8 | f'4 }
  \tag #'verseOne { f'4 }
  \tag #'verseTwo { c'8 | f'4 }
  \tag #'verseThree { c'8 | f'4 }
}

AltoVerseBodyMusic = \relative c' {
  \autoBeamOff
  f8 e4 e8 |
  d4 bes8 a4. |
  bes8[ c8] d8 c8[ c8] c8 |
  
  b4 b8
  \tag #'sheetMusic { c4( c8) | }
  \tag #'verseOne { c4. | }
  \tag #'verseTwo { c4( c8) | }
  \tag #'verseThree { c4. | }
  f4 f8 e4 e8 |
  \tag #'sheetMusic { d8~ d8 }
  \tag #'verseOne { d4 }
  \tag #'verseTwo { d8 d8 }
  \tag #'verseThree { d4 }
  bes8
  \tag #'sheetMusic { a4~ a8 }
  \tag #'verseOne { a4. }
  \tag #'verseTwo { a4 a8 }
  \tag #'verseThree { a4. } |
}

AltoFirstEnding = \relative c' {
  \tag #'sheetMusic {
    bes8( c8)
    d8 e8( e8) e8 |
    c4.~ c8 r8
  }
  \tag #'verseOne {
    bes8( c8)
    d8 e8( e8) e8 |
    c4.~ c8 r8
  }
  \tag #'verseTwo {
    bes8 c8
    d8 e8( e8) e8 |
    c4.~ c8 r8
  }
  \tag #'verseThree {
    r2. |
    r4. r4
  }
}

AltoLastEnding = \relative c' {
  bes8( c8) d8 e8( e8) e8 |
  f2. |
}

AltoEnding = \relative c' {
  bes8( c8) d8 e8( e8) e8 |
  c2. |
}

TenorVerseStartMusic = {
  \autoBeamOff
  \tag #'sheetMusic { c'8 | c'4 }
  \tag #'sheetMusicVerseOne { c'8 | c'4 }
  \tag #'verseOne { c'4 }
  \tag #'verseTwo { c'8 | c'4 }
  \tag #'verseThree { c'8 | c'4 }
}

TenorVerseBodyMusic = \relative c' {
  \autoBeamOff
  c8 c4 bes8 |
  a4 f8 f4. |
  f4 f8 f4 f8 |
  
  g4 f8
  \tag #'sheetMusic { e8( f8 g8) | }
  \tag #'verseOne { e8( f8 g8) | }
  \tag #'verseTwo { e8( f8) g8 | }
  \tag #'verseThree { e8( f8 g8) | }
  c4 c8 c4 bes8 |
  \tag #'sheetMusic { a8~ a8 }
  \tag #'verseOne { a4 }
  \tag #'verseTwo { a8 a8 }
  \tag #'verseThree { a4 }
  f8
  \tag #'sheetMusic { f4~ f8 }
  \tag #'verseOne { f4. }
  \tag #'verseTwo { f4 f8 }
  \tag #'verseThree { f4. } |
}

TenorFirstEnding = \relative c {
  \tag #'sheetMusic {
    f8( f8)
    f8 g4 bes8 |
    a4.~ a8 r8
  }
  \tag #'verseOne {
    f8( f8)
    f8 g4 bes8 |
    a4.~ a8 r8
  }
  \tag #'verseTwo {
    f8 f8
    f8 g4 bes8 |
    a4.~ a8 r8
  }
  \tag #'verseThree {
    r2. |
    r4. r4
  }
}

TenorLastEnding = \relative c {
  f4 f8 g4 bes8 |
  a2. |
}

TenorEnding = \relative c {
  f4 f8 g4 bes8 |
  a2. |
}

BassVerseStartMusic = {
  \autoBeamOff
  \tag #'sheetMusic { c8 | f4 }
  \tag #'sheetMusicVerseOne { c8 | f4 }
  \tag #'verseOne { f4 }
  \tag #'verseTwo { c8 | f4 }
  \tag #'verseThree { c8 | f4 }
}

BassVerseBodyMusic = \relative c {
  \autoBeamOff
  f8 c4 c8 |
  d4 bes8 f4. |
  bes4 bes8 a4 a8 |
  
  g4 g8
  \tag #'sheetMusic { c8( d8 e8) | }
  \tag #'verseOne { c8( d8 e8) | }
  \tag #'verseTwo { c8( d8) e8 | }
  \tag #'verseThree { c8( d8 e8) | }
  f4 f8 c4 c8 |
  \tag #'sheetMusic { d8~ d8 }
  \tag #'verseOne { d4 }
  \tag #'verseTwo { d8 d8 }
  \tag #'verseThree { d4 }
  bes8
  \tag #'sheetMusic { f4~ f8 }
  \tag #'verseOne { f4. }
  \tag #'verseTwo { f4 f8 }
  \tag #'verseThree { f4. } |
}

BassFirstEnding = \relative c {
  \tag #'sheetMusic {
    bes8( bes8)
    bes8 c4 c8 |
    f4.~ f8 r8
  }
  \tag #'verseOne {
    bes,8( bes8)
    bes8 c4 c8 |
    f4.~ f8 r8
  }
  \tag #'verseTwo {
    bes,8 bes8
    bes8 c4 c8 |
    f4.~ f8 r8
  }
  \tag #'verseThree {
    r2. |
    r4. r4
  }
}

BassLastEnding = \relative c {
  bes4 bes8 c4 c8 |
  d2. |
}

BassEnding = \relative c {
  bes4 bes8 c4 c8 |
  f2. |
}

SheetMusicVerseBreaks = {
  s8 | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \break \noPageBreak
  
  s2. | \noBreak
  s2. | \noBreak
  s2. | \break \noPageBreak
  
  s2. | \noBreak
  s4. s4 \noBreak
  s2. \noBreak
  s2. \break \noPageBreak
  
  s2. \noBreak
  s2. \bar "|." \pageBreak
}

SlidesVerseBreaks = \relative c {
  \setSystemOffset \defaultTopSystemOffset
  \setSystemOffset \defaultBottomSystemOffset
}

lyricRest = \markup { \raise #1.0 \musicglyph #"rests.3" }

VerseOne = \lyricmode {
  \set stanza = "1. "
  \lyricRest Pierce my ear, O Lord, my God;
  Take me to your door this day.
  I will serve no o -- ther god;
}

VerseOneEnding = \lyricmode {
  Lord, I'm here to stay.
}

VerseTwo = \lyricmode {
  \set stanza = "2. "
  For You have paid the price for me;
  With Your blood You ran -- somed me.
  Now I will serve You e -- ter -- nal -- ly;
  A
}

VerseTwoEnding = \lyricmode {
  free man I'll ne -- ver be.
}

VerseThree = \lyricmode {
  \set stanza = "3. "
  So pierce my ear, O Lord, my God;
  Take me to Your door this day.
  I will serve no o -- ther god;
}

VerseThreeEnd = \lyricmode {
  Lord, I'm here to stay.
  Lord, I'm here to stay.
}
