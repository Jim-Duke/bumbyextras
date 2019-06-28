\version "2.19.49"
#(use-modules (guile-user))

#(ly:set-option 'relative-includes #t)
\include "../../../../LilypondTemplates/functions.ly"
\include "../../../../LilypondTemplates/hymns.ly"
\include "../hymn_settings.ly"

global = {
  \key f \major
  \time 4/4
  \tempo 2 = 52
}

MajorKey = ##t

%%
%% Hymn Metadata Variables
%%

Title = "Not I, but Christ"
SongNumber = \not_i_but_christ_phss_number
RightFirstPage = \not_i_but_christ_phss_number_rhs
FirstPage = #(if RightFirstPage 1 2)

LeaderHints = \markup {
  \fontsize #-4
  \normal-text { "F - 4 - DO" }
}

Scripture = "TBD"

ShowScriptureOnSheetMusic = ##f

\header {
  title = \Title
  tune = "STAFFORD"
  meter = "11.10.11.10"
  composer = "Christopher C. Stafford (1964)"
  poet = "Albert B. Simpson (1896)"
  songNumber = \SongNumber
  lhs = #(if RightFirstPage LeaderHints SongNumber)
  rhs = #(if RightFirstPage SongNumber LeaderHints)
  copyright = ""
  license = ##f
  tagline = ##f
}

AlignVerseMusic = {
  c2 c4. c8 |
  c2. c4 |
  c4 c4 c4 c4 |
  c2 c4 r4 |

  c2 c4. c8 |
  c2. c4 |
  c4 c4 c4 c4 |
  c2. r4 |

  c2 c4. c8 |
  c2. c4 |
  c4 c4 c4 c4 |
  c2 c4 r4 |

  c2 c4. c8 |
  c4 c4 c4 c4 |
  c2 c2 |
  c2. r4 \bar "|."
}

SopranoVerseMusic = \relative c' {
  f2 f4. g8 |
  a2. bes4 |
  a4 g4 f4 g4 |
  f2 e4 r4 |

  g2 g4. a8 |
  bes2. a8[ g8] |
  f4 f4 g4 g4 |
  a2. r4 |

  f2 f4. g8 |
  a2. bes4 |
  a4 g4 f4 g4 |
  f2 e4 r4 |

  g2 a4. bes8 |
  a4 g4 f4 g4 |
  f2 e2 |
  f2. r4 \bar "|."
}

AltoVerseMusic = \relative c' {
  c2 d4. e8 |
  f2. f4 |
  f4 e4 d4 d4 |
  c2 c4 r4 |

  d2 d4. fis8 |
  g2. f8[ e8] |
  d4 d4 e4 e4 |
  f2. r4 |

  c2 d4. e8 |
  f2. f4 |
  f4 e4 d4 d4 |
  c2 c4 r4 |

  d2 fis4. g8 |
  f4 e4 d4 d4 |
  c2 c2 |
  c2. r4 \bar "|."
}

TenorVerseMusic = \relative c' {
  a2 a4. c8 |
  c2. d4 |
  c4 bes4 a4 bes4 |
  a2 g4 r4 |

  bes2 bes4. c8 |
  d2. c8[ bes8] |
  a4 a4 c4 c4 |
  c2. r4 |

  a2 a4. c8 |
  c2. d4 |
  c4 bes4 a4 bes4 |
  a2 g4 r4 |

  bes2 c4. d8 |
  c4 bes4 a4 bes4 |
  a2 g4( bes4) |
  a2. r4 \bar "|."
}

BassVerseMusic = \relative c {
  f2 d4. c8 |
  f2. f4 |
  f4 c4 d4 bes4 |
  c2 c4 r4 |

  bes2 bes4. a8 |
  g2. c4 |
  d4 d4 c4 c4 |
  f2. r4 |

  f2 d4. c8 |
  f2. f4 |
  f4 c4 d4 bes4 |
  c2 c4 r4 |

  bes'2 a4. g8 |
  c4 c,4 d4 bes4 |
  c2 c2 |
  f2. r4 \bar "|."
}

PartRestMusic = {
  r1 |
  r1 |
  r1 |
  r1 |

  r1 |
  r1 |
  r1 |
  r1 |

  r1 |
  r1 |
  r1 |
  r1 |

  r1 |
  r1 |
  r1 |
  r1 |
}

SheetMusicVerseBreaks = \relative c {
  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 | \break \noPageBreak

  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 | \break \noPageBreak

  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 | \break \noPageBreak

  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 \bar "|."
}

SlidesVerseBreaks = \relative c {
  \setSystemOffset \defaultTopSystemOffset
  s1 | \noBreak
  s2. \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s4 | \noBreak
  s1 | \noBreak
  s2. \bar "" \pageBreak

  \setSystemOffset \defaultTopSystemOffset
  s4 | \noBreak
  s1 | \noBreak
  s2. s8 \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s8 | \noBreak
  s1 | \noBreak
  s1 \bar "|."
}

VerseOne = \lyricmode {
  \set stanza = "1. "
  Not I, but Christ, be hon -- ored, loved, ex -- alt -- ed;
  Not I, but Christ, be seen, be known, be heard;
  Not I, but Christ, in eve -- ry look and ac -- tion,
  Not I, but Christ, in eve -- ry thought and word.
}

VerseTwo = \lyricmode {
  \set stanza = "2. "
  Not I, but Christ, to gen -- tly soothe in sor -- row,
  Not I, but Christ, to wipe the fall -- ing tear,
  Not I, but Christ, to lift the wea -- ry bur -- den,
  Not I, but Christ, to hush a -- way all fear.
}

VerseThree = \lyricmode {
  \set stanza = "3. "
  Not I, but Christ, my eve -- ry need sup -- ply -- ing,
  Not I, but Christ, my strength and health to be,
  Not I, but Christ, for bod -- y, soul, and spir -- it,
  Christ, on -- ly Christ, here and e -- ter -- nal -- ly.
}
