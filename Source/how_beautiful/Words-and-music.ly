\version "2.18.2"

\include "../common.ly"

global = {
  \key ees \major
  \time 3/4
  \aikenHeads
}

\header {
  title = "How Beautiful"
  tune = "How Beautiful"
  meter = "8.8.8.8 with Chorus"
  composer = "Twila Paris"
  poet = "Twila Paris"
  songNumber = \how_beautiful_number
  songNumber_lhs = \how_beautiful_number_lhs
  songNumber_rhs = \how_beautiful_number_rhs
  copyright = "Copyright (c) 1990 Ariose Music and Mountain Spring Music"
  license = "CCLI Song #443594, License #2055442"
  arranger = "Ken Young"
  scripture = \markup {
    \override #'(line-width . 60)
    \center-column {
      \vspace #4
      \abs-fontsize #24
      \italic \wordwrap-string #"How lovely on the mountains
         are the feet of him who brings good news,
         who announces peace
         and brings good news of happiness,
         who announces salvation,
         and says to Zion, \"Your God reigns!\" - Isaiah 52:7"
    }
  }
  tagline = ##f
}

%
% Largely duplicates the soprano line, but makes a few changes
% where needed to deal with lyrics issues.
%
alignVerse = \relative c' {
  \partial 4 ees4 \noBreak
  ees2 bes'4 \noBreak
  bes2~ bes8 \bar ""
  
  bes8 | \noBreak
  \autoBeamOff c4.( bes8) \autoBeamOn aes8( bes8) | \noBreak
  bes2 r8 \bar ""
  
  ees,8 | \noBreak
  aes4 bes4 c4 | \noBreak
  bes2 \bar ""
  
  ees,8 f8 | \noBreak
  g4 f4. ees8 | \noBreak
  f8 r8 \bar "" \break
  
  g4.( f8) | \noBreak
  ees2 bes'4 | \noBreak
  bes2~ bes8 \bar ""
  
  bes8 | \noBreak
  \autoBeamOff c4. bes8 \autoBeamOn aes8( bes8) | \noBreak
  bes2 r8 \bar "" \break
  
  ees,8 | \noBreak
  aes4 bes4 c4 | \noBreak
  bes2 \bar ""
  
  ees,8 f8 | \noBreak
  g4 f4. ees8 | \noBreak
  f8 r8 \bar "" \break

  g4.( f8) | \noBreak
  ees2 bes'4 | \noBreak
  bes2.~ | \noBreak
  bes2.~ | \noBreak
  bes4 \bar ""
  
  
  g4.( f8) | \noBreak
  ees2 bes'4 | \noBreak
  bes2.~ | \noBreak
  bes2.~ | \noBreak
  bes4 \bar ""
  
  
  g4.( f8) | \noBreak
  ees2 bes'4 | \noBreak
  bes2.~ | \noBreak
  bes4 r4 \bar ""
  
  ees,8 f8 | \noBreak
  g8 f4. ees4 | \noBreak
  ees2.~ | \noBreak
  ees2 s4 \bar "|."
}

sopranoVerse = \relative c' {
  \partial 4 ees4 \noBreak
  ees2 bes'4 \noBreak
  bes2~ bes8 \bar ""
  
  bes8 | \noBreak
  \autoBeamOff c4.( bes8) \autoBeamOn aes8( bes8) | \noBreak
  bes2 r8 \bar ""
  
  ees,8 | \noBreak
  aes4 bes4 c4 | \noBreak
  bes2 \bar ""
  
  ees,8 f8 | \noBreak
  g4 f4. ees8 | \noBreak
  f8 r8 \bar "" \break
  
  g4.( f8) | \noBreak
  ees2 bes'4 | \noBreak
  bes2~ bes8 \bar ""
  
  bes8 | \noBreak
  \autoBeamOff c4.( bes8) \autoBeamOn aes8( bes8) | \noBreak
  bes2 r8 \bar "" \break
  
  ees,8 | \noBreak
  aes4 bes4 c4 | \noBreak
  bes2 \bar ""
  
  ees,8 f8 | \noBreak
  g4 f4. ees8 | \noBreak
  f8 r8 \bar "" \break

  g4.( f8) | \noBreak
  ees2 bes'4 | \noBreak
  bes2.~ | \noBreak
  bes2.~ | \noBreak
  bes4 \bar ""
  
  
  g4.( f8) | \noBreak
  ees2 bes'4 | \noBreak
  bes2.~ | \noBreak
  bes2.~ | \noBreak
  bes4 \bar ""
  
  
  g4.( f8) | \noBreak
  ees2 bes'4 | \noBreak
  bes2.~ | \noBreak
  bes4 r4 \bar ""
  
  ees,8 f8 | \noBreak
  g8 f4. ees4 | \noBreak
  ees2.~ | \noBreak
  ees2 s4 \bar "|."
}

altoVerse = \relative c' {
  % Phrase 1
  \partial 4 ees4 | \noBreak
  ees2 ees4 | \noBreak
  d2~ d8 \bar ""
  
  d8 | \noBreak
  c2 c4 | \noBreak
  bes2 r8 \bar ""
  
  bes8 | \noBreak
  c4 c4 c4 | \noBreak
  bes2 \bar ""
  
  bes8 bes8 | \noBreak
  c4 c4. c8 | \noBreak
  d8 r8 \bar ""
  
  d2 | \noBreak
  ees2 ees4 | \noBreak
  d2~ d8 \bar ""
  
  d8 | \noBreak
  c2 c4 | \noBreak
  bes2 r8 \bar ""
  
  bes8 | \noBreak
  c4 c4 c4 | \noBreak
  bes2 \bar ""
  
  bes8 bes8 | \noBreak
  c4 c4. c8 | \noBreak
  d8 r8 \bar ""

  d2 | \noBreak
  ees2 ees4 | \noBreak
  ees2.~( | \noBreak
  ees2. | \noBreak
  f4) \bar ""
  
  f2 | \noBreak
  ees2 ees4 | \noBreak
  f2.~( | \noBreak
  f2. | \noBreak
  ees4) \bar ""
  
  ees2 | \noBreak
  ees2 ees4 | \noBreak
  f2.( | \noBreak
  ees4) r4 \bar ""
  
  ees8 ees8 | \noBreak
  ees8 ees4. d4 | \noBreak
  bes2.~ | \noBreak
  bes2 s4 \bar "|."
}

tenorVerse = \relative c' {
  \partial 4 g4 | \noBreak
  g2 g4 | \noBreak
  f2~ f8 \bar ""
  
  f8 | \noBreak
  ees2 ees4 | \noBreak
  g2 r8 \bar ""
  
  g8 | \noBreak
  aes4 aes4 aes4 | \noBreak
  g2 \bar ""
  
  g8 g8 | \noBreak
  a4 a4. a8 | \noBreak
  bes8 r8 \bar ""
  
  bes4.( aes8) | \noBreak
  g2 g4 | \noBreak
  f2~ f8 \bar ""
  
  f8 | \noBreak
  ees2 ees8 f8 | \noBreak
  g2 r8 \bar ""
  
  g8 | \noBreak
  aes4 aes4 aes4 | \noBreak
  g2 \bar ""
  
  g8 g8 | \noBreak
  a4 a4. a8 | \noBreak
  bes8 r8 \bar ""

  bes2 | \noBreak
  aes2 aes4 | \noBreak
  g2.( | \noBreak
  aes2. | \noBreak
  bes4) \bar ""
  
  bes2 | \noBreak
  aes2 aes4 | \noBreak
  f2.( | \noBreak
  aes2. | \noBreak
  g4)
  
  g2 | \noBreak
  aes2 aes4 | \noBreak
  aes2.~ | \noBreak
  aes4 r4 \bar ""
  
  aes8 aes8 | \noBreak
  bes8 bes4. bes4 | \noBreak
  g2.~ | \noBreak
  g2 s4 \bar "|."
}

bassVerse = \relative c {
  \partial 4 ees4 | \noBreak
  ees2 ees4 | \noBreak
  bes2~ bes8 \bar ""
  
  bes8 | \noBreak
  \autoBeamOff aes4.( bes8) \autoBeamOn c8( d8) | \noBreak
  ees2 r8 \bar ""
  
  ees8 | \noBreak
  ees4 ees4 ees4 | \noBreak
  ees2 \bar ""
  
  ees8 ees8 | \noBreak
  c4 c4. c8 | \noBreak
  bes8 r8 \bar ""
  
  bes2 | \noBreak
  ees2 ees4 | \noBreak
  bes2~ bes8 \bar ""
  
  bes8 | \noBreak
  \autoBeamOff aes4.( bes8) \autoBeamOn c8( d8) | \noBreak
  ees2 r8 \bar ""
  
  ees8 | \noBreak
  ees4 ees4 ees4 | \noBreak
  ees2 \bar ""
  
  ees8 ees8 | \noBreak
  c4 c4. c8 | \noBreak
  bes4 \bar ""

  bes2 | \noBreak
  c2 c4 | \noBreak
  bes2.( | \noBreak
  c2. | \noBreak
  d4) \bar ""
  
  d2 | \noBreak
  c2 c4 | \noBreak
  bes2.( | \noBreak
  c2. | \noBreak
  ees4) \bar ""
  
  ees2 | \noBreak
  c2 c4 | \noBreak
  bes2.( | \noBreak
  c4) r4 \bar ""
  
  c8 c8 | \noBreak
  bes8 bes4. bes4 | \noBreak
  ees2.~ | \noBreak
  ees2 s4 \bar "|."
}

%
% Duplicates the soprano line but allows for slight deviation to
% enable us to elegantly handle certain lyrics issues.
%
alignBridge = \relative c' {
  ees4 g4 bes4 | \noBreak
  c2. |

  c2 f,4 | \noBreak
  f2. |
  
  f4 g4 aes8( bes8) | \noBreak
  bes2. |
  
  bes2 ees,4 | \noBreak
  ees2. |
  
  ees4 f4 g4 | \noBreak
  f2. |
  
  f4 g4 aes8( bes8) | \noBreak
  bes2. | \break
  
  bes8 aes4 g4. | \noBreak
  ees2~ ees8 ees8 | \noBreak
  ees2.~ | \noBreak
  ees2 r4 | \break
  
  bes'8 aes4 g4 aes8( | \noBreak
  g2~ g8) ees8 | \noBreak
  ees2.~ | \noBreak
  ees2.~ | \noBreak
  ees4 r4 \bar "|."
}

sopranoBridge = \relative c' {
  ees4 g4 bes4 | \noBreak
  c2. |

  c2 f,4 | \noBreak
  f2. |
  
  f4 g4 aes8( bes8) | \noBreak
  bes2. |
  
  bes2 ees,4 | \noBreak
  ees2. |
  
  ees4 f4 g4 | \noBreak
  f2. |
  
  f4 g4 aes8( bes8) | \noBreak
  bes2. | \break
  
  bes8 aes4 g4. | \noBreak
  ees2~ ees8 ees8 | \noBreak
  ees2.~ | \noBreak
  ees2 r4 | \break
  
  bes'8 aes4 g4 aes8( | \noBreak
  g2~ g8) ees8 | \noBreak
  ees2.~ | \noBreak
  ees2.~ | \noBreak
  ees4 r4 \bar "|."
}

altoBridge = \relative c' {
  ees4 ees4 ees4 | \noBreak
  f2. |
  
  f2 ees4 | \noBreak
  ees2. |
  
  d4 ees4 f4 | \noBreak
  g2. |
  
  f2 ees4 | \noBreak
  c2. |
  
  c4 d4 ees4 | \noBreak
  d2. |
  
  d4 ees4 f4 | \noBreak
  g2. |
  
  g8 f4 ees4. | \noBreak
  c2~ c8 c8 | \noBreak
  c2.( | \noBreak
  bes2) r4 |
  
  ees8 ees4 ees4 c8~ | \noBreak
  c2~ c8 c8 | \noBreak
  c2.~ | \noBreak
  c2.~ | \noBreak
  c4 r4 \bar "|."
}

tenorBridge = \relative c' {
  g4 g4 g4 | \noBreak
  a2. |
  
  a2 a4 | \noBreak
  bes2. |
  
  bes4 bes4 bes4 | \noBreak
  bes2. |
  
  bes2 bes4 | \noBreak
  aes2. |
  
  aes4 aes4 aes4 | \noBreak
  bes2. |
  
  bes4 bes4 bes4 | \noBreak
  bes2. |
  
  bes8 bes4 bes4. | \noBreak
  aes2~ aes8 aes8 | \noBreak
  aes2.( | \noBreak
  g2) r4 |
  
  bes8 bes4 bes4 aes8~ | \noBreak
  aes2~ aes8 aes8 | \noBreak
  aes2.~ | \noBreak
  aes2.~ | \noBreak
  aes4 r4 \bar "|."
}

bassBridge = \relative c {
  ees4 ees4 ees4 | \noBreak
  c2. |
  
  c2 c4 | \noBreak
  ees4( c4 ees4) |
  
  d4 ees4 d4 | \noBreak
  ees2. |
  
  d2 c4 | \noBreak
  c2. |
  
  c4 c4 c4 | \noBreak
  bes2. |
  
  bes4 bes4 bes4 | \noBreak
  ees2. |
  
  ees8 ees4 ees4. | \noBreak
  c2~ c8 c8 | \noBreak
  c2.( | \noBreak
  ees2) r4 |
  
  ees8 ees4 ees4 c8~ | \noBreak
  c2~ c8 c8 | \noBreak
  c2.~ | \noBreak
  c2.~ | \noBreak
  c4 r4 \bar "|."
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
  is the bod -- y of Christ
}

bridgeLyrics = \lyricmode {
  And as He laid down His life,
  we of -- fer this sac -- ri -- fice,
  that we might live just as He died,
  Will -- ing to pay the price,
  will -- ing to pay the price.
}