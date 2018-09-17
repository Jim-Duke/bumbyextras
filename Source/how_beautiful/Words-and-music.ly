\version "2.19.49"

\include "../../../LilypondTemplates/functions.ly"
\include "../../../LilypondTemplates/hymns.ly"
\include "../hymn_settings.ly"

global = {
  \key ees \major
  \time 3/4
  \tempo 4 = 110
}

MajorKey = ##t

Title = "How Beautiful"
SongNumber = \how_beautiful_number
LeaderHints = \markup {
  \fontsize #-4
  \normal-text { "E" \musicglyph #"accidentals.flat" " - 3 - DO" }
}

number_on_rhs = \how_beautiful_number_rhs

#(if number_on_rhs
     (begin
      (define lhs LeaderHints)
      (define rhs SongNumber))
     (begin
      (define lhs SongNumber)
      (define rhs LeaderHints)))

\header {
  title = \Title
  tune = "How Beautiful"
  meter = "8.8.8.8 with Chorus"
  composer = "Twila Paris"
  poet = "Twila Paris"
  songNumber = \SongNumber
  lhs = \lhs
  rhs = \rhs
  copyright = "Copyright (c) 1990 Ariose Music and Mountain Spring Music"
  license = #(string-append "CCLI Song #443594, License #" ccli_license)
  scripture = #"How lovely on the mountains
         are the feet of him who brings good news,
         who announces peace
         and brings good news of happiness,
         who announces salvation,
         and says to Zion, \"Your God reigns!\" - Isaiah 52:7"
  arranger = "Ken Young"
  tagline = ##f
}

sheetMusicBreaks = \relative c {
  \tag #'usePartials' { \partial 4 }
  s4    | \noBreak
  s2.   | \noBreak
  s2.   | \noBreak
  s2.   | \noBreak
  s2 s8 \bar "" \break
  
  s8    | \noBreak
  s2.   | \noBreak
  s2.   | \noBreak
  s2.   | \noBreak
  s4    \bar "" \break
  
  s2    | \noBreak
  s2.   | \noBreak
  s2.   | \noBreak
  s2.   | \noBreak
  s2 s8 \bar "" \break
  
  s8    | \noBreak
  s2.   | \noBreak
  s2.   | \noBreak
  s2.   | \noBreak
  s4    \bar "" \break

  s2    | \noBreak
  s2.   | \noBreak
  s2.   | \noBreak
  s2.   | \noBreak
  s2.   | \noBreak
  s2.   | \noBreak
  s2.   | \noBreak
  s2.   | \noBreak
  s4    \bar "" \break

  s2    | \noBreak
  s2.   | \noBreak
  s2.   | \noBreak
  s2.   | \noBreak
  s2.   | \noBreak
  s2.   | \noBreak
  s2    \bar "|."
}

sheetMusicBridgeBreaks = \relative c {
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \break
  
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \break
  
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \break
  
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2  \bar "|."
}

slideMusicBreaks = \relative c {
  \tag #'usePartials' { \partial 4 }
  \setSystemOffset \defaultTopSystemOffset
  s4    | \noBreak
  s2.   | \noBreak
  s2 s8 \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s8    | \noBreak
  s2.   | \noBreak
  s2 s8 \bar "" \pageBreak
  
  \setSystemOffset \defaultTopSystemOffset
  s8    | \noBreak
  s2.   | \noBreak
  s2    \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s4    | \noBreak
  s2.   | \noBreak
  s4    \bar "" \pageBreak
  
  \setSystemOffset \defaultTopSystemOffset
  s2    | \noBreak
  s2.   | \noBreak
  s2 s8 \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  
  s8    | \noBreak
  s2.   | \noBreak
  s2 s8 \bar "" \pageBreak
  
  \setSystemOffset \defaultTopSystemOffset
  s8    | \noBreak
  s2.   | \noBreak
  s2    \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s4    | \noBreak
  s2.   | \noBreak
  s4    \bar "" \pageBreak

  \setSystemOffset \defaultTopSystemOffset
  s2    | \noBreak
  s2.   | \noBreak
  s2.   | \noBreak
  s2.   | \noBreak
  s4    \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s2    | \noBreak
  s2.   | \noBreak
  s2.   | \noBreak
  s2.   | \noBreak
  s4    \bar "" \pageBreak

  \setSystemOffset \defaultTopSystemOffset
  s2    | \noBreak
  s2.   | \noBreak
  s2.   | \noBreak
  s2    \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s4    | \noBreak
  s2.   | \noBreak
  s2.   | \noBreak
  s2    \bar "|." \pageBreak
}

slideMusicBridgeBreaks = \relative c {
  \setSystemOffset \defaultTopSystemOffset
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \break \pageBreak
  
  \setSystemOffset \defaultTopSystemOffset
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \break \pageBreak
  
  \setSystemOffset \defaultTopSystemOffset
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2  \bar "|." \pageBreak
}

%
% Largely duplicates the soprano line, but makes a few changes
% where needed to deal with lyrics issues.
%
alignVerse = \relative c' {
  \tag #'usePartials' { \partial 4 }
  ees4 |
  ees2 bes'4 |
  bes2~ bes8
  
  bes8 |
  \autoBeamOff c4.( bes8) \autoBeamOn aes8( bes8) |
  bes2 r8
  
  ees,8 |
  aes4 bes4 c4 |
  bes2
  
  ees,8 f8 |
  g4 f4. ees8 |
  f8 r8
  
  g4.( f8) |
  ees2 bes'4 |
  bes2~ bes8
  
  bes8 |
  \autoBeamOff c4. bes8 \autoBeamOn aes8( bes8) |
  bes2 r8
  
  ees,8 |
  aes4 bes4 c4 |
  bes2
  
  ees,8 f8 |
  g4 f4. ees8 |
  f8 r8

  g4.( f8) |
  ees2 bes'4 |
  bes2.~ |
  bes2.~ |
  bes4
  
  
  g4.( f8) |
  ees2 bes'4 |
  bes2.~ |
  bes2.~ |
  bes4
  
  
  g4.( f8) |
  ees2 bes'4 |
  bes2.~ |
  bes4 r4
  
  ees,8 f8 |
  g8 f4. ees4 |
  ees2.~ |
  ees2 \bar "|."
}

sopranoVerse = \relative c' {
  \tag #'usePartials' { \partial 4 }
  ees4 |
  ees2 bes'4 |
  bes2~ bes8
  
  bes8 |
  \autoBeamOff c4.( bes8) \autoBeamOn aes8( bes8) |
  bes2 bes8\rest
  
  ees,8 |
  aes4 bes4 c4 |
  bes2
  
  ees,8 f8 |
  g4 f4. ees8 |
  f8 f8\rest
  
  g4.( f8) |
  ees2 bes'4 |
  bes2~ bes8
  
  bes8 |
  \autoBeamOff c4.( bes8) \autoBeamOn aes8( bes8) |
  bes2 bes8\rest
  
  ees,8 |
  aes4 bes4 c4 |
  bes2
  
  ees,8 f8 |
  g4 f4. ees8 |
  f8 f8\rest

  g4.( f8) |
  ees2 bes'4 |
  bes2.~ |
  bes2.~ |
  bes4
  
  
  g4.( f8) |
  ees2 bes'4 |
  bes2.~ |
  bes2.~ |
  bes4
  
  
  g4.( f8) |
  ees2 bes'4 |
  bes2.~ |
  bes4 bes4\rest
  
  ees,8 f8 |
  \newSpacingSection
  \override Score.SpacingSpanner.spacing-increment = #2
  g8
  \newSpacingSection
  \revert Score.SpacingSpanner.spacing-increment
  f4. ees4 |
  ees2.~ |
  ees2 \bar "|."
}

altoVerse = \relative c' {
  \tag #'usePartials' { \partial 4 }
  ees4 |
  ees2 ees4 |
  d2~ d8
  
  d8 |
  c2 c4 |
  bes2 \hide r8
  
  bes8 |
  c4 c4 c4 |
  bes2
  
  bes8 bes8 |
  c4 c4. c8 |
  d8 \hide r8
  
  d2 |
  ees2 ees4 |
  d2~ d8
  
  d8 |
  c2 c4 |
  bes2 \hide r8
  
  bes8 |
  c4 c4 c4 |
  bes2
  
  bes8 bes8 |
  c4 c4. c8 |
  d8 \hide r8

  d2 |
  ees2 ees4 |
  ees2.~( |
  ees2. |
  f4)
  
  f2 |
  ees2 ees4 |
  f2.~( |
  f2. |
  ees4)
  
  ees2 |
  ees2 ees4 |
  f2.( |
  ees4) \hide r4
  
  ees8 ees8 |
  ees8 ees4. d4 |
  bes2.~ |
  bes2 \bar "|."
}

tenorVerse = \relative c' {
  \tag #'usePartials' { \partial 4 }
  g4 |
  g2 g4 |
  f2~ f8
  
  f8 |
  ees2 ees4 |
  g2 f8\rest
  
  g8 |
  aes4 aes4 aes4 |
  g2
  
  g8 g8 |
  a4 a4. a8 |
  bes8 f8\rest
  
  bes4.( aes8) |
  g2 g4 |
  f2~ f8
  
  f8 |
  ees2 ees8 f8 |
  g2 g8\rest
  
  g8 |
  aes4 aes4 aes4 |
  g2
  
  g8 g8 |
  a4 a4. a8 |
  bes8 f8\rest

  bes2 |
  aes2 aes4 |
  g2.( |
  aes2. |
  bes4)
  
  bes2 |
  aes2 aes4 |
  f2.( |
  aes2. |
  g4)
  
  g2 |
  aes2 aes4 |
  aes2.~ |
  aes4 f4\rest
  
  aes8 aes8 |
  bes8 bes4. bes4 |
  g2.~ |
  g2 \bar "|."
}

bassVerse = \relative c {
  \tag #'usePartials' { \partial 4 }
  ees4 |
  ees2 ees4 |
  bes2~ bes8
  
  bes8 |
  \autoBeamOff aes4.( bes8) \autoBeamOn c8( d8) |
  ees2 \hide r8
  
  ees8 |
  ees4 ees4 ees4 |
  ees2
  
  ees8 ees8 |
  c4 c4. c8 |
  bes8 \hide r8
  
  bes2 |
  ees2 ees4 |
  bes2~ bes8
  
  bes8 |
  \autoBeamOff aes4.( bes8) \autoBeamOn c8( d8) |
  ees2 \hide r8
  
  ees8 |
  ees4 ees4 ees4 |
  ees2
  
  ees8 ees8 |
  c4 c4. c8 |
  bes8 \hide r8

  bes2 |
  c2 c4 |
  bes2.( |
  c2. |
  d4)
  
  d2 |
  c2 c4 |
  bes2.( |
  c2. |
  ees4)
  
  ees2 |
  c2 c4 |
  bes2.( |
  c4) \hide r4
  
  c8 c8 |
  bes8 bes4. bes4 |
  ees2.~ |
  ees2 \bar "|."
}

%
% Duplicates the soprano line but allows for slight deviation to
% enable us to elegantly handle certain lyrics issues.
%
alignBridge = \relative c' {
  ees4 g4 bes4 |
  c2. |

  c2 f,4 |
  f2. |
  
  f4 g4 aes8( bes8) |
  bes2. |
  
  bes2 ees,4 |
  ees2. |
  
  ees4 f4 g4 |
  f2. |
  
  f4 g4 aes8( bes8) |
  bes2. |
  
  bes8 aes4 g4. |
  ees2~ ees8 ees8 |
  ees2.~ |
  ees2 r4 |
  
  bes'8 aes4 g4 aes8( |
  g2~ g8) ees8 |
  ees2.~ |
  ees2.~ |
  ees4 r4 \bar "|."
}

sopranoBridge = \relative c' {
  ees4 g4 bes4 |
  c2. |

  c2 f,4 |
  f2. |
  
  f4 g4 aes8( bes8) |
  bes2. |
  
  bes2 ees,4 |
  ees2. |
  
  ees4 f4 g4 |
  f2. |
  
  f4 g4 aes8( bes8) |
  bes2. |
  
  \newSpacingSection
  \override Score.SpacingSpanner.spacing-increment = #3
  bes8 
  \newSpacingSection
  \revert Score.SpacingSpanner.spacing-increment
  aes4 g4. |
  ees2~ ees8 ees8 |
  ees2.~ |
  ees2 ees4\rest |
  
  \newSpacingSection
  \override Score.SpacingSpanner.spacing-increment = #3
  bes'8
  \newSpacingSection
  \revert Score.SpacingSpanner.spacing-increment
  aes4 g4 aes8( |
  g2~ g8) ees8 |
  ees2.~ |
  ees2.~ |
  ees4 ees4\rest \bar "|."
}

altoBridge = \relative c' {
  ees4 ees4 ees4 |
  f2. |
  
  f2 ees4 |
  ees2. |
  
  d4 ees4 f4 |
  g2. |
  
  f2 ees4 |
  c2. |
  
  c4 d4 ees4 |
  d2. |
  
  d4 ees4 f4 |
  g2. |
  
  g8 f4 ees4. |
  c2~ c8 c8 |
  c2.( |
  bes2) \hide r4 |
  
  ees8 ees4 ees4 c8~ |
  c2~ c8 c8 |
  c2.~ |
  c2.~ |
  c4 \hide r4 \bar "|."
}

tenorBridge = \relative c' {
  g4 g4 g4 |
  a2. |
  
  a2 a4 |
  bes2. |
  
  bes4 bes4 bes4 |
  bes2. |
  
  bes2 bes4 |
  aes2. |
  
  aes4 aes4 aes4 |
  bes2. |
  
  bes4 bes4 bes4 |
  bes2. |
  
  bes8 bes4 bes4. |
  aes2~ aes8 aes8 |
  aes2.( |
  g2) f4\rest |
  
  bes8 bes4 bes4 aes8~ |
  aes2~ aes8 aes8 |
  aes2.~ |
  aes2.~ |
  aes4 f4\rest \bar "|."
}

bassBridge = \relative c {
  ees4 ees4 ees4 |
  c2. |
  
  c2 c4 |
  ees4( c4 ees4) |
  
  d4 ees4 d4 |
  ees2. |
  
  d2 c4 |
  c2. |
  
  c4 c4 c4 |
  bes2. |
  
  bes4 bes4 bes4 |
  ees2. |
  
  ees8 ees4 ees4. |
  c2~ c8 c8 |
  c2.( |
  ees2) \hide r4 |
  
  ees8 ees4 ees4 c8~ |
  c2~ c8 c8 |
  c2.~ |
  c2.~ |
  c4 \hide r4 \bar "|."
}

verseOne = \lyricmode {
  \set stanza = "1. "
  How beau -- ti -- ful
  the hands that served
  the wine and the bread,
  and the sons of the earth.
  How beau -- ti -- ful
  the feet that walked
  the long dust -- y4 roads,
  and the hill to the cross.
}

verseTwo = \lyricmode {
  \set stanza = "2. "
  How beau -- ti -- ful
  the heart that bled
  that took all my4 sin,
  and _ bore it in8 -- stead.
  How beau -- ti -- ful
  the ten -- der eyes
  that choose to for -- give,
  and _ ne -- ver de -- spise.
}

verseThree = \lyricmode {
  \set stanza = "3. "
  How beau -- ti -- ful
  the ra -- diant bride
  who waits for the groom
  with His light in her eyes.
  How beau -- ti -- ful
  when hum -- ble hearts give
  the fruit of pure lives
  so that oth -- ers may8 live.
}

verseFour = \lyricmode {
  \set stanza = "4. "
  How beau -- ti -- ful
  the feet that bring
  the sound of good news,
  and the love of the King.
  How beau -- ti -- ful
  the hands that serve
  the wine and the bread,
  and the sons of the8 earth.
}

verseCommon = \lyricmode {
  How beau -- ti -- ful,
  how beau -- ti -- ful,
  how beau -- ti -- ful,
  is the bod -- y of Christ.
}

bridgeLyrics = \lyricmode {
  And as He laid down His life,
  we of -- fer this sac -- ri -- fice,
  that we might live just as He died:
  will -- ing to pay the price,
  will -- ing to pay the price.
}
