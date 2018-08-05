\version "2.19.49"

\include "../common.ly"

global = {
  \key g \minor
  \time 4/4
  \aikenHeadsMinor
}

title = "Ah Holy Jesus"
songNumber = \ah_holy_jesus_number
leaderHints = \markup {
  \fontsize #-4
  \normal-text { "B" \musicglyph #"accidentals.flat" " (Gm) - 4 - LA" }
}
number_on_rhs = \ah_holy_jesus_number_rhs

#(if number_on_rhs
     (begin
      (define lhs leaderHints)
      (define rhs songNumber))
     (begin
      (define lhs songNumber)
      (define rhs leaderHints)))


\header {
  title = \title
  tune = "HERZLIEBSTER JESU"
  meter = "11.11.11.5"
  composer = "Johann Crüger (1640)"
  arranger = ##f
  poet = "Johann Heermann (1630)"
  translator = "Robert S. Bridges (1899)"
  songNumber = \songNumber
  lhs = \lhs
  rhs = \rhs
  copyright = "In the Public Domain"
  license = ##f
  scripture = #"“Surely He has borne our griefs And carried our sorrows;
                 Yet we esteemed Him stricken, Smitten by God, and afflicted.
                 But He was wounded for our transgressions,
                 He was bruised for our iniquities;
                 The chastisement for our peace was upon Him,
                 And by His stripes we are healed.” (Isaiah 53:4–5, NKJV)"
}

sheetMusicBreaks = \relative c {
  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 | \break
  
  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 | \break
  
  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 | \break
  
  s1 | \noBreak
  s1 \bar "|."
}

slideMusicBreaks = \relative c {
  \setSystemOffset \defaultTopSystemOffset
  s1 | \noBreak
  s1 | \break

  \setSystemOffset \defaultBottomSystemOffset
  s1 | \noBreak
  s1 | \pageBreak
  
  \setSystemOffset \defaultTopSystemOffset
  s1 | \noBreak
  s1 | \break

  \setSystemOffset \defaultBottomSystemOffset
  s1 | \noBreak
  s1 | \pageBreak
  
  \setSystemOffset \defaultTopSystemOffset
  s1 | \noBreak
  s1 | \break

  \setSystemOffset \defaultBottomSystemOffset
  s1 | \noBreak
  s1 | \pageBreak
  
  \setSystemOffset \defaultTopSystemOffset
  s1 | \noBreak
  s1 \bar "|." \pageBreak
}

sopranoVerse = \relative c'' {
  g2 g4 g |
  f2 d |
  g4 a bes bes |
  c2 a |

  a2 bes4 c |
  d2 bes |
  ees4 ees d d |
  c2 bes |

  bes2 a4 g |
  f2 d |
  f4 f g f |
  ees2 d |

  \newSpacingSection
  \override Score.SpacingSpanner.spacing-increment = #2

  d'2 c4 bes |
  a2 g \bar "|."
}

altoVerse = \relative c' {
  d2 ees4 ees4 |
  c2 d |
  d4 d g f |
  ees2 d |

  d2 d4 f |
  f2 ees |
  ees4 ees f f |
  f2 d |

  g2 f4 ees |
  d2 bes |
  d4 c d d |
  c2 bes |

  d2 ees4 d |
  d4.( c8) bes2 \bar "|."
}

tenorVerse = \relative c' {
  bes2 bes4 c |
  a2 bes |
  bes4 a g bes |
  g2 fis |

  fis2 g4 a |
  bes2 g |
  g4 g8( a) bes4 bes |
  bes4( a) bes2 |

  d2 d4 bes |
  bes2 f |
  f4 f bes bes |
  g2 g |

  f4( bes) g g |
  g( fis) g2 \bar "|."
}

bassVerse = \relative c' {
  g2 ees4 c |
  f2 bes, |
  g'4 f ees d |
  c2 d |

  d2 d4 c |
  bes4( d) ees2 |
  c4 c d4.( ees8) |
  f2 bes, |

  g2 d'4 ees |
  bes2 bes |
  bes4 a g bes |
  c2 g |

  bes2 c4 d |
  d2 g,2 \bar "|."
}

verseOne = \lyricmode {
  \set stanza = "1. "
  Ah, ho -- ly Jes -- us, how hast Thou of -- fend -- ed,
  That mor -- tal judg -- ment hath on Thee de -- scend -- ed?
  By foes de -- rid -- ed, by Thine own re -- ject -- ed,
  O most af -- flict -- ed.
}

verseTwo = \lyricmode {
  \set stanza = "2. "
  Who was the guilt -- y? Who brought this up -- on Thee?
  It is my trea -- son, Lord, that hath un -- done Thee.
  'Twas I, Lord Je -- sus. I it was de -- nied Thee;
  I cru -- ci -- fied Thee.
}

verseThree = \lyricmode {
  \set stanza = "3. "
  Lo, the Good Shep -- herd for the sheep is of -- fered;
  The slave hath sin -- ned, and the Son hath suf -- fered.
  For my a -- tone -- ment, though I noth -- ing heed -- ed,
  God in -- ter -- ced -- ed.
}

verseFour = \lyricmode {
  \set stanza = "4. "
  For me, kind Je -- sus, was Thy in -- car -- na -- tion,
  Thy mor -- tal sor -- row, and Thy life's ob -- la -- tion;
  Thy death of an -- guish and Thy bit -- ter pas -- sion,
  For my sal -- va -- tion.
}

verseFive = \lyricmode {
  \set stanza = "5. "
  There -- fore, dear Je -- sus, since I can -- not pay Thee,
  I do a -- dore Thee, and will ev -- er pray Thee.
  Think on Thy pit -- y and Thy love un -- swerv -- ing,
  Not my de -- serv -- ing.
}
