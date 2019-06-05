\version "2.19.49"
#(use-modules (guile-user))

#(ly:set-option 'relative-includes #t)
\include "../../../LilypondTemplates/functions.ly"
\include "../../../LilypondTemplates/hymns.ly"
\include "../hymn_settings.ly"

global = {
  \key ees \major
  \time 4/4
  \tempo 4 = 100
}

MajorKey = ##t

%%
%% Hymn Metadata Variables
%%

Title = "Thomas' Song"
SongNumber = \thomas_song_fc_number
RightFirstPage = \thomas_song_fc_number_rhs
FirstPage = #(if RightFirstPage 1 2)

LeaderHints = \markup {
  \fontsize #-4
  \normal-text { "E" \musicglyph #"accidentals.flat" " - 4 - MI" }
}

Scripture = "Then He said to Thomas, \"Reach here with your finger, and see My hands;
 and reach here your hand and put it into My side; and do not be unbelieving, but believing.\"
 Thomas answered and said to Him, \"My Lord and my God!\" -- John 20:27" 

ShowScriptureOnSheetMusic = ##t

\header {
  title = \Title
  tune = "THOMAS"
  meter = "Irregular"
  composer = "Ken Young"
  poet = "Ken Young"
  songNumber = \SongNumber
  lhs = #(if RightFirstPage LeaderHints SongNumber)
  rhs = #(if RightFirstPage SongNumber LeaderHints)
  copyright = "Words and Music Copyright © 1993 Hallal Music, Toddler Tunes Music, and Dayspring Music. All rights reserved."
  license = ##f
  tagline = ##f
}

voltaOneThree = \markup { "1., 3." }
voltaTwoFour = \markup { "2., 4." }

SopranoVerseBodyMusic = \relative c'' {
  \tag #'(sheetMusic verseTwo verseFour) {
    \tag #'usePartials { \partial 8 }
    g8 |
  }
  g4 bes8 bes8~ bes4 bes4 |
  f4 bes8 bes8~ bes4. g8 |
  g4 c8 c8~ c4.
  
  d8 |
  ees8( d8) c8 c8~ c4. c8 |
  c4 bes8 bes8~ bes4.
  
  g8 |
  g4 f8 ees8~ ees4.
  \tag #'(sheetMusic verseOne verseTwo) { ees8 }
  \tag #'(verseThree verseFour) { r8 } |
  ees8 f8 g8 f8~ f8 ees8 d4 |
}

SopranoVerseEndingMusic = \relative c' {
  ees2. r8
}

SopranoChorusMusic = \relative c'' {
  \tag #'(sheetMusic verseTwo) { ees8 }
  \tag #'(verseFour) { r8 } |
  ees4 ees8 ees8~ ees4. ees8 |
  d4 d8 d8~ d4. c8 |
  bes4 bes8 bes8~ bes4. ees8 |
  c4 c8 c8~ c8 d4. |
  ees4 ees8 ees8~ ees4. ees8 |
  d4 d8 d8~ d4. c8 |
  bes4 bes8 bes8~ bes4. ees8 |
  c4 c8 c8~ c8 d4. |
  ees2 c8( bes8) aes8 bes8~ |
  bes2. g8 bes8 |
  c2 aes4 g8 aes8~ |
  aes2. r8
  
  aes8 |
  aes4 g8 f8~ f4. ees8 |
  ees8 f8 g8 f8~ f8 ees8 d4 |
  ees2.
  \tag #'sheetMusic {
    r8^\markup { \right-align \italic "First time D.C., second time to CODA"
    \raise #0.8 \musicglyph #"scripts.coda" }
  }
  \tag #'slideMusic { r8 } \bar "||"
}

SopranoCodaMusic = \relative c'' {
  \tag #'usePartials { \partial 8 }
  g8^\markup {
      \left-align \raise #0.8 \musicglyph #"scripts.coda"
      "CODA"
  } |
  \set Score.tempoHideNote = ##t
  \tempo 4=90
  g4 bes8 bes8~ bes4. g8 |
  \tempo 4=70
  g4 c4
  c2^\fermata |
  c8 d8 ees8 c8~ c8 ees8 d4 |
  ees1 \bar "|."
}

AltoVerseBodyMusic = \relative c' {
  \tag #'(sheetMusic verseTwo verseFour) {
    \tag #'usePartials { \partial 8 }
    ees8 |
  }
  ees4 g8 g8~ g4 g4 |
  d4 f8 f8~ f4. ees8 |
  ees4 g8 g8~ g4.
  
  g8 |
  aes4 aes8 aes8~ aes4. aes8 |
  aes8( g8) g8 g8~ g4. ees8 |
  
  ees4 d8 c8~ c4.
  \tag #'(sheetMusic verseOne verseTwo) { c8 }
  \tag #'(verseThree verseFour) { r8 } |
  c8 c8 c8 d8~ d8 bes8 bes4 |
}

AltoVerseEndingMusic = \relative c' {
  bes2. r8
}

AltoChorusMusic = \relative c'' {
  \tag #'(sheetMusic verseTwo) { g8 }
  \tag #'(verseFour) { r8 } |
  aes4 aes8 aes8~ aes4. aes8 |
  f4 f8 f8~ f4. f8 |
  
  g4 g8 g8~ g4. g8 |
  g4 g8 g8~ g8 bes4. |
  aes4 aes8 aes8~ aes4. aes8 |
  
  f4 f8 f8~ f4. f8 |
  g4 g8 g8~ g4. g8 |
  g4 g8 g8~ g8 bes4. |
  
  aes2 aes4 ees8 g8~ |
  g2. g8 g8 |
  aes2 ees4 ees8 f8~ |
  f2. r8
  
  f8 |
  ees4 ees8 ees8~ ees4. ees8 |
  ees8 ees8 ees8 d8~ d8 d8 bes4 |
  bes2. r8 \bar "||"
}

AltoCodaMusic = \relative c' {
  ees8 |
  ees4 g8 g8~ g4. d8 |
  ees4 g4 g2^\fermata |
  aes8 aes8 aes8 aes8~ aes8 aes8 aes4 |
  aes2( g2) \bar "|."
}

TenorVerseBodyMusic = \relative c' {
  \tag #'(sheetMusic verseTwo verseFour) {
    \tag #'usePartials { \partial 8 }
    bes8 |
  }
  bes4 bes8 bes8~ bes4 bes4 |
  d4 d8 d8~ d4. d8 |
  ees4 d8 c8~ c4.
  
  d8 |
  ees4 ees8 ees8~ ees8( d8 c8) c8 |
  c4 bes8 bes8~ bes4. bes8 |
  
  bes4 aes8 g8~ g4.
  \tag #'(sheetMusic verseOne verseTwo) { c8 }
  \tag #'(verseThree verseFour) { r8 } |
  c8 c8 c8 bes8~ bes8 bes8 aes4 |
}

TenorVerseEndingMusic = \relative c' {
  g2. r8
}

TenorChorusMusic = \relative c' {
  \tag #'(sheetMusic verseTwo) { bes8 }
  \tag #'(verseFour) { r8 } |
  c4 c8 c8~ c4. c8 |
  bes4 bes8 bes8~ bes4. bes8 |
  
  bes4 bes8 bes8~ bes4. bes8 |
  c4 c8 c8~ c8 bes4. |
  c4 c8 c8~ c4. c8 |
  
  bes4 bes8 bes8~ bes4. bes8 |
  bes4 bes8 bes8~ bes4. bes8 |
  c4 c8 c8~ c8 bes4. |
  
  c2 c4 c8 d8~ |
  d2. d8 d8 |
  ees2 ees4 ees8 ees8~( |
  ees2 des4) r8
  
  ees8 |
  ees4 ees8 c8~ c4. c8 |
  c8 c8 c8 bes8~ bes8 bes8 aes4 |
  g2. r8 \bar "||"
}

TenorCodaMusic = \relative c' {
  bes8 |
  bes4 bes8 bes8~ bes4. bes8 |
  ees8 d8 c8 d8
  f4( 
  \set Score.tempoHideNote = ##t
  \tempo 4=40
  ees4)^\fermata |
  \tempo 4=70
  ees8 d8 c8 bes8~ bes8 c8 bes4 |
  c2( bes2) \bar "|."
}

BassVerseBodyMusic = \relative c {
  \tag #'(sheetMusic verseTwo verseFour) {
    \tag #'usePartials { \partial 8 }
    ees8 |
  }
  ees4 ees8 ees8~ ees4 ees4 |
  bes4 bes8 bes8~ bes4. c8 |
  c4 c8 c8~ c4.
  
  c8 |
  c4 c8 c8~ c8( d8 ees8) ees8 |
  ees4 ees8 ees8~ ees4. ees8 |
  
  bes4 bes8 c8~ c4.
  \tag #'(sheetMusic verseOne verseTwo) { aes8 }
  \tag #'(verseThree verseFour) { r8 } |
  aes8 aes8 aes8 bes8~ bes8 bes8 bes4 |
}

BassVerseEndingMusic = \relative c {
  <ees ees,>2. r8
}

BassChorusMusic = \relative c {
  \tag #'(sheetMusic verseTwo) { ees8 }
  \tag #'(verseFour) { r8 } |
  ees4 ees8 ees8~ ees4. ees8 |
  bes4 bes8 bes8~ bes4. bes8 |
  
  ees4 ees8 ees8~ ees4. ees8 |
  ees4 ees8 ees8~ ees8 ees4. |
  ees4 ees8 ees8~ ees4. ees8 |
  
  bes4 bes8 bes8~ bes4. bes8 |
  ees4 ees8 ees8~ ees4. ees8 |
  ees4 ees8 ees8~ ees8 ees4. |
  
  aes,2 aes4 aes8 bes8~ |
  bes2. bes8 bes8 |
  c2 c4 c8 des8~ |
  des2. r8
  
  des8 |
  c4 c8 c8~ c4. c8 |
  c8 c8 c8 bes8~ bes8 bes8 bes4 |
  <ees ees,>2. r8 \bar "||"
}

BassCodaMusic = \relative c {
  ees8 |
  ees4 ees8 ees4( bes4) bes8 |
  c8 d8 ees8 f8 g2^\fermata |
  aes8 g8 f8 bes,8~ bes8 ees8 d4 |
  <ees ees,>1 \bar "|."
}

SheetMusicVerseBreaks = {
  \tag #'sheetMusic {
    \tag #'usePartials { \partial 8 }
    ees8 | \noBreak
  }
  s1 | \noBreak
  s1 | \noBreak
  s2. s8 \bar "" \break
  
  s8 | \noBreak
  s1 | \noBreak
  s2. s8 \bar "" \break
  
  s8 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s2. s8 \break
  
  s1 | \noBreak
  s1 | \noBreak
  s2. s8 \bar "" \break
  
  s8 | \noBreak
  s1 | \noBreak
  s1 | \break
  
  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 | \break
  
  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s2. s8 \bar "" \break
  
  s8 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s2. s8 \bar "||" \break
  
  s8 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 \bar "|."
}

SheetMusicChorusBreaks = {
}

SlidesVerseBreaks = {
  \setSystemOffset \defaultTopSystemOffset
  \tag #'(verseTwo verseFour) {
    \tag #'usePartials { \partial 8 }
    s8 | \noBreak
  }
  s1 | \break
  
  \setSystemOffset \defaultBottomSystemOffset
  s2. s8 \bar "" \pageBreak
  
  %---------------------------------------------
  
  \setSystemOffset \defaultTopSystemOffset
  s8 | \noBreak
  s2. s8 \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s8 | \noBreak
  s2. s8 \bar "" \pageBreak
  
  %---------------------------------------------
  
  \setSystemOffset \defaultTopSystemOffset
  s8 | \noBreak
  s2. s8 \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s8 | \noBreak
  s2. s8 \bar "" \pageBreak
  
  %---------------------------------------------
  
  \setSystemOffset \defaultTopSystemOffset
  s8 | \noBreak
  s2 s8 \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s4. | \noBreak
  s2. s8 \bar "" \pageBreak
}

SlidesChorusBreaks = {
  \setSystemOffset \defaultTopSystemOffset
  s8 | \noBreak
  s1 | \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s2. s8 \bar "" \pageBreak
  
  %-----------------------------------------
  
  \setSystemOffset \defaultTopSystemOffset
  s8 | \noBreak
  s2. s8 \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s8 | \noBreak
  s1 | \pageBreak
  
  %-----------------------------------------
  
  \setSystemOffset \defaultTopSystemOffset
  s2. s8 \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s8 | \noBreak
  s2. s8 \bar "" \pageBreak
  
  %-----------------------------------------
  
  \setSystemOffset \defaultTopSystemOffset
  s8 | \noBreak
  s2. s8 \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s8 | \noBreak
  s1 | \pageBreak
  
  %-----------------------------------------
  
  \setSystemOffset \defaultTopSystemOffset
  s1 | \noBreak
  s2. \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s4 | \noBreak
  s1 | \noBreak
  s2. s8 \bar "" \pageBreak
  
  %-----------------------------------------
  
  \setSystemOffset \defaultTopSystemOffset
  s8 | \noBreak
  s1 | \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s1 | \noBreak
  s2. s8 \bar "||"
}

SlidesCodaBreaks = {
  \setSystemOffset \defaultTopSystemOffset
  s8 | \noBreak
  s1 | \noBreak
  s1 | \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s1 | \noBreak
  s1 \bar "|."
}

lyricRest = \markup { \raise #1.0 \musicglyph #"rests.3" }

VerseOne = \lyricmode {
  \set stanza = "1. "
  \tag #'sheetMusic { \lyricRest }
  Je -- sus, you were all to me,
  Why did You die on Cal -- va -- ry?
  O Lamb of God, I fail to see
  How this could be part of the plan. \tag #'sheetMusic { "" }
}

VerseTwo = \lyricmode {
  \set stanza = "2. "
  They say that You're a -- live a -- gain,
  But I saw death and ev -- 'ry sin
  Reach out to claim their dark -- est win.
  How could this be part of the
  \tag #'sheetMusic { "" } plan?
  
  If I could on -- ly hold Your hand,
  And touch the scars where nails were driv -- en;
  I would need to feel Your side
  where ho -- ly flesh by spear was riv -- en.
  Then I'd be -- lieve, on -- ly then I'd be -- lieve
  Your cru -- el death was part of a heav -- en -- ly plan.
}

VerseThree = \lyricmode {
  \set stanza = "3. "
  \tag #'sheetMusic { \lyricRest }
  Ho -- ly pres -- ence, ho -- ly face;
  A vis -- ion fill -- ing time and space.
  Your near -- ness makes my spir -- it race.
  \tag #'sheetMusic { \lyricRest }
  Could this be part of the plan? \tag #'sheetMusic { "" }
}

VerseFour = \lyricmode {
  \set stanza = "4. "
  I see the wounds that caused the cry,
  From heav -- en o -- cean, earth and sky;
  When peo -- ple watched their sav -- ior die.
  \tag #'sheetMusic { \lyricRest }
  Could this be part of the \tag #'sheetMusic { "" } plan?

  \tag #'sheetMusic { \lyricRest } Reach -- ing out to hold your hand,
  And touch the scars where nails were driv -- en;
  Com -- ing near I feel Your side
  where ho -- ly flesh by spear was riv -- en.
  Now I be -- lieve, Je -- sus, now I be -- lieve
  Your cru -- el death was part of a heav -- en -- ly plan.
}

ChorusOne = \lyricmode {
  If I could on -- ly hold Your hand,
  And touch the scars where nails were driv -- end;
  I would need to feel Your side
  where ho -- ly flesh by spear was riv -- en.
  Then I'd be -- lieve, on -- ly then I'd be -- lieve
  Your cru -- el death was part of a heav -- en -- ly plan.
}

ChorusTwo = \lyricmode {
  \tag #'sheetMusic { \lyricRest }
  Reach -- ing out to hold your hand,
  And touch the scars where nails were driven;
  Com -- ing near I feel Your side
  where ho -- ly flesh by spear was riv -- en.
  Now I be -- lieve, Je - sus, now I be -- lieve
  Your cru -- el death was part of a heav -- en -- ly plan.
}

Coda = \lyricmode {
  I proud -- ly say with bla -- zon cry;
  "\"You" are my Lord and my "God!\""
}
