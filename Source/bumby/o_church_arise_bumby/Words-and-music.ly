\version "2.19.49"
#(use-modules (guile-user))

#(ly:set-option 'relative-includes #t)
\include "../../../../LilypondTemplates/functions.ly"
\include "../../../../LilypondTemplates/hymns.ly"
\include "../hymn_settings.ly"

mainTempo = 85
fermataTempo = 28

global = {
  \key ees \major
  \numericTimeSignature
  \time 3/4
  \tempo 4 = \mainTempo
}

MajorKey = ##t

%%
%% Hymn Metadata Variables
%%

Title = "O Church, Arise"
SongNumber = \o_church_arise_bumby_number
RightFirstPage = \o_church_arise_bumby_number_rhs
FirstPage = #(if RightFirstPage 1 2)

LeaderHints = \markup {
  \fontsize #-4
  \normal-text { "E" \musicglyph #"accidentals.flat" " - 3 - SOL" }
}

Scripture = "... be strong in the Lord and in the strength of His might.
 Put on the whole armor of God, so that you may be able to stand firm
 against the schemes of the devil. -- Ephesians 6:10-11"

ShowScriptureOnSheetMusic = ##t

\header {
  title = \Title
  tune = "O CHURCH, ARISE"
  meter = "10.8.10.8.8.8.10.8"
  composer = "Keith Getty and Stuart Townend"
  poet = "Keith Getty and Stuart Townend"
  songNumber = \SongNumber
  lhs = #(if RightFirstPage LeaderHints SongNumber)
  rhs = #(if RightFirstPage SongNumber LeaderHints)
  copyright = "Words and Music Copyright © 2005 ThankYou Music. All rights reserved."
  copyright_admin = "EMI Christian Music Publishing c/o Music Services."
  license = #(string-append "CCLI Song #4611992, License #" bumby_ccli_license)
  tagline = ##f
}

SopranoVerseMusic = \relative c' {
  \tag #'usePartials { \partial 4. }
  bes8 ees8. d16 |
  ees4. bes8 ees8 g8 |
  aes8. g16 f4.
  
  \tag #'sheetMusic { g16( aes16) }
  \tag #'verseOne { g16 aes16 }
  \tag #'verseTwo { g16 aes16 }
  \tag #'verseThree { g16 aes16 }
  \tag #'verseFour { g16( aes16) } |
  bes8 ees,8 aes8 g8 f4 |
  ees4.
  
  bes8 ees8. d16 |
  ees4. bes8 ees8 g8 |
  aes8. g16 f4.
  
  g16 aes16 |
  bes8
  ees,8 aes8 g8 f4 |
  ees4.
  
  bes'8 ees8 d8 |
  c4. c8 bes8 g16( bes16) |
  bes4.
  
  bes8 ees8 d8 |
  c8 ees8 bes4 g4 |
  f4.
  
  bes,8 ees8. d16 |
  ees4. bes8 ees8 g8 |
  aes8. g16 f4.
  
  g16 aes16 |
  bes8 ees,8 aes8 g8 f4 |
  ees4. \bar "|."
}

AltoVerseMusic = \relative c' {
  \tag #'usePartials { \partial 4. }
  bes8 c8. c16 |
  bes4. bes8 bes8 ees8 |
  ees8. ees16 bes4.
  
  \tag #'sheetMusic { bes16( bes16) }
  \tag #'verseOne { bes16 bes16 }
  \tag #'verseTwo { bes16 bes16 }
  \tag #'verseThree { bes16 bes16 }
  \tag #'verseFour { bes8 } |
  ees8 ees8 f8 ees8 d4 |
  ees4.
  
  bes8 c8. c16 |
  bes4. bes8 bes8 ees8 |
  ees8. ees16 bes4.
  
  bes16 bes16 |
  ees8 ees8 f8 ees8 d4 |
  ees4.
 
  g8 g8 bes8 |
  aes4. aes8 g8 g8 |
  f4.
  
  f8 g8 g8 |
  aes8 aes8 g4 ees4 |
  d4.
  
  bes8 c8. c16 |
  bes4. bes8 bes8 ees8 |
  ees8. ees16 bes4.
  
  bes16 bes16 |
  ees8 ees8 f8 ees8 d4 |
  bes4. \bar "|."
}

TenorVerseMusic = \relative c' {
  \tag #'usePartials { \partial 4. }
  bes8 aes8. aes16 |
  g4. g8 g8 bes8 |
  aes8. aes16 bes4.
  
  \tag #'sheetMusic { bes16( bes16) }
  \tag #'verseOne { bes16 bes16 }
  \tag #'verseTwo { bes16 bes16 }
  \tag #'verseThree { bes16 bes16 }
  \tag #'verseFour { bes8 } |
  g8 g8 aes8 aes8 aes4 |
  g4.
  
  bes8 aes8. aes16 |
  g4. g8 g8 g8 |
  aes8. aes16 bes4.
  
  bes16 bes16 |
  g8 g8 aes8 aes8 aes4 |
  g4.
  
  bes8 bes8 ees8 |
  ees4. ees8 ees8 ees8 |
  d4.
  
  d8 ees8 ees8 |
  ees8 ees8 ees4 bes4 |
  bes4.
  
  bes8 aes8. aes16 |
  g4. g8 g8 bes8 |
  aes8. aes16 bes4.
  
  bes16 bes16 |
  g8 g8 aes8 aes8 aes4 |
  g4. \bar "|."
}

BassVerseMusic = \relative c {
  \tag #'usePartials { \partial 4. }
  bes8 bes8. bes16 |
  ees4. ees8 ees8 ees8 |
  c8. c16 d4.
  
  \tag #'sheetMusic { d16( d16) }
  \tag #'verseOne { d16 d16 }
  \tag #'verseTwo { d16 d16 }
  \tag #'verseThree { d16 d16 }
  \tag #'verseFour { d8 } |
  ees8 ees8 aes,8 aes8 bes4 |
  ees4.
  
  bes8 bes8. bes16 |
  ees4. ees8 ees8 ees8 |
  c8. c16 d4.
  
  d16 d16 |
  ees8 ees8 aes,8 aes8 bes4 |
  ees4.
  
  ees8 ees8 g8 |
  aes4. aes8 ees8 ees8 |
  bes4.
  
  bes8 bes8 bes8 |
  aes8 c8 ees4 ees4 |
  bes4.
  
  bes8 bes8. bes16 |
  ees4. ees8 ees8 ees8 |
  c8.c16 d4.
  
  d16 d16 |
  ees8 ees8 aes,8 aes8 bes4 |
  ees4. \bar "|."
}

SheetMusicVerseBreaks = \relative c {
  \tag #'usePartials { \partial 4. }
  s4. | \noBreak
  s2. | \noBreak
  s2 s8 \bar "" \break \noPageBreak
  
  s8 | \noBreak
  s2. | \noBreak
  s4. \bar "" \break \noPageBreak
  
  s4. | \noBreak
  s2. | \noBreak
  s2 s8 \bar "" \break \noPageBreak
  
  s8 | \noBreak
  s2. | \noBreak
  s4. \bar "" \pageBreak
  
  s4. | \noBreak
  s2. | \noBreak
  s4. \bar "" \break \noPageBreak
  
  s4. | \noBreak
  s2. | \noBreak
  s4. \bar "" \break \noPageBreak
  
  s4. | \noBreak
  s2. | \noBreak
  s2 s8 \bar "" \break \noPageBreak
  
  s8  | \noBreak
  s2. | \noBreak
  s4. \bar "|."
}

SlidesVerseBreaks = \relative c {
  \tag #'usePartials { \partial 4. }
  \setSystemOffset \defaultTopSystemOffset
  s4. | \noBreak
  s4. \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s4. | \noBreak
  s2 s8 \bar "" \pageBreak

  \setSystemOffset \defaultTopSystemOffset
  s8 | \noBreak
  s4. \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s4. | \noBreak
  s4. \bar "" \pageBreak

  \setSystemOffset \defaultTopSystemOffset
  s4. | \noBreak
  s4. \bar "" \break \noPageBreak

  \setSystemOffset \defaultBottomSystemOffset
  s4. | \noBreak
  s2 s8 \bar "" \pageBreak

  \setSystemOffset \defaultTopSystemOffset
  s8 | \noBreak
  s4. \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s4. | \noBreak
  s4. \bar "" \pageBreak
  
  \setSystemOffset \defaultTopSystemOffset
  s4. | \noBreak
  s4. \bar "" \break \noPageBreak

  \setSystemOffset \defaultBottomSystemOffset
  s4. | \noBreak
  s4. \bar "" \pageBreak
  
  \setSystemOffset \defaultTopSystemOffset
  s4. | \noBreak
  s8  \bar "" \break \noPageBreak

  \setSystemOffset \defaultBottomSystemOffset
  s2 s8 | \noBreak
  s4. \bar "" \pageBreak
  
  \setSystemOffset \defaultTopSystemOffset
  s4. | \noBreak
  s4. \bar "" \break \noPageBreak

  \setSystemOffset \defaultBottomSystemOffset
  s4. | \noBreak
  s2 s8 \bar "" \pageBreak

  \setSystemOffset \defaultTopSystemOffset
  s8 | \noBreak
  s8 \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s2 s8 | \noBreak
  s4. \bar "|."
}

VerseOne = \lyricmode {
  \set stanza = "1. "
  O church, a -- rise and put your ar -- mor on;
  Hear the call of Christ our cap -- tain.
  For now the weak can say that they are strong
  In the strength that God has giv -- en.
  
  With shield of faith and belt of truth
  We'll stand a -- gainst the dev -- il's lies,
  An ar -- my bold, whose bat -- tle -- cry is love,
  Reach -- ing out to those in dark -- ness.
}

VerseTwo = \lyricmode {
  \set stanza = "2. "
  Our call to war— to love the cap -- tive soul,
  But to rage a -- gainst the cap -- tor;
  And with the sword that makes the wound -- ed whole,
  We will fight with faith and val -- or.
  
  When faced with trials on eve -- ry side,
  We know the out -- come is se -- cure.
  And Christ will have the prize for which He died:
  An in -- her -- it -- ance of na -- tions.
}

VerseThree = \lyricmode {
  \set stanza = "3. "
  Come see the cross, where love and mer -- cy meet
  As the Son of God is strick -- en;
  Then see His foes lie crushed be -- neath His feet,
  For the Con -- quer -- or has ris -- en!
  
  And as the stone is rolled a -- way
  And Christ e -- merg -- es from the grave,
  This vic -- t'ry march con -- tin -- ues till the day
  Eve -- ry eye and heart shall see Him.
}

VerseFour = \lyricmode {
  \set stanza = "4. "
  So Spir -- it come, put strength in eve -- ry stride,
  Give grace for eve -- ry hur -- dle,
  That we may run with faith to win the prize
  Of a serv -- ant good and faith -- ful.
  
  As saints of old still line the way,
  Re -- tell -- ing tri -- umphs of His grace,
  We hear their calls and hun -- ger for the day
  When with Christ we stand in glo -- ry.
}
