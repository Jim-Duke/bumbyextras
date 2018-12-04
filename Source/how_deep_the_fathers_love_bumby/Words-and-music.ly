\version "2.19.49"
#(use-modules (guile-user))

#(ly:set-option 'relative-includes #t)
\include "../../../LilypondTemplates/functions.ly"
\include "../../../LilypondTemplates/hymns.ly"
\include "../hymn_settings.ly"

mainTempo = 115
fermataTempo = 40

global = {
  \key f \major
  \numericTimeSignature
  \time 4/4
  \tempo 4 = \mainTempo
}

MajorKey = ##t

%%
%% Hymn Metadata Variables
%%

Title = "How Deep the Father's Love"
SongNumber = \how_deep_the_fathers_love_bumby_number
RightFirstPage = \how_deep_the_fathers_love_bumby_number_rhs
FirstPage = #(if RightFirstPage 1 2)

LeaderHints = \markup {
  \fontsize #-4
  \normal-text { "F - 4 - DO" }
}

Scripture = "For God so loved the world, that He gave His only begotten Son, that whoever believes in Him shall not perish, but have eternal life. -- John 3:16"

ShowScriptureOnSheetMusic = ##t

\header {
  title = \Title
  tune = "TOWNEND"
  meter = "Irregular"
  composer = "Stuart Townend"
  poet = "Stuart Townend"
  songNumber = \SongNumber
  lhs = #(if RightFirstPage LeaderHints SongNumber)
  rhs = #(if RightFirstPage SongNumber LeaderHints)
  copyright = "Words and Music Copyright © 1995 ThankYou Music. All rights reserved."
  copyright_admin = "EMI Christian Music Publishing c/o Music Services."
  license = #(string-append "CCLI Song #1558110, License #" bumby_ccli_license)
  tagline = ##f
}

SopranoVerseMusic = \relative c' {
  \tag #'usePartials { \partial 4 }
  f4 |
  a4. f8 g4 a4 |
  g4 f4
  \set Score.tempoHideNote = ##t
  \tempo 4=\fermataTempo
  d4\fermata
  \tempo 4=\mainTempo
  
  c4 |
  c4. f8 f4 a4 |
  a4.( g8)
  \set Score.tempoHideNote = ##t
  \tempo 4=\fermataTempo
  g4\fermata
  \tempo 4=\mainTempo
  
  f4 |
  a4. f8 g4 a4 |
  g4 f4
  \tempo 4=\fermataTempo
  d4\fermata
  \tempo 4=\mainTempo
  
  c4 |
  c4. f8 f4 a4 |
  g2
  \tempo 4=\fermataTempo
  f4\fermata
  \tempo 4=\mainTempo
  
  c'4 |
  c4. a8 bes4 c4 |
  bes4 a4
  \tempo 4=\fermataTempo
  f4\fermata
  \tempo 4=\mainTempo
  
  c'4 |
  c4. a8 bes4 a4 |
  \tag #'sheetMusic { a4.( g8) }
  \tag #'verseOne { a4. g8 }
  \tag #'verseTwo { a4.( g8) }
  \tag #'verseThree { a4.( g8) }
  \tempo 4=\fermataTempo
  g4\fermata
  \tempo 4=\mainTempo
  
  f4 |
  a4. f8 g4 a4 |
  g4 f4
  \tempo 4=\fermataTempo
  d4\fermata
  \tempo 4=\mainTempo
  
  c4 |
  c4. f8 f4 a4 |
  g2
  \tempo 4=\fermataTempo
  f4\fermata
  \tempo 4=\mainTempo
  \bar "|."
}

AltoVerseMusic = \relative c' {
  \tag #'usePartials { \partial 4 }
  c4 |
  f4. c8 d4 f4 |
  d4 c4 bes4
  
  bes4 |
  a4. c8 c4 f4 |
  f2 e4
  
  c4 |
  f4. c8 d4 f4 |
  d4 c4 bes4
  
  bes4 |
  a4. c8 c4 f4 |
  d2 c4
  
  a'4 |
  a4. f8 g4 a4 |
  g4 f4 d4
  
  a'4 |
  a4. f8 g4 f4 |
  \tag #'sheetMusic { f4.( f8) }
  \tag #'verseOne { f4. f8 }
  \tag #'verseTwo { f2 }
  \tag #'verseThree { f2 }
  e4
  
  c4 |
  f4. c8 d4 f4 |
  d4 c4 bes4
  
  bes4 |
  a4. c8 c4 f4 |
  d2 c4 \bar "|."
}

TenorVerseMusic = \relative c' {
  \tag #'usePartials { \partial 4 }
  a4 |
  c4. a8 bes4 c4 |
  bes4 a4 f4\fermata
  
  f4 |
  f4. a8 a4 c4 |
  c2 c4\fermata
  
  a4 |
  c4. a8 bes4 c4 |
  bes4 a4 f4\fermata
  
  f4 |
  f4. a8 a4 c4 |
  bes2 a4\fermata
  
  f'4 |
  f4. c8 d4 f4 |
  d4 c4 bes4\fermata
  
  f'4 |
  f4. c8 d4 c4 |
  \tag #'sheetMusic { c4.( c8) }
  \tag #'verseOne { c4. c8 }
  \tag #'verseTwo { c2 }
  \tag #'verseThree { c2 }
  c4\fermata
  
  a4 |
  c4. a8 bes4 c4 |
  bes4 a4 f4\fermata
  
  f4 |
  f4. a8 a4 c4 |
  bes2 a4\fermata \bar "|."
}

BassVerseMusic = \relative c {
  \tag #'usePartials { \partial 4 }
  f4 |
  f4. f8 f4 f4 |
  bes,4 bes4 bes4
  
  c4 |
  c4. c8 c4 c4 |
  c2 c4
  
  c4 |
  f4. f8 f4 f4 |
  bes,4 bes4 bes4
  
  c4 |
  c4. c8 c4 c4 |
  c2 f4
  
  f4 |
  f4. f8 f4 f4 |
  bes,4 bes4 bes4
  
  f'4 |
  f4. f8 f4 f4 |
  \tag #'sheetMusic { c4.( c8) }
  \tag #'verseOne { c4. c8 }
  \tag #'verseTwo { c2 }
  \tag #'verseThree { c2 }
  c4
  
  c4 |
  f4. f8 f4 f4 |
  bes,4 bes4 bes4
  
  c4 |
  c4. f8 f4 f4 |
  c2 f4 \bar "|."
}

SheetMusicVerseBreaks = \relative c {
  \tag #'usePartials { \partial 4 }
  s4 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s2. \bar "" \break \noPageBreak

  s4 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s2. \bar "" \break \noPageBreak

  s4 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s2. \bar "" \break \noPageBreak

  s4 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s2. \bar "|."
}

SlidesVerseBreaks = \relative c {
  \tag #'usePartials { \partial 4 }
  \setSystemOffset \defaultTopSystemOffset
  s4 | \noBreak
  s1 | \noBreak
  s2. \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s4 | \noBreak
  s1 | \noBreak
  s2. \bar "" \pageBreak

  \setSystemOffset \defaultTopSystemOffset
  s4 | \noBreak
  s1 | \noBreak
  s2. \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s4 | \noBreak
  s1 | \noBreak
  s2. \bar "" \pageBreak

  \setSystemOffset \defaultTopSystemOffset
  s4 | \noBreak
  s1 | \noBreak
  s2. \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s4 | \noBreak
  s1 | \noBreak
  s2. \bar "" \pageBreak

  \setSystemOffset \defaultTopSystemOffset
  s4 | \noBreak
  s1 | \noBreak
  s2. \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s4 | \noBreak
  s1 | \noBreak
  s2. \bar "|."
}

VerseOne = \lyricmode {
  \set stanza = "1. "
  How deep the Fa -- ther's love for us!
  How vast be -- yond all mea -- sure.
  That He should give His on -- ly Son
  to make a wretch His treas -- ure!
  How great the pain of sear -- ing loss!
  The Fa -- ther turns His face a -- way
  As wounds which mar the Cho -- sen One
  bring man -- y sons to glo -- ry.
}

VerseTwo = \lyricmode {
  \set stanza = "2. "
  Be -- hold the Man up -- on a cross,
  my sin up -- on His should -- ers.
  A -- shamed I hear my mock -- ing voice
  call out a -- mong the scoff -- ers.
  It was my sin that held Him there
  un -- til it was ac -- com -- plished.
  His dy -- ing breath has brought me life;
  I know that it is fin -- ished.
}

VerseThree = \lyricmode {
  \set stanza = "3. "
  I will not boast in an -- y -- thing;
  no gifts, no pow'r no wis -- dom!
  But I will boast in Je -- sus Christ,
  His death and res -- ur -- rec -- tion.
  Why should I gain from His re -- ward?
  I can -- not give an an -- swer.
  But this I know with all my heart;
  His wounds have paid my ran -- som.
}
