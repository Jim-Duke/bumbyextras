\version "2.19.49"
#(use-modules (guile-user))

#(ly:set-option 'relative-includes #t)
\include "../../../../LilypondTemplates/functions.ly"
\include "../../../../LilypondTemplates/hymns.ly"
\include "../hymn_settings.ly"

global = {
  \key f \major
  \time 3/4
  \tempo 4 = 112
}

MajorKey = ##t

%%
%% Hymn Metadata Variables
%%

Title = "Son of God, Eternal Savior"
SongNumber = \son_of_god_eternal_savior_phss_number
RightFirstPage = \son_of_god_eternal_savior_phss_number_rhs
FirstPage = #(if RightFirstPage 1 2)

LeaderHints = \markup {
  \fontsize #-4
  \normal-text { "F - 3 - DO" }
}

Scripture = "TBD"

ShowScriptureOnSheetMusic = ##f

\header {
  title = \Title
  tune = "HYFRYDOL"
  meter = "8.7.8.7.D"
  composer = "Rowland H. Prichard (1830), composite arr."
  poet = "Somerset C. Lowry (1894)"
  songNumber = \SongNumber
  lhs = #(if RightFirstPage LeaderHints SongNumber)
  rhs = #(if RightFirstPage SongNumber LeaderHints)
  copyright = "Public Domain"
  license = ##f
  tagline = ##f
}

AlignVerseMusic = {
  c2 c4 |
  c2 c4 |
  c2 c4 |
  c2 c4 |
  c2 c4 |
  c2 c4 |
  c2 c4 |
  c2. |

  c2 c4 |
  c2 c4 |
  c2 c4 |
  c2 c4 |
  c2 c4 |
  c2 c4 |
  c2 c4 |
  c2. |

  c2 c4 |
  c2 c4 |
  c2 c4 |
  c2 c4 |
  c2 c4 |
  c2 c4 |
  c2 c4 |
  c2. |

  c2 c4 |
  c2 c4 |
  c2 c4 |
  c2 c4 |
  c2 c4 |
  c2 c4 |
  c2 c4 |
  c2. \bar "|."
}

SopranoVerseMusic = \relative c' {
  f2 g4 |
  f4.( g8) a4 |
  bes2 a4 |
  g4( f4) g4 |
  c2 bes4 |
  a2 a4 |
  g4( f4) g4 |
  f2. |

  f2 g4 |
  f4.( g8) a4 |
  bes2 a4 |
  g4( f4) g4 |
  c2 bes4 |
  a2 a4 |
  g4( f4) g4 |
  f2. |

  c'2 c4 |
  c4( bes4) a4 |
  bes2 bes4 |
  bes4( a4) g4 |
  a2 a4 |
  a4( bes4) c4 |
  c4( bes4) a4 |
  g2. |

  c4( a4) c4 |
  bes4( g4) bes4 |
  a4( f4) a4 |
  g8([ a8] bes8[ a8]) g4 |
  c2 c4 |
  d4( c4) bes4 |
  a2 g4 |
  f2. \bar "|."
}

AltoVerseMusic = \relative c' {
  c2 e4 |
  f2 f4 |
  f4( g4) f4 |
  e4( d4) e4 |
  f4( c4) d8[ e8] |
  f2 f8[ e8] |
  d2 e4 |
  f2. |

  c2 e4 |
  f2 f4 |
  f4( g4) f4 |
  e4( d4) e4 |
  f4( c4) d8[ e8] |
  f2 f8[ e8] |
  d2 e4 |
  f2. |

  e2 e4 |
  f2 f4 |
  f4( e4) d4 |
  e2 e4 |
  f2 f4 |
  f4( g4) a4 |
  a4( g4) f4 |
  f2( e4) |

  f2 f4 |
  g2 g4 |
  f2 f4 |
  e8[( f8] g8[ f8]) e4 |
  f2 ees4 |
  d2 f4 |
  f2 e4 |
  c2. \bar "|."
}

TenorVerseMusic = \relative c' {
  a2 c4 |
  a4.( bes8) c4 |
  d4( c4) c4 |
  c4( a4) c4 |
  c2 c4 |
  c2 c4 |
  bes4( a4) c4 |
  a2. |

  a2 c4 |
  a4.( bes8) c4 |
  d4( c4) c4 |
  c4( a4) c4 |
  c2 c4 |
  c2 c4 |
  bes4( a4) c4 |
  a2. |

  a2 a4 |
  a4( g4) f4 |
  g2 g4 |
  g2 c4 |
  c2 c4 |
  d2 c4 |
  d2 c4 |
  c2. |

  a4( c4) d4 |
  d2 c4 |
  c4( a4) c4 |
  c2 bes4 |
  a2 a4 |
  bes2 d4 |
  c2 bes4 |
  a2. \bar "|."
}

BassVerseMusic = \relative c {
  f2 c4 |
  f2 f4 |
  d4( e4) f4 |
  c4( d4) c4 |
  a'2 g4 |
  f2 a,4 |
  bes4( d4) c4 |
  f2. |

  f2 c4 |
  f2 f4 |
  d4( e4) f4 |
  c4( d4) c4 |
  a'2 g4 |
  f2 a,4 |
  bes4( d4) c4 |
  f2. |

  a2 a4 |
  d,2 d4 |
  g2 g4 |
  c,2 c4 |
  f2 e4 |
  d2 a4 |
  g2 bes4 |
  c2. |

  f2 f4 |
  f2 e4 |
  f2 f4 |
  c2 c4 |
  f2 f4 |
  bes,2 bes4 |
  c2 c4 |
  <f f,>2. \bar "|."
}

SheetMusicVerseBreaks = \relative c {
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \break \noPageBreak

  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \break \noPageBreak

  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \break \noPageBreak

  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. \bar "|."
}

SlidesVerseBreaks = \relative c {
  \setSystemOffset \defaultTopSystemOffset
  \setSystemOffset \defaultBottomSystemOffset
}

VerseOne = \lyricmode {
  \set stanza = "1. "
  Son of God, e -- ter -- nal Sav -- ior, Source of life and truth and grace,
  Son of Man, whose birth in -- car -- nate Hal -- lows all our hu -- man race,
  You, our Head, en -- throned in glo -- ry, For the church will ev -- er plead.
  Fill us with Your love and pit -- y, Heal our wrongs and help our need.
}

VerseTwo = \lyricmode {
  \set stanza = "2. "
  Lord, as You have lived for oth -- ers, So may we for oth -- ers live;
  Free -- ly have Your gifts been grant -- ed, Free -- ly may Your serv -- ants give.
  Is there want, or pain, or sor -- row?  Make us all the bur -- den share.
  Are there spir -- its crushed and bro -- ken? Teach us, Lord, to soothe their care.
}

VerseThree = \lyricmode {
  \set stanza = "3. "
  Bind us all as one to -- geth -- er In Your church -- 's sa -- cred fold,
  Weak and health -- y, poor and wealth -- y, Sad and joy -- ful, young and old.
  As You pray and as You will it That Your peo -- ple should be one
  Grant our hope to be u -- nit -- ed, Here on earth Your will be done.
}
