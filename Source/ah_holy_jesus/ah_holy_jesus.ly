\version "2.19.49"
#(use-modules (guile-user))

#(ly:set-option 'relative-includes #t)
\include "../../../LilypondTemplates/functions.ly"
\include "../../../LilypondTemplates/midi.ly"
\include "../../../LilypondTemplates/hymns.ly"
\include "../hymn_settings.ly"

%%
%% Tweaks
%%

SheetMusicRaggedLast = ##t

%%
%% Music Variables
%%

Key = \key g \minor
MajorKey = ##f

Time = {
  \time 4/4
  \tempo 4=85
}

Title = "Ah Holy Jesus"
RightFirstPage = \ah_holy_jesus_number_rhs
SongNumber = \ah_holy_jesus_number

LeaderHints = \markup {
  \fontsize #-4
  \normal-text { "B" \musicglyph #"accidentals.flat" " (Gm) - 4 - LA" }
}

FirstPage = #(if ah_holy_jesus_number_rhs 1 2)

Scripture = "“But He was wounded for our transgressions,
              He was bruised for our iniquities;
              The chastisement for our peace was upon Him,
              And by His stripes we are healed.” (Isaiah 53:5, NKJV)"

ShowScriptureOnSheetMusic = ##t

\header {
  title = \Title
  tune = "HERZLIEBSTER JESU"
  meter = "11.11.11.5"
  composer = "Johann Crüger (1640)"
  arranger = ##f
  poet = "Johann Heermann (1630)"
  translator = "Robert S. Bridges (1899)"
  songNumber = \ah_holy_jesus_number
  lhs = #(if RightFirstPage LeaderHints ah_holy_jesus_number)
  rhs = #(if RightFirstPage ah_holy_jesus_number LeaderHints)
  copyright = "In the Public Domain"
  license = ##f
}

SopranoVerseMusic = \relative c'' {
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

  d'2 c4 bes |
  a2 g \bar "|."
}

AltoVerseMusic = \relative c' {
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

TenorVerseMusic = \relative c' {
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

BassVerseMusic = \relative c' {
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

AlignVerseMusic = \relative c {
  c2 c4 c4 |
  c2 c2 |
  c4 c4 c4 c4 |
  c2 c2 |

  c2 c4 c4 |
  c2 c2 |
  c4 c4 c4 c4 |
  c2 bes |

  c2 c4 c4 |
  c2 c2 |
  c4 c4 c4 c4 |
  c2 c2 |

  \newSpacingSection
  \override Score.SpacingSpanner.spacing-increment = #3.8

  c2 c4 c4 |
  c2 c2 \bar "|."
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
  s1 \bar "|." \pageBreak
}

VerseOne = \lyricmode {
  \set stanza = "1. "
  Ah, ho -- ly Jes -- us, how hast Thou of -- fend -- ed,
  That mor -- tal judg -- ment hath on Thee de -- scend -- ed?
  By foes de -- rid -- ed, by Thine own re -- ject -- ed,
  O most af -- flict -- ed.
}

VerseTwo = \lyricmode {
  \set stanza = "2. "
  Who was the guilt -- y? Who brought this up -- on Thee?
  It is my trea -- son, Lord, that hath un -- done Thee.
  'Twas I, Lord Je -- sus. I it was de -- nied Thee;
  I cru -- ci -- fied Thee.
}

VerseThree = \lyricmode {
  \set stanza = "3. "
  Lo, the Good Shep -- herd for the sheep is of -- fered;
  The slave hath sin -- ned, and the Son hath suf -- fered.
  For my a -- tone -- ment, though I noth -- ing heed -- ed,
  God in -- ter -- ced -- ed.
}

VerseFour = \lyricmode {
  \set stanza = "4. "
  For me, kind Je -- sus, was Thy in -- car -- na -- tion,
  Thy mor -- tal sor -- row, and Thy life's ob -- la -- tion;
  Thy death of an -- guish and Thy bit -- ter pas -- sion,
  For my sal -- va -- tion.
}

VerseFive = \lyricmode {
  \set stanza = "5. "
  There -- fore, dear Je -- sus, since I can -- not pay Thee,
  I do a -- dore Thee, and will ev -- er pray Thee.
  Think on Thy pit -- y and Thy love un -- swerv -- ing,
  Not my de -- serv -- ing.
}

\include "../../../LilypondTemplates/bumby-hymnal-template.ly"
