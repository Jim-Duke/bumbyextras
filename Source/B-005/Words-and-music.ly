\version "2.18.2"

global = {
  \key ees \major
  \time 4/4
  \aikenHeads
}

songTitle = #"Abide with Me"

\header {
  title = \songTitle
  tune = "EVENTIDE"
  meter = "10.10.10.10"
  composer = "William H. Monk (1861)"
  poet = "Henry F. Lyte (1847)"
  songNumber = "B-005"
  copyright = ##f
  license = ##f
  tagline = ##f
}

sopranoVerse = \relative c'' {
  % Phrase 1
  g2 g4 f \noBreak
  ees2 bes' \noBreak
  c4 bes bes aes \noBreak
  g1 \bar "|"

  % Phrase 2
  g2 aes4 bes \noBreak
  c2 bes \noBreak
  aes4 f g a \noBreak
  bes1 \break

  % Phrase 3
  g2 g4 f \noBreak
  ees2 bes' \noBreak
  bes4 aes aes g \noBreak
  f1 \bar "|"

  % Phrase 4
  f2 g4 aes \noBreak
  g f ees aes \noBreak
  g2 f \noBreak
  ees1 \bar "|."
}

altoVerse = \relative c' {
  % Phrase 1
  ees2 d4 d \noBreak
  ees2 ees \noBreak
  ees4 d ees f \noBreak
  ees1 \bar "|"

  % Phrase 2
  ees2 ees4 ees \noBreak
  ees2 ees \noBreak
  ees4 f ees ees \noBreak
  d1 \break

  % Phrase 3
  ees2 d4 d \noBreak
  ees2 ees \noBreak
  ees4 ees e e \noBreak
  f1 \bar "|"

  %Phrase 4
  d2 ees4 d \noBreak
  ees d ees f \noBreak
  ees2 d
  ees1 \bar "|."
}

tenorVerse = \relative c' {
  % Phrase 1
  bes2 bes4 aes \noBreak
  g2 ees \noBreak
  ees4 bes' bes bes \noBreak
  bes1 \bar "|"

  % Phrase 2
  bes2 aes4 g \noBreak
  aes2 g \noBreak
  c4 bes bes ees, \noBreak
  f1 \break

  % Phrase 3
  g4( aes) bes aes \noBreak
  g2 ees'4( d) \noBreak
  c c c bes \noBreak
  aes1 \bar "|"

  % Phrase 4
  bes2 bes4 bes \noBreak
  bes aes g c \noBreak
  bes2. aes4 \noBreak
  g1 \bar "|."
}

bassVerse = \relative c {
  % Phrase 1
  ees2 bes4 bes \noBreak
  c2 g \noBreak
  aes4 bes c d \noBreak
  ees1 \bar "|"

  % Phrase 2
  ees4( d) c bes \noBreak
  aes2 ees'2 \noBreak
  f4 d ees c \noBreak
  bes1 \break

  % Phrase 3
  ees2 bes4 bes \noBreak
  c2 g \noBreak
  aes4. bes8 c4 c \noBreak
  f1 \bar "|"

  % Phrase 4
  aes2 g4 f \noBreak
  ees bes c aes \noBreak
  bes2 bes \noBreak
  ees1 \bar "|."
}

verseOne = \lyricmode {
  \set stanza = "1. "
  A2 -- bide4 with4 me;2 fast2 falls4 the4 e4 -- ven4 -- tide;1
  The2 dark4 -- ness4 deep2 -- ens;2 Lord4 with4 me4 a4 -- bide.1
  When2 oth4 -- er4 help2 -- ers2 fail4 and4 com4 -- forts4 flee,1
  Help2 of4 the4 help4 -- less,4 O4 a4 -- bide2 with2 me.1
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