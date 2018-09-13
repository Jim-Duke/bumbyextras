\version "2.19.49"
#(use-modules (guile-user))

#(ly:set-option 'relative-includes #t)
\include "../../../LilypondTemplates/functions.ly"
\include "../../../LilypondTemplates/hymns.ly"
\include "../hymn_settings.ly"

global = {
  \key ees \major
  \time 4/4
  \tempo 4 = 110
  \aikenHeads
}

%%
%% Hymn Metadata Variables
%%

Title = "Abide With Me"
SongNumber = \abide_with_me_number
RightFirstPage = \abide_with_me_number_rhs
FirstPage = #(if RightFirstPage 1 2)

LeaderHints = \markup {
  \fontsize #-4
  \normal-text { "E" \musicglyph #"accidentals.flat" " - 4 - MI" }
}

Scripture = \markup {
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

ShowScriptureOnSheetMusic = ##f

\header {
  title = \Title
  tune = "EVENTIDE"
  meter = "10.10.10.10"
  composer = "William H. Monk (1861)"
  poet = "Henry F. Lyte (1847)"
  songNumber = \SongNumber
  lhs = #(if RightFirstPage LeaderHints SongNumber)
  rhs = #(if RightFirstPage SongNumber LeaderHints)
  copyright = "In the Public Domain"
  license = ##f
  tagline = ##f
}

SopranoVerseMusic = \relative c'' {
  g2 g4 f4 |
  ees2 bes'2 |
  c4 bes4 bes4 aes4 |
  g1 |

  g2 aes4 bes4 |
  c2 bes2 |
  aes4 f4 g4 a4 |
  bes1 |

  g2 g4 f4 |
  ees2 bes'2 |
  bes4 aes4 aes4 g4 |
  f1 |

  f2 g4 aes4 |
  g4 f4 ees4 aes4 |
  g2 f2 |
  ees1 \bar "|."
}

AltoVerseMusic = \relative c' {
  ees2 d4 d4 |
  ees2 ees2 |
  ees4 d4 ees4 f4 |
  ees1 |

  ees2 ees4 ees4 |
  ees2 ees2 |
  ees4 f4 ees4 ees4 |
  d1 |

  ees2 d4 d4 |
  ees2 ees2 |
  ees4 ees4 e4 e4 |
  f1 |

  d2 ees4 d4 |
  ees4 d4 ees4 f4 |
  ees2 d2
  ees1 \bar "|."
}

TenorVerseMusic = \relative c' {
  bes2 bes4 aes4 |
  g2 ees2 |
  ees4 bes'4 bes4 bes4 |
  bes1 |

  bes2 aes4 g4 |
  aes2 g2 |
  c4 bes4 bes4 ees,4 |
  f1 |

  g4( aes4) bes4 aes4 |
  g2 ees'4( d4) |
  c4 c4 c4 bes4 |
  aes1 |

  bes2 bes4 bes4 |
  bes4 aes4 g4 c4 |
  bes2. aes4 |
  g1 \bar "|."
}

BassVerseMusic = \relative c {
  ees2 bes4 bes4 |
  c2 g2 |
  aes4 bes4 c4 d4 |
  ees1 |

  ees4( d4) c4 bes4 |
  aes2 ees'2 |
  f4 d4 ees4 c4 |
  bes1 |

  ees2 bes4 bes4 |
  c2 g2 |
  aes4. bes8 c4 c4 |
  f1 |

  aes2 g4 f4 |
  ees4 bes4 c4 aes4 |
  bes2 bes2 |
  ees1 \bar "|."
}

AlignVerseMusic = \relative c {
  c2 c4 c4 |
  c2 c2 |
  c4 c4 c4 c4 |
  c1 |

  c2 c4 c4 |
  c2 c2 |
  c4 c4 c4 c4 |
  c1 |

  c2 c4 c4 |
  c2 c2 |
  c4 c4 c4 c4 |
  c1 |

  c2 c4 c4 |
  c4 c4 c4 c4 |
  c2 c2 |
  c1 \bar "|."
}

SheetMusicVerseBreaks = \relative c {
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

SlidesVerseBreaks = \relative c {
  \setSystemOffset \defaultTopSystemOffset
  s1 | \noBreak
  s1 | \break
  
  \setSystemOffset \defaultBottomSystemOffset
  s1 | \noBreak
  s1 | \break

  \setSystemOffset \defaultTopSystemOffset
  s1 | \noBreak
  s1 | \break
  
  \setSystemOffset \defaultBottomSystemOffset
  s1 | \noBreak
  s1 | \break

  \setSystemOffset \defaultTopSystemOffset
  s1 | \noBreak
  s1 | \break
  
  \setSystemOffset \defaultBottomSystemOffset
  s1 | \noBreak
  s1 | \break

  \setSystemOffset \defaultTopSystemOffset
  s1 | \noBreak
  s1 | \break
  
  \setSystemOffset \defaultBottomSystemOffset
  s1 | \noBreak
  s1 \bar "|."
}

VerseOne = \lyricmode {
  \set stanza = "1. "
  A -- bide with me! fast falls the e -- ven -- tide;
  The dark -- ness deep -- ens: Lord, with me a -- bide!
  When oth -- er help -- ers fail, and com -- forts flee,
  Help of the help -- less, O a -- bide with me!
}

VerseTwo = \lyricmode {
  \set stanza = "2. "
  Swift to its close ebbs out life's lit -- tle day;
  Earth's joys grow dim, its glo -- ries pass a -- way;
  Change and de -- cay in all a -- round I see;
  O Thou who chang -- est not, a -- bide with me!
}

VerseThree = \lyricmode {
  \set stanza = "3. "
  Come not in ter -- rors as the King of kings,
  But kind and good, with heal -- ing in Thy wings;
  Tears for all woes, a heart for ev' -- ry plea;
  O Friend of sin -- ners, thus a -- bide with me!
}

VerseFour = \lyricmode {
  \set stanza = "4. "
  I need Thy pres -- ence eve -- ry pass -- ing hour:
  What but Thy grace can foil the tempt -- er's pow'r?
  Who, like Thy -- self, my guide and stay can be?
  Through cloud and sun -- shine, O a -- bide with me!
}

VerseFive = \lyricmode {
  \set stanza = "5. "
  I fear no foe, with Thee at hand to bless:
  Ills have no weight, and tears no bit -- ter -- ness.
  Where is death's sting? where, grave, thy vic -- to -- ry?
  I tri -- umph still, if Thou a -- bide with me!
}

VerseSix = \lyricmode {
  \set stanza = "6. "
  Hold Thou Thy Cross be -- fore my clos -- ing eyes,
  Shine through the gloom and point me to the skies;
  Heav'n's morn -- ing breaks, and earth's vain sha -- dows flee;
  In life, in death, O Lord, a -- bide with me!
}
