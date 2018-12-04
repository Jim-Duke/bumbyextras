\version "2.19.49"
#(use-modules (guile-user))

#(ly:set-option 'relative-includes #t)
\include "../../../LilypondTemplates/functions.ly"
\include "../../../LilypondTemplates/hymns.ly"
\include "../hymn_settings.ly"

mainTempo = 80
fermataTempo = 27

global = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo 4 = \mainTempo
}

MajorKey = ##t

%%
%% Hymn Metadata Variables
%%

Title = "Speak, O Lord"
SongNumber = \speak_o_lord_bumby_number
RightFirstPage = \speak_o_lord_bumby_number_rhs
FirstPage = #(if RightFirstPage 1 2)

LeaderHints = \markup {
  \fontsize #-4
  \normal-text { "C - 4 - DO" }
}

Scripture = "Teach me, O Lord, the way of Your statutes,
 And I shall obseve it to the end.
 Give me understanding, that I may observe Your law
 And keep it with all my heart. -- Psalm 119:33-34 (NASB95)"

ShowScriptureOnSheetMusic = ##t

\header {
  title = \Title
  tune = "SPEAK, O LORD"
  meter = "Irregular"
  composer = "Keith Getty and Stuart Townend"
  arranger = "Charles L. Willis"
  poet = "Keith Getty and Stuart Townend"
  songNumber = \SongNumber
  lhs = #(if RightFirstPage LeaderHints SongNumber)
  rhs = #(if RightFirstPage SongNumber LeaderHints)
  copyright = "Words and Music Copyright © 2005 ThankYou Music. All rights reserved."
  copyright_admin = "EMI Christian Music Publishing c/o Music Services."
  license = #(string-append "CCLI Song #4615235, License #" bumby_ccli_license)
  tagline = ##f
}

SopranoVerseMusic = \relative c' {
  c4 g'4 e4 e8 g8 |
  a4. g16 g16~ g4
  
  c8 b8 |
  a4. g16 g16~ g4 c,8 d8 |
  e4. d16 d16~ d4. r8 |
  
  c4 g'4 e4 e8 g8 |
  a4. g16 g16~ g4
  
  c8 b8 |
  a4. g16 g16~ g4 f8 e8 |
  \tag #'sheetMusic { d4.( c8) }
  \tag #'verseOne { d4.( c8) }
  \tag #'verseTwo { d4. c8 }
  \tag #'verseThree { d4. c8 }
  c4
  
  g'8 c8 |
  b4 d4 c4 g8 c,8 |
  a'4. g16 g16~ g4
  
  g8 c8 |
  b4 d4 c4 g8 c,8 |
  a'4 g8( e8) d2 |
  
  c4 g'4 e4 e8 g8 |
  a4. g16 g16~ g4
  
  c8 b8 |
  a4. g16 g16~ g4 f8 e8 |
  \tag #'sheetMusic { d4.( c8) }
  \tag #'verseOne { d4.( c8) }
  \tag #'verseTwo { d4. c8 }
  \tag #'verseThree { d4.( c8) }
  c2 \bar "|."
}

AltoVerseMusic = \relative c' {
  c4 d4 c4 c8 e8 |
  f4. e16 e16~ e4
  
  e8 g8 |
  f4. e16 e16~ e4 c8 d8 |
  c4. b16 b16~ b4. r8 |
  
  c4 b4 c4 c8 e8 |
  f4. e16 e16~ e4
  
  e8 g8 |
  f4. e16 e16~ e4 c8 c8 |
  \tag #'sheetMusic { b4.( c8) }
  \tag #'verseOne { b4.( c8) }
  \tag #'verseTwo { b4. c8 }
  \tag #'verseThree { b4. c8 }
  c4
  
  e8 g8 |
  g4 g4 g4 g8 c,8 |
  f4. e16 e16~ e4
  
  e8 g8 |
  g4 g4 g4 g8 c,8 |
  f4 e8 c8 c4( b4) |
  
  c4 b4 c4 c8 e8 |
  f4. e16 e16~ e4
  
  e8 g8 |
  f4. e16 e16~ e4 c8 c8 |
  \tag #'sheetMusic { b4.( c8) }
  \tag #'verseOne { b4.( c8) }
  \tag #'verseTwo { b4. c8 }
  \tag #'verseThree { b4.( c8) }
  c2 \bar "|."
}

TenorVerseMusic = \relative c' {
  a4 g4 g4 g8 c8 |
  c4. c16 c16~ c4
  
  c8 c8 |
  c4. c16 c16~ c4 g8 g8 |
  g4. g16 g16~ g4. r8 |
  
  a4 g4 g4 g8 c8 |
  c4. c16 c16~ c4
  
  c8 c8 |
  c4. c16 c16~ c4 a8 g8 |
  \tag #'sheetMusic { g4.( c8) }
  \tag #'verseOne { g4.( c8) }
  \tag #'verseTwo { g4. c8 }
  \tag #'verseThree { g4. c8 }
  c4
  
  c8 c8 |
  d4 b4 c4 c8 g8 |
  c4. c16 c16~ c4
  
  c8 c8 |
  d4 b4 c4 c8 g8 |
  c4 c8( g8) c2 |
  
  a4 g4 g4 g8 c8 |
  c4. c16 c16~ c4
  
  c8 c8 |
  c4. c16 c16~ c4 a8 g8 |
  \tag #'sheetMusic { g4.( c8) }
  \tag #'verseOne { g4.( c8) }
  \tag #'verseTwo { g4. c8 }
  \tag #'verseThree { g4.( c8) }
  c2 \bar "|."
}

BassVerseMusic = {
  a,4 b,4 c4 c8 c8 |
  f4. c16 c16~ c4
  
  c8 e8 |
  f4. c16 c16~ c4 e8 f8 |
  g4. g16 g16~ g4. r8 |
  
  a4 g4 c4 c8 c8 |
  f4. c16 c16~ c4
  
  c8 e8 |
  f4. c16 c16~ c4 f8 g8 |
  \tag #'sheetMusic { g4.( c8) }
  \tag #'verseOne { g4.( c8) }
  \tag #'verseTwo { g4. c8 }
  \tag #'verseThree { g4. c8 }
  c4
  
  c8 e8 |
  g4 f4 e4 e8 e8 |
  f4. c16 c16~ c4
  
  c8 e8 |
  g4 f4 e4 e8 e8 |
  f4 g4 g2 |
  
  a4 g4 c4 c8 c8 |
  f4. c16 c16~ c4
  
  c8 e8 |
  f4. c16 c16~ c4 f8 g8 |
  \tag #'sheetMusic { g4.( c8) }
  \tag #'verseOne { g4.( c8) }
  \tag #'verseTwo { g4. c8 }
  \tag #'verseThree { g4.( c8) }
  c2 \bar "|."
}

SheetMusicVerseBreaks = \relative c {
  s1 | \noBreak
  s2. \bar "" \break \noPageBreak
  
  s4 | \noBreak
  s1 | \noBreak
  s1 | \break \noPageBreak
  
  s1 | \noBreak
  s2. \bar "" \break \noPageBreak
  
  s4 | \noBreak
  s1 | \noBreak
  s2. \bar "" \pageBreak
  
  s4 | \noBreak
  s1 | \noBreak
  s2. \bar "" \break \noPageBreak
  
  s4 | \noBreak
  s1 | \noBreak
  s1 | \break \noPageBreak
  
  s1 | \noBreak
  s2. \bar "" \break \noPageBreak
  
  s4 | \noBreak
  s1 | \noBreak
  s1 \bar "|."
}

SlidesVerseBreaks = \relative c {
  \setSystemOffset \defaultTopSystemOffset
  s2. \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s4 | \noBreak
  s2. \bar "" \pageBreak
  
  \setSystemOffset \defaultTopSystemOffset
  s4 | \noBreak
  s2. \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s4 | \noBreak
  s1 | \pageBreak

  \setSystemOffset \defaultTopSystemOffset
  s2. \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s4 | \noBreak
  s2. \bar "" \pageBreak
  
  \setSystemOffset \defaultTopSystemOffset
  s4 | \noBreak
  s2. \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s4 | \noBreak
  s2. \bar "" \pageBreak
  
  \setSystemOffset \defaultTopSystemOffset
  s4 | \noBreak
  s2. \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s4 | \noBreak
  s2. \bar "" \pageBreak
  
  \setSystemOffset \defaultTopSystemOffset
  s4 | \noBreak
  s2. \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s4 | \noBreak
  s1 | \pageBreak

  \setSystemOffset \defaultTopSystemOffset
  s2. \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s4 | \noBreak
  s2. \bar "" \pageBreak
  
  \setSystemOffset \defaultTopSystemOffset
  s4 | \noBreak
  s2. \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s4 | \noBreak
  s1 | \pageBreak
}

VerseOne = \lyricmode {
  \set stanza = "1. "
  Speak, O Lord, as we come to You
  To re -- ceive the food of Your ho -- ly word.
  Take Your truth; plant it deep in us;
  Shape and fash -- ion us in Your like -- ness
  That the light of Christ might be seen to -- day
  In our acts of love and our deeds of faith.
  Speak, O Lord and ful -- fill in us
  All Your pur -- pos -- es for Your glo -- ry.
}

VerseTwo = \lyricmode {
  \set stanza = "2. "
  Teach us, Lord, ful o -- be -- di -- ence,
  Ho -- ly rev -- er -- ence, true hu -- mil -- i -- ty.
  Test our thoughts and our at -- ti -- tudes
  In the ra -- di -- ance of Your pu -- ri -- ty.
  Cause our faith to rise; cause our eyes to see
  Your ma -- jes -- tic love and au -- thor -- i -- ty.
  Words of pow'r that can nev -- er fail,
  Let their truth pre -- vail o -- ver un -- be -- lief.
}

VerseThree = \lyricmode {
  \set stanza = "3. "
  Speak, O Lord, and re -- new our minds;
  Help us grasp the heights of Your plans for us.
  Truths un -- changed from the dawn of time,
  That will ech -- o down through e -- ter -- ni -- ty.
  And by grace we'll stand on Your prom -- is -- es;
  And by faith we'll walk as You walk with us.
  Speak, O Lord, till Your church is built
  And the earth is filled with Your glo -- ry.
}
