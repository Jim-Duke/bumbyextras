\version "2.19.49"

\include "../common.ly"

global = {
  \key ees \major
  \time 4/4
  \aikenHeads
}

title = "Abide With Me"
songNumber = \abide_with_me_number
leaderHints = \markup {
  \fontsize #-4
  \normal-text { "E" \musicglyph #"accidentals.flat" " - 4 - MI" }
}
number_on_rhs = \abide_with_me_number_rhs

#(if number_on_rhs
     (begin
      (define lhs leaderHints)
      (define rhs songNumber))
     (begin
      (define lhs songNumber)
      (define rhs leaderHints)))

\header {
  title = \title
  tune = "EVENTIDE"
  meter = "10.10.10.10"
  composer = "William H. Monk (1861)"
  poet = "Henry F. Lyte (1847)"
  songNumber = \songNumber
  lhs = \lhs
  rhs = \rhs
  copyright = "In the Public Domain"
  license = ##f
  tagline = ##f
  scripture = \markup {
    \override #'(line-width . 60)
    \center-column {
      \vspace #0.75
      \abs-fontsize #24
      \italic \wordwrap-string #"Abide with us, for it is toward evening,
         and the day is far spent. - Luke 24:29"
      \vspace #1.5
      \abs-fontsize #24 \italic #"\"O Death, where is your sting?"
      \abs-fontsize #24 \italic #"O Hades, where is your victory?\""
      \vspace #0.25
      \abs-fontsize #24 \italic \wordwrap-string #"The sting of death is sin, and the strength of sin is the law.
         But thanks be to God, who gives us the victory through our
         Lord Jesus Christ. - 1 Corinthians 15:55-57"
    }
  }
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
  s1 | \noBreak
  s1 | \noBreak
  s1 \bar "|."
}

slideMusicBreaks = \relative c {
  \setSystemOffset \defaultTopSystemOffset
  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 | \break

  \setSystemOffset \defaultBottomSystemOffset
  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 | \break

  \setSystemOffset \defaultTopSystemOffset
  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 | \break

  \setSystemOffset \defaultBottomSystemOffset
  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 \bar "|."
}

sopranoVerse = \relative c'' {
  g2 g4 f |
  ees2 bes' |
  c4 bes bes aes |
  g1 |

  g2 aes4 bes |
  c2 bes |
  aes4 f g a |
  bes1 |

  g2 g4 f |
  ees2 bes' |
  bes4 aes aes g |
  f1 |

  f2 g4 aes |
  g f ees aes |
  g2 f |
  ees1 \bar "|."
}

altoVerse = \relative c' {
  ees2 d4 d |
  ees2 ees |
  ees4 d ees f |
  ees1 |

  ees2 ees4 ees |
  ees2 ees |
  ees4 f ees ees |
  d1 |

  ees2 d4 d |
  ees2 ees |
  ees4 ees e e |
  f1 |

  d2 ees4 d |
  ees d ees f |
  ees2 d
  ees1 \bar "|."
}

tenorVerse = \relative c' {
  bes2 bes4 aes |
  g2 ees |
  ees4 bes' bes bes |
  bes1 |

  bes2 aes4 g |
  aes2 g |
  c4 bes bes ees, |
  f1 |

  g4( aes) bes aes |
  g2 ees'4( d) |
  c c c bes |
  aes1 |

  bes2 bes4 bes |
  bes aes g c |
  bes2. aes4 |
  g1 \bar "|."
}

bassVerse = \relative c {
  ees2 bes4 bes |
  c2 g |
  aes4 bes c d |
  ees1 |

  ees4( d) c bes |
  aes2 ees'2 |
  f4 d ees c |
  bes1 |

  ees2 bes4 bes |
  c2 g |
  aes4. bes8 c4 c |
  f1 |

  aes2 g4 f |
  ees bes c aes |
  bes2 bes |
  ees1 \bar "|."
}

verseOne = \lyricmode {
  \set stanza = "1. "
  A -- bide with me! fast falls the e -- ven -- tide;
  The dark -- ness deep -- ens: Lord, with me a -- bide!
  When oth -- er help -- ers fail, and com -- forts flee,
  Help of the help -- less, O a -- bide with me!
}

verseTwo = \lyricmode {
  \set stanza = "2. "
  Swift to its close ebbs out life's lit -- tle day;
  Earth's joys grow dim, its glo -- ries pass a -- way;
  Change and de -- cay in all a -- round I see;
  O Thou who chang -- est not, a -- bide with me!
}

verseThree = \lyricmode {
  \set stanza = "3. "
  Come not in ter -- rors as the King of kings,
  But kind and good, with heal -- ing in Thy wings;
  Tears for all woes, a heart for ev' -- ry plea;
  O Friend of sin -- ners, thus a -- bide with me!
}

verseFour = \lyricmode {
  \set stanza = "4. "
  I need Thy pres -- ence eve -- ry pass -- ing hour:
  What but Thy grace can foil the tempt -- er's pow'r?
  Who like Thy -- self my guide and stay can be?
  Through cloud and sun -- shine, O a -- bide with me!
}

verseFive = \lyricmode {
  \set stanza = "5. "
  I fear no foe, with Thee at hand to bless:
  Ills have no weight, and tears no bit -- ter -- ness.
  Where is death's sting? where, grave, thy vic -- to -- ry?
  I tri -- umph still, if Thou a -- bide with me!
}

verseSix = \lyricmode {
  \set stanza = "6. "
  Hold Thou Thy Cross be -- fore my clos -- ing eyes,
  Shine thru the gloom and point me to the skies;
  Heav'n's morn -- ing breaks, and earth's vain sha -- dows flee;
  In life, in death, O Lord, a -- bide with me!
}