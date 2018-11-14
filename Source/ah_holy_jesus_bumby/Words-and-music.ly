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

global = {
  \key g \minor
  \time 4/4
  \tempo 4 = 85
}

MajorKey = ##f

%%
%% Hymn Metadata Variables
%%

Title = "Ah Holy Jesus"
SongNumber = \ah_holy_jesus_bumby_number
RightFirstPage = \ah_holy_jesus_bumby_number_rhs
FirstPage = #(if RightFirstPage 1 2)

LeaderHints = \markup {
  \fontsize #-4
  \normal-text { "B" \musicglyph #"accidentals.flat" " (Gm) - 4 - LA" }
}

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
  songNumber = \ah_holy_jesus_bumby_number
  lhs = #(if RightFirstPage LeaderHints ah_holy_jesus_bumby_number)
  rhs = #(if RightFirstPage ah_holy_jesus_bumby_number LeaderHints)
  copyright = "In the Public Domain"
  license = ##f
}

SopranoVerseMusic = \relative c'' {
  g2 g4 g4 |
  f2 d2 |
  g4 a4 bes4 bes4 |
  c2 a2 |

  a2 bes4 c4 |
  d2 bes2 |
  ees4 ees4 d4 d4 |
  c2 bes2 |

  bes2 a4 g4 |
  f2 d2 |
  f4 f4 g4 f4 |
  ees2 d2 |

  \newSpacingSection
  \override Score.SpacingSpanner.spacing-increment = #3.8
  \override Score.SpacingSpanner.shortest-duration-space = #2.5

  d'2 c4 bes4 |
  a2 g2 \bar "|."
}

AltoVerseMusic = \relative c' {
  d2 ees4 ees4 |
  c2 d2 |
  d4 d4 g4 f4 |
  ees2 d2 |

  d2 d4 f4 |
  f2 ees2 |
  ees4 ees4 f4 f4 |
  f2 d2 |

  g2 f4 ees4 |
  d2 bes2 |
  d4 c4 d4 d4 |
  c2 bes2 |

  d2 ees4 d4 |
  d4.( c8) bes2 \bar "|."
}

TenorVerseMusic = \relative c' {
  bes2 bes4 c4 |
  a2 bes2 |
  bes4 a4 g4 bes4 |
  g2 fis2 |

  fis2 g4 a4 |
  bes2 g2 |
  g4 g8( a8) bes4 bes4 |
  bes4( a) bes2 |

  d2 d4 bes4 |
  bes2 f2 |
  f4 f4 bes4 bes4 |
  g2 g2 |

  f4( bes4) g4 g4 |
  g4( fis4) g2 \bar "|."
}

BassVerseMusic = \relative c' {
  g2 ees4 c4 |
  f2 bes,2 |
  g'4 f4 ees4 d4 |
  c2 d2 |

  d2 d4 c4 |
  bes4( d4) ees2 |
  c4 c4 d4.( ees8) |
  f2 bes, |

  g2 d'4 ees4 |
  bes2 bes2 |
  bes4 a4 g4 bes4 |
  c2 g2 |

  bes2 c4 d4 |
  d2 g,2 \bar "|."
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
