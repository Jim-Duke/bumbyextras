\version "2.18.2"

global = {
  \key ees \major
  \time 3/4
  \aikenHeads
}

\header {
  title = "How Beautiful"
  tune = "How Beautiful"
  meter = "10.10.10.10"
  composer = "William H. Monk (1861)"
  poet = "Henry F. Lyte (1847)"
  songNumber = "B-005"
  copyright = ##f
  license = ##f
  tagline = ##f
}

sopranoVerse = \relative c' {
  % Phrase 1
  \partial 4 ees4 \noBreak
  ees2 bes'4 \noBreak
  bes2~ bes8 \bar ""
  
  bes8 | \noBreak
  c4.( bes8) aes8 bes8 | \noBreak
  bes2 r8 \bar ""
  
  ees,8 | \noBreak
  aes4 bes4 c4 | \noBreak
  bes2 \bar ""
  
  ees,8 f8 | \noBreak
  g4 f4. ees8 | \noBreak
  f4 \bar "" \break
  
  g4.( f8) | \noBreak
  ees2 bes'4 | \noBreak
  bes2~ bes8 \bar ""
  
  bes8 | \noBreak
  c4.( bes8) aes8 bes8 | \noBreak
  bes2 r8 \bar ""
  
  ees,8 | \noBreak
  aes4 bes4 c4 | \noBreak
  bes2 \bar ""
  
  ees,8 f8 | \noBreak
  g4 f4. ees8 | \noBreak
  f4 \bar ""
  
  g4.( f8) | \noBreak
  ees2 bes'4 | \noBreak
  bes2.~ | \noBreak
  bes2.~ | \noBreak
  bes8 r8 \bar ""
  
  
  g4.( f8) | \noBreak
  ees2 bes'4 | \noBreak
  bes2.~ | \noBreak
  bes2.~ | \noBreak
  bes8 r8 \bar ""
  
  
  g4.( f8) | \noBreak
  ees2 bes'4 | \noBreak
  bes2.~ | \noBreak
  bes4 r4 \bar ""
  
  ees,8 f8 | \noBreak
  g8 f4. ees4 | \noBreak
  ees2.~ | \noBreak
  ees4 r4 \bar "|."
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
  d4 \bar ""
  
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
  d4 \bar ""
  
  d2 | \noBreak
  ees2 ees4 | \noBreak
  ees2.~( | \noBreak
  ees2. | \noBreak
  f8) r8 \bar ""
  
  d2 | \noBreak
  ees2 ees4 | \noBreak
  ees2.~( | \noBreak
  ees2. | \noBreak
  f8) r8 \bar ""
  
  d2 | \noBreak
  ees2 ees4 | \noBreak
  f2.( | \noBreak
  ees4) r4 \bar ""
  
  ees8 ees8 | \noBreak
  ees8 d4. c4 | \noBreak
  bes2.~ | \noBreak
  bes4 r4 \bar "|."
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
  bes4 \bar ""
  
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
  bes4 \bar ""
  
  bes2 | \noBreak
  aes2 aes4 | \noBreak
  g2.( | \noBreak
  aes2. | \noBreak
  bes8) r8 \bar ""
  
  bes2 | \noBreak
  aes2 aes4 | \noBreak
  f2.( | \noBreak
  aes2. | \noBreak
  g8) r8
  
  bes2 | \noBreak
  aes2 aes4 | \noBreak
  aes2.~ | \noBreak
  aes4 r4 \bar ""
  
  aes8 aes8 | \noBreak
  bes8 bes4. bes4 | \noBreak
  g2.~ | \noBreak
  g4 r4 \bar "|."
}

bassVerse = \relative c {
  \partial 4 ees4 | \noBreak
  ees2 ees4 | \noBreak
  bes2~ bes8 \bar ""
  
  bes8 | \noBreak
  aes4.( bes8) c8( d8) | \noBreak
  ees2 r8 \bar ""
  
  ees8 | \noBreak
  ees4 ees4 ees4 | \noBreak
  ees2 \bar ""
  
  ees8 ees8 | \noBreak
  c4 c4. c8 | \noBreak
  bes4 \bar ""
  
  bes2 | \noBreak
  ees2 ees4 | \noBreak
  bes2~ bes8 \bar ""
  
  bes8 | \noBreak
  aes4.( bes8) c8( d8) | \noBreak
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
  ees8) r8 \bar ""
  
  bes2 | \noBreak
  c2 c4 | \noBreak
  bes2.( | \noBreak
  c2. | \noBreak
  ees8) r8 \bar ""
  
  bes2 | \noBreak
  c2 c4 | \noBreak
  bes2.( | \noBreak
  c4) r4 \bar ""
  
  c8 c8 | \noBreak
  bes8 bes4. bes4 | \noBreak
  ees2.~ | \noBreak
  ees4 r8 \bar "|."
}

verseOne = \lyricmode {
  \set stanza = "1. "
  How4 beau2 -- ti4 -- ful2 _
  the8 hands2 that4 served2 \skip 8
  the8 wine4 and4 the4 bread2
  and8 the8 sons4 of4. the8 earth4
  How2 beau2 -- ti4 -- ful2 _8
  the8 feet2 that4 walked2 \skip 8
  the8 long4 dust4 -- y4 roads2
  and8 the8 hill4 to4. the8 cross4
  How2 beau2 -- ti4 -- ful,2. _2. _8
  How2 beau2 -- ti4 -- ful,2. _2. _8
  How2 beau2 -- ti4 -- ful,2. _4 \skip 4
  is8 the8 bod8 -- y4. of4 Christ2. _4 \skip 4
}

verseTwo = \lyricmode {
  \set stanza = "2. "
  Swift2 to4 its4 close2 ebbs2 out4 life's4 lit4 -- tle4 day;1
  Earth's2 joys4 grow dim,2 Its2 glo4 -- ries4 pass4 a4 -- way;1
  Change2 and4 de4 -- cay2 in2 all4 a4 -- round4 I4 see;1
  O2 Thou4 who4 chang4 -- est4 not,4 a4 -- bide2 with2 me!1
}

verseThree = \lyricmode {
  \set stanza = "3. "
  I2 need4 thy4 pres2 -- ence2 eve4 -- ry4 pass4 -- ing4 hour.1
  What2 but4 Thy4 grace2 can2 foil4 the4 tempt4 -- er's4 pow'r?1
  Who2 like4 Thy4 -- self2 my2 guide4 and4 stay4 can4 be?1
  Through2 cloud4 and4 sun4 -- shine,4 Lord,4 a4 -- bide2 with2 me.1
}

verseFour = \lyricmode {
  \set stanza = "4. "
  I2 fear4 no4 foe,2 with2 Thee4 at4 hand4 to4 bless;1
  Ills2 have4 no4 weight,2 and2 tears4 no4 bit4 -- ter4 -- ness;1
  Where2 is4 death's4 sting?2 Where,2 grave,4 thy4 vic4 -- to4 -- ry?1
  I2 tri4 -- umph4 still,4 if4 Thou4 a4 -- bide2 with2 me.1
}

verseFive = \lyricmode {
  \set stanza = "5. "
  Hold2 Thou4 Thy4 cross2 be2 -- fore4 my4 clos4 -- ing4 eyes;1
  Shine2 thru4 the4 gloom2 and2 point4 me4 to4 the4 skies;1
  Heav'n's2 morn4 -- ing4 breaks,2 and2 earth's4 vain4 sha4 -- dows4 flee;1
  In2 life,4 in4 death,4 O4 Lord,4 a4 -- bide2 with2 me.1
}