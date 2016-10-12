\version "2.18.2"

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
  songNumber = "B-004"
  copyright = "Copyright (c) 1990 Ariose Music and Mountain Spring Music"
  license = "CCLI Song #443594, License #2055442"
  arranger = "Ken Young"
  scripture = \markup {
    \override #'(line-width . 60)
    \center-column {
      \vspace #4
      \abs-fontsize #24
      \italic \wordwrap-string #"How lovely on the mountains
         Are the feet of him who brings good news,
         Who announces peace
         And brings good news of happiness,
         Who announces salvation,
         And says to Zion, \"Your God reigns!\" - Isaiah 52:7"
    }
  }
  tagline = ##f
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
  How4 beau2 -- ti4 -- ful2 " "8
  the8 hands2 that4 served2 " "8
  the8 wine4 and4 the4 bread,2
  and8 the8 sons4 of4. the8 earth.4
  How2 beau2 -- ti4 -- ful2 " "8
  the8 feet2 that4 walked2 " "8
  the8 long4 dust4 -- y4 roads,2
  and8 the8 hill4 to4. the8 cross.4
}

verseTwo = \lyricmode {
  \set stanza = "2. "
  How4 beau2 -- ti4 -- ful2 " "8
  the8 heart2 that4 bled2 " "8
  that8 took4 all4 my4 sin,2
  and4 bore4 it4. in8 -- stead.4
  How2 beau2 -- ti4 -- ful2 " "8
  the8 ten2 -- der4 eyes2 " "8
  that8 choose4 to4 for4 -- give,2
  and4 ne4 -- ver4. de8 -- spise.4
}

verseThree = \lyricmode {
  \set stanza = "3. "
  How4 beau2 -- ti4 -- ful2 " "8
  the8 ra2 -- diant4 bride2 " "8
  who8 waits4 for4 the4 groom2
  with8 His8 light4 in4. her8 eyes.4
  How2 beau2 -- ti4 -- ful2 " "8
  when8 hum4. -- ble8 hearts4 give2 " "8
  the8 fruit4 of4 pure4 lives2
  so8 that8 oth4 -- ers4. may8 live.4
}

verseFour = \lyricmode {
  \set stanza = "4. "
  How4 beau2 -- ti4 -- ful2 " "8
  the8 feet2 that4 bring2 " "8
  the8 sound4 of4 good4 news,2
  and8 the8 love4 of4. the8 King.4
  How2 beau2 -- ti4 -- ful2 " "8
  the8 hands2 that4 serve2 " "8
  the8 wine4 and4 the4 bread,2
  and8 the8 sons4 of4. the8 earth.4
}

verseCommon = \lyricmode {
  How2 beau2 -- ti4 -- ful,2. " "2. " "4
  how2 beau2 -- ti4 -- ful,2. " "2. " "4
  how2 beau2 -- ti4 -- ful,2. " "2
  is8 the8 bod8 -- y4. of4 Christ1 " "2
}

bridgeLyrics = \lyricmode {
  And4 as4 He4 laid2. down2 His4 life,2.
  we4 of4 -- fer4 this2. sac2 -- ri4 -- fice,2.
  that4 we4 might4 live2. just4 as4 He4 died,2.
  Will8 -- ing4 to4. pay2 " "8 the8 price,2. " "2.
  will8 -- ing4 to4 pay2 " "4 the8 price.2. " "2. " "2
}