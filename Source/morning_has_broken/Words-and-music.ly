\version "2.19.49"
#(use-modules (guile-user))

#(ly:set-option 'relative-includes #t)
\include "../../../LilypondTemplates/functions.ly"
\include "../../../LilypondTemplates/hymns.ly"
\include "../hymn_settings.ly"

global = {
  \key c \major
  \time 9/4
  \tempo 2. = 45
}

MajorKey = ##t

%%
%% Hymn Metadata Variables
%%

Title = "Morning Has Broken"
SongNumber = \morning_has_broken_number
RightFirstPage = \morning_has_broken_number_rhs
FirstPage = #(if RightFirstPage 1 2)

LeaderHints = \markup {
  \fontsize #-4
  \normal-text { "C - 3c - DO" }
}

Scripture = "This is the day which the Lord has made;
 Let us rejoice and be glad in it. -- Psalm 118:24 NASB95"

ShowScriptureOnSheetMusic = ##t

\header {
  title = \Title
  tune = "BUNESSAN"
  meter = "5.5.5.4 D"
  composer = "Lachlan Macbean's Songs and Hymns of the Gael (1888)"
  poet = "Eleanor Farjeon (1931)"
  songNumber = \SongNumber
  lhs = #(if RightFirstPage LeaderHints SongNumber)
  rhs = #(if RightFirstPage SongNumber LeaderHints)
  copyright = "Copyright administered by David Higham Associates Limited, London"
  license = "Used by permission"
  tagline = ##f
}

SopranoVerseMusic = \relative c' {
  \tag #'usePartials { \partial 2. }
  c4 e4 g4 |
  c2. d2. b4 a4 g4 |
  a4.( b8 a4) g2.
  
  c,4 d4 e4 |
  g2. a2. g4 e4 c4 |
  d2.~ d2.
  
  g4 e4 g4 |
  c2. a2. g4 e4 c4 |
  c4.( a8 c4) d2.
  
  e4 d4 e4 |
  g2. a2. d,4 e4. d8 |
  c2.~ c2. \bar "|."
}

AltoVerseMusic = \relative c' {
  \tag #'usePartials { \partial 2. }
  c4 e4 g4 |
  e2. f2. f4 f4 g4 |
  f2( d4) e2.
  
  c4 c4 c4 |
  d2. e2. e4 c4 c4 |
  c2.( b2.)
  
  g'4 e4 g4 |
  f2. f2. e4 c4 c4 |
  c4.( a8 c4) b2.
  
  c4 c4 c4 |
  c2. c2. b4 b4. b8 |
  c2.~ c2. \bar "|."
}

TenorVerseMusic = \relative c {
  \tag #'usePartials { \partial 2. }
  c4 e4 g4 |
  g2. a2. g4 g4 c4 |
  c2. c2.
  
  e,4 f4 g4 |
  g2. c2. c4 g4 e4 |
  g2.~ g2.
  
  g4 e4 g4 |
  a2. c2. c4 g4 g4 |
  a2. g2.
  
  g4 a4 g4 |
  e2. f2. g4 g4 g4 |
  e2.~ e2. \bar "|."
}

BassVerseMusic = \relative c {
  \tag #'usePartials { \partial 2. }
  c4 e4 g4 |
  c,2. f2. g4 g4 e4 |
  f2. c2.
  
  c4 c4 c4 |
  b2. a2. c4 c4 c4 |
  g2.~ g2.
  
  g'4 e4 g4 |
  c,2. c2. c4 c4 e4 |
  e2. g,2.
  
  c4 c4 c4 |
  c2. c2. g4 g4 g4 |
  c2.~ c2. \bar "|."
}

SheetMusicVerseBreaks = \relative c {
  \tag #'usePartials { \partial 2. }
  s2. | \noBreak
  s2. s2. s2. | \noBreak
  s2. s2. \bar "" \break
  
  s2. | \noBreak
  s2. s2. s2. | \noBreak
  s2. s2. \bar "" \break
  
  s2. | \noBreak
  s2. s2. s2. | \noBreak
  s2. s2. \bar "" \break
  
  s2. | \noBreak
  s2. s2. s2. | \noBreak
  s2. s2. \bar "|."
}

SlidesVerseBreaks = {
  \tag #'usePartials { \partial 4. }
  \setSystemOffset \defaultTopSystemOffset
  s2. | \noBreak
  s2. s2. \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s2. | \noBreak
  s2. s2. \bar "" \pageBreak
  
  %------------------------------------------
  
  \setSystemOffset \defaultTopSystemOffset
  s2. | \noBreak
  s2. s2. \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s2. | \noBreak
  s2. s2. \bar "" \pageBreak
  
  %------------------------------------------
  
  \setSystemOffset \defaultTopSystemOffset
  s2. | \noBreak
  s2. s2. \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s2. | \noBreak
  s2. s2. \bar "" \pageBreak
  
  %------------------------------------------
  
  \setSystemOffset \defaultTopSystemOffset
  s2. | \noBreak
  s2. s2. \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s2. | \noBreak
  s2. s2. \bar "|." \pageBreak
}

VerseOne = \lyricmode {
  \set stanza = "1. "
  Morn -- ing has bro -- ken
  Like the first morn -- ing;
  Black -- bird has spo -- ken
  Like the first bird.
  Praise for the sing -- ing!
  Praise for the morn -- ing!
  Praise for them, spring -- ing
  Fresh from the word!
}

VerseTwo = \lyricmode {
  \set stanza = "2. "
  Sweet the rain's new fall
  Sun -- lit from heav -- en,
  Like the first dew -- fall
  On the first grass.
  Praise for the sweet -- ness
  Of the wet gar -- den,
  Spring in com -- plete -- ness
  Where His feet pass.
}

VerseThree = \lyricmode {
  \set stanza = "3. "
  Mine is the sun -- light!
  Mine is the morn -- ing
  Born of the one light
  E -- den saw play!
  Praise with e -- la -- tion!
  Praise ev -- 'ry morn -- ing,
  God's re -- cre -- a -- tion
  Of the new day!
}
