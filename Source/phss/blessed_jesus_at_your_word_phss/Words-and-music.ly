\version "2.19.49"
#(use-modules (guile-user))

#(ly:set-option 'relative-includes #t)
\include "../../../../LilypondTemplates/functions.ly"
\include "../../../../LilypondTemplates/hymns.ly"
\include "../hymn_settings.ly"

global = {
  \key g \major
  \time 2/4
  \tempo 4 = 76
}

MajorKey = ##t

%%
%% Hymn Metadata Variables
%%

Title = "Blessed Jesus, at Your Word"
SongNumber = \blessed_jesus_at_your_word_phss_number
RightFirstPage = \blessed_jesus_at_your_word_phss_number_rhs
FirstPage = #(if RightFirstPage 1 2)

LeaderHints = \markup {
  \fontsize #-4
  \normal-text { "G - 2 - MI" }
}

Scripture = "TBD"

ShowScriptureOnSheetMusic = ##f

\header {
  title = \Title
  tune = "LIEBSTER JESU"
  meter = "7.8.7.8.8.8"
  composer = "Johann R. Ahle (1664), alt."
  poet = "Tobias Clausnitzer (1663)"
  translator = "Catherine Winkworth (1858), alt."
  songNumber = \SongNumber
  lhs = #(if RightFirstPage LeaderHints SongNumber)
  rhs = #(if RightFirstPage SongNumber LeaderHints)
  copyright = "Public Domain"
  license = ##f
  tagline = ##f
}

AlignVerseMusic = {
  c4 c4 |
  c4 c4 |
  c4 c4 |
  c2 |
  c4. c8 |
  c4 c4 |
  c4 c4 |
  c2 |
  c2 |

  c4 c4 |
  c4 c4 |
  c4 c4 |
  c2 |
  c4. c8 |
  c4 c4 |
  c4 c4 |
  c2 |
  c2 |

  c4. c8 |
  c4 c4 |
  c4 c4 |
  c4 c4 |
  c4. c8 |
  c4 c4 |
  c4 c4 |
  c2 |
  c2 \bar "|."
}

SopranoVerseMusic = \relative c'' {
  b4 g4 |
  a4 d8[ c8] |
  b4 a8[ g8] |
  a2 |
  g4. fis8 |
  e8[ fis8] g4 |
  a4 b4 |
  a2 |
  g2 |

  b4 g4 |
  a4 d8[ c8] |
  b4 a8[ g8] |
  a2 |
  g4. fis8 |
  e8[ fis8] g4 |
  a4 b4 |
  a2 |
  g2 |

  d4. d8 |
  e4 fis4 |
  g4 a8[ g8] |
  fis4 d4 |
  g4. g8 |
  a4 b4 |
  c4 b4 |
  a2 |
  g2 \bar "|."
}

AltoVerseMusic = \relative c' {
  d4 d4 |
  d4 d4 |
  d4 cis4 |
  d2 |
  b4 b4 |
  e4 d4 |
  d4 d4 |
  d4.( c8) |
  b2 |

  d4 d4 |
  d4 d4 |
  d4 cis4 |
  d2 |
  b4 b4 |
  e4 d4 |
  d4 d4 |
  d4.( c8) |
  b2 |

  d4. d8 |
  b4 d4 |
  d4 e4 |
  d4 d4 |
  b4 b4 |
  d4 d4 |
  e4 d4 |
  e4( d8[ c8]) |
  b2 \bar "|."
}

TenorVerseMusic = \relative c' {
  g8[ a8] b4 |
  a4 a4 |
  g4 g4 |
  g4( fis4) |
  g4 g4 |
  g4 g4 |
  g8[ fis8] g4 |
  g4( fis4) |
  g2 |

  g8[ a8] b4 |
  a4 a4 |
  g4 g4 |
  g4( fis4) |
  g4 g4 |
  g4 g4 |
  g8[ fis8] g4 |
  g4( fis4) |
  g2 |

  b4 a4 |
  g4 a4 |
  b4 a4 |
  a4 fis4 |
  g4. g8 |
  fis4 g4 |
  g8[ fis8] g4 |
  g4( fis4) |
  g2 \bar "|."
}

BassVerseMusic = \relative c' {
  g4 g4 |
  g4 fis4 |
  g8[ fis8] e4 |
  d2 |
  e4 d4 |
  c4 b4 |
  a4 g4 |
  d'2 |
  g,2 |

  g'4 g4 |
  g4 fis4 |
  g8[ fis8] e4 |
  d2 |
  e4 d4 |
  c4 b4 |
  a4 g4 |
  d'2 |
  g,2 |

  g'4 fis4 |
  e4 d4 |
  d4 cis4 |
  d4 d4 |
  d4 e4 |
  d8[ c8] b4 |
  a4 b4 |
  c4( d4) |
  g,2 \bar "|."
}

SheetMusicVerseBreaks = \relative c {
  s2 | \noBreak
  s2 | \noBreak
  s2 | \noBreak
  s2 | \noBreak
  s2 | \noBreak
  s2 | \noBreak
  s2 | \noBreak
  s2 | \noBreak
  s2 | \break \noPageBreak

  s2 | \noBreak
  s2 | \noBreak
  s2 | \noBreak
  s2 | \noBreak
  s2 | \noBreak
  s2 | \noBreak
  s2 | \noBreak
  s2 | \noBreak
  s2 | \break \noPageBreak

  s2 | \noBreak
  s2 | \noBreak
  s2 | \noBreak
  s2 | \noBreak
  s2 | \noBreak
  s2 | \noBreak
  s2 | \noBreak
  s2 | \noBreak
  s2 \bar "|."
}

SlidesVerseBreaks = \relative c {
  \setSystemOffset \defaultTopSystemOffset
  \setSystemOffset \defaultBottomSystemOffset
}

VerseOne = \lyricmode {
  \set stanza = "1. "
  Bless -- ed Je -- sus, at Your word
    We are gath -- ered all to hear You;
  Let our hearts and souls be stirred
    Now to seek and lov and fear You,
  By Your teach -- ings sweet and ho -- ly,
    Drawn from earth to love You sole -- ly.
}

VerseTwo = \lyricmode {
  \set stanza = "2. "
  All our knowl -- edge, sense and sight
    Lie in deep -- est dark -- ness shroud -- ed,
  Till You come in -- to our night
    With the beams of truth un -- cloud -- ed.
  You a -- lone to God can win us;
    You must work all god with -- in us.
}

VerseThree = \lyricmode {
  \set stanza = "3. "
  Glo -- rious Lord, Your -- self im -- part!
    Light of light, from God pro -- ceed -- ing,
  O -- pen eve -- ry ear and heart;
    Help us by Your Spir -- it's plead -- ing;
  Hear the cry each serv -- ant rais -- es;
    Hear and bless our prayers and prais -- es.
}
