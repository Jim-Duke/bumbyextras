\version "2.19.49"
#(use-modules (guile-user))

#(ly:set-option 'relative-includes #t)
\include "../../../../LilypondTemplates/functions.ly"
\include "../../../../LilypondTemplates/hymns.ly"
\include "../hymn_settings.ly"

global = {
  \key f \major
  \time 4/4
  \tempo 4 = 125
}

MajorKey = ##t

%%
%% Hymn Metadata Variables
%%

Title = "Let All Mortal Flesh Keep Silence"
SongNumber = \let_all_mortal_flesh_keep_silence_bumby_number
RightFirstPage = \let_all_mortal_flesh_keep_silence_bumby_number_rhs
FirstPage = #(if RightFirstPage 1 2)

LeaderHints = \markup {
  \fontsize #-4
  \normal-text { "Dm - 4 - LA" }
}

Scripture = "\"Be silent, all flesh, before the Lord; for He is aroused
 from His holy habitation.\" -- Zechariah 2:13 NASB95"

ShowScriptureOnSheetMusic = ##t

\header {
  title = \Title
  tune = "PICARDY"
  meter = "8.7.8.7.8.7"
  composer = "French Folk Melody"
  arranger = "C. E. Couchman"
  poet = "Liturgy of St. James (c 350)"
  translator = "Gerard Moultrie (1864)"
  songNumber = \SongNumber
  lhs = #(if RightFirstPage LeaderHints SongNumber)
  rhs = #(if RightFirstPage SongNumber LeaderHints)
  copyright = "Arrangement Copyright © 2011 C. E. Couchman.  All rights reserved."
  license = "Used by permission"
  tagline = ##f
}

SopranoVerseMusic = \relative c' {
  d4 e4 f4 g4 |
  a2 a4( g4) |
  a2 a2 |
  a4 a4 bes4 c4 |
  bes2 a4( g4) |
  a1 |
  
  d,4 e4 f4 g4 |
  a2 a4( g4) |
  a2 a2 |
  a4 a4 bes4 c4 |
  bes2 a4( g4) |
  a1 |
  
  a4 a4 d4 a4 |
  g2. f4 |
  d4( f4 a4 f4) |
  e1 |
  a4 a4 d4 a4 |
  g2 e4( f4) |
  d1 \bar "|."
}

AltoVerseMusic = \relative c' {
  d4 e4 f4 g4 |
  a2 a4( g4) |
  a2 a2 |
  a4 a4 bes4 c4 |
  bes2 a4( g4) |
  a1 |
  
  d,4 d4 d4 e4 |
  f2 f2 |
  e2 f2 |
  f4 f4 g4 f4 |
  d2 d2 |
  e1 |
  
  f4 f4 f4 f4 |
  d2. d4 |
  d1 |
  cis1 |
  d4 d4 d4 d4 |
  d2 cis2 |
  d1 \bar "|."
}

TenorVerseMusic = \relative c {
  d4 e4 f4 g4 |
  a2 a4( g4) |
  a2 a2 |
  a4 a4 bes4 c4 |
  bes2 a4( g4) |
  a1 |
  
  d,4 e4 f4 g4 |
  a2 a4( bes4) |
  a2 d2 |
  d4 c4 bes4 a4 |
  g2 bes2 |
  a1 |
  
  d4 d4 a4 d4 |
  bes2. a4 |
  a1 |
  a1 |
  f4 f4 f4 f4 |
  g2 a2 |
  f1 \bar "|."
}

BassVerseMusic = \relative c {
  d4 e4 f4 g4 |
  a2 a4( g4) |
  a2 a2 |
  a4 a4 bes4 c4 |
  bes2 a4( g4) |
  a1 |

  d,4 d4 d4 d4 |
  d2 d2 |
  d2 d2 |
  d4 d4 d4 d4 |
  d2 d2 |
  cis1 |
  
  d4 d4 d4 d4 |
  g2. a4 |
  f1 |
  a,1 |
  d4 d4 d4 c4 |
  bes2 a2 |
  d1 \bar "|."
}

SheetMusicVerseBreaks = \relative c {
  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 | \break
  
  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 | \break
  
  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 \bar "|."
}

SlidesVerseBreaks = \relative c {
  \setSystemOffset \defaultTopSystemOffset
  s1 | \break \noPageBreak

  \setSystemOffset \defaultBottomSystemOffset
  s1 | \noBreak
  s1 | \pageBreak
  
  %------------------------
  
  \setSystemOffset \defaultTopSystemOffset
  s1 | \break \noPageBreak

  \setSystemOffset \defaultBottomSystemOffset
  s1 | \noBreak
  s1 | \pageBreak
  
  
  %------------------------
  
  \setSystemOffset \defaultTopSystemOffset
  s1 | \break \noPageBreak

  \setSystemOffset \defaultBottomSystemOffset
  s1 | \noBreak
  s1 | \pageBreak
  
  %------------------------
  
  \setSystemOffset \defaultTopSystemOffset
  s1 | \break \noPageBreak

  \setSystemOffset \defaultBottomSystemOffset
  s1 | \noBreak
  s1 | \pageBreak
  
  %------------------------
  
  \setSystemOffset \defaultTopSystemOffset
  s1 | \break \noPageBreak

  \setSystemOffset \defaultBottomSystemOffset
  s1 | \noBreak
  s1 | \noBreak
  s1 | \pageBreak
  
  %------------------------
  
  \setSystemOffset \defaultTopSystemOffset
  s1 | \break \noPageBreak

  \setSystemOffset \defaultBottomSystemOffset
  s1 | \noBreak
  s1 | \pageBreak
}

VerseOne = \lyricmode {
  \set stanza = "1. "
  Let all mor -- tal flesh keep si -- lence,
  And with fear and trem -- bling stand;
  Pon -- der noth -- ing earth -- ly mind -- ed,
  For with bless -- ing in his hand,
  Christ our God to earth de -- scend -- eth,
  Our full hom -- age to de -- mand.
}

VerseTwo = \lyricmode {
  \set stanza = "2. "
  King of kings, yet born of Mar -- y,
  As of old on earth He stood,
  Lord of lords, in hu -- man ves -- ture,
  In the bod -- y and the blood,
  He will give to all the faith -- ful
  His own self for heav'n -- ly food.
}

VerseThree = \lyricmode {
  \set stanza = "3. "
  Rank on rank the host of heav -- en
  Spreads its van -- guard on the way,
  As the Light of light de -- scend -- eth
  From the realms of end -- less day,
  That the pow'rs of hell may van -- ish
  as the dark -- ness clears a -- way.
}

VerseFour = \lyricmode {
  \set stanza = "4. "
  At His feet the six -- winged ser -- aph,
  Cher -- u -- bim with sleep -- less eye,
  Veil their fac -- es to the Pres -- ence,
  As with cease -- less voice they cry;
  Al -- le -- lu -- ia, Al -- le -- lu -- ia,
  Al -- le -- lu -- ia, Lord Most High!
}
