\version "2.19.49"
#(use-modules (guile-user))

#(ly:set-option 'relative-includes #t)
\include "../../../../LilypondTemplates/functions.ly"
\include "../../../../LilypondTemplates/hymns.ly"
\include "../hymn_settings.ly"

global = {
  \key e \major
  \time 4/4
  \tempo 4 = 102
}

MajorKey = ##t

%%
%% Hymn Metadata Variables
%%

Title = "Let the Whole Creation Cry"
SongNumber = \let_the_whole_creation_cry_phss_number
RightFirstPage = \let_the_whole_creation_cry_phss_number_rhs
FirstPage = #(if RightFirstPage 1 2)

LeaderHints = \markup {
  \fontsize #-4
  \normal-text { "E - 4 - DO" }
}

Scripture = "TBD"

ShowScriptureOnSheetMusic = ##f

\header {
  title = \Title
  tune = "LLANFAIR"
  meter = "7.7.7.7"
  composer = "Robert Williams (1817)"
  poet = "Stopford A. Brooke (1881)"
  arranger = "John Roberts and C. A. Roberts"
  songNumber = \SongNumber
  lhs = #(if RightFirstPage LeaderHints SongNumber)
  rhs = #(if RightFirstPage SongNumber LeaderHints)
  copyright = "Arrangement copyright"
  license = ##f
  tagline = ##f
}

AlignVerseMusic = {
  c4 c4 c4 c4 |
  c4 c4 c2 |
  c2. c4 |
  c2 c2 |

  c4 c4 c4 c4 |
  c4 c4 c2 |
  c2. c4 |
  c2 c2 |

  c4 c4 c4 c4 |
  c4 c4 c2 |
  c2. c4 |
  c2 c2 |

  c4 c4 c4 c4 |
  c4 c4 c2 |
  c2. c4 |
  c2 c2 \bar "|."
}

SopranoVerseMusic = \relative c' {
  e4 e4 gis4 gis4 |
  b4 a8[ gis8] fis2 |
  b4.( a8 gis4) a8 gis8 |
  fis2 e2 |

  e4 e4 gis4 gis4 |
  b4 a8[ gis8] fis2 |
  b4.( a8 gis4) a8[ gis8] |
  fis2 e2 |

  gis4 gis4 b4 b4 |
  cis8[ b8] a8[ gis8] fis2 |
  gis4.( fis8 gis4) ais4 |
  b2 b2 |

  e,4 e4 gis4 gis4 |
  b4 a8[ gis8] fis2 |
  b4.( a8 gis4) a8[ gis8] |
  fis2 e2 \bar "|."
}

AltoVerseMusic = \relative c' {
  b4 b4 e4 e4 |
  e4 e4 dis2 |
  b4( cis8[ dis8] e4) e4 |
  e4( dis4) e2 |

  b4 b4 e4 e4 |
  e4 e4 dis2 |
  b4( cis8[ dis8] e4) e4 |
  e4( dis4) e2 |

  e4 e4 fis4 gis4 |
  a8[ gis8] fis8[ e8] dis2 |
  e4.( fis8 e4) e4 |
  dis2 dis2 |

  b4 b4 e4 e4 |
  e4 e4 dis2 |
  b4( cis8[ dis8] e4) e4 |
  e4( dis4) e2 \bar "|."
}

TenorVerseMusic = \relative c' {
  gis4 gis4 gis4 cis4 |
  b4 cis8[ b8] b2 |
  gis4.( a8 b4) cis8[ b8] |
  b4.( a8) gis2 |

  gis4 gis4 gis4 cis4 |
  b4 cis8[ b8] b2 |
  gis4.( a8 b4) cis8[ b8] |
  b4.( a8) gis2 |

  b4 b4 b4 e4 |
  e4 b4 b2 |
  b2( cis4) cis4 |
  b2 b2 |

  b4 b4 b4 b4 |
  b4 cis8[ b8] b2 |
  gis4.( a8 b4) cis8[ b8] |
  b4.( a8) gis2 \bar "|."
}

BassVerseMusic = \relative c {
  e4 e4 cis4 cis4 |
  gis4 a4 b2 |
  gis'4.( fis8 e4) a,8[ b8] |
  b2 e2 |

  e4 e4 cis4 cis4 |
  gis4 a4 b2 |
  gis'4.( fis8 e4) a,8[ b8] |
  b2 e2 |

  e4 e4 dis4 e4 |
  e4 dis8[ e8] b2 |
  e4.( dis8 cis4) fis4 |
  b,2 b'4( a4) |

  gis4 gis8[ fis8] e4 e4 |
  gis,4 a4 b2 |
  gis'4.( fis8 e4) a,8[ b8] |
  b2 e2 \bar "|."
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
  s2. \bar "" \break
  
  \setSystemOffset \defaultBottomSystemOffset
  s4 | \noBreak
  s1 | \noBreak
  s1 \bar "|."
}

VerseOne = \lyricmode {
  \set stanza = "1. "
  Let the whole cre -- a -- tion cry: "\"Al" -- le -- lu -- "ia!\""
  Glo -- ry to the LORD on high! Al -- le -- lu -- ia!
  Heav'n and earth, a -- wake and sing: "\"Al" -- le -- lu -- "ia!\""
  God is good and God is King! Al -- le -- lu -- ia!
}

VerseTwo = \lyricmode {
  \set stanza = "2. "
  Praise Him, all ye hosts a -- bove.  Al -- le -- lu -- ia!
  Ev -- er bright and fair in love.  Al -- le -- lu -- ia!
  Sun and moon, lift up your voice!  Al -- le -- lu -- ia!
  Night and stars, in God re -- joice!  Al -- le -- lu -- ia!
}

VerseThree = \lyricmode {
  \set stanza = "3. "
  Men and wo -- men, young and old.  Al -- le -- lu -- ia!
  Raise the an -- them man -- i -- fold.  Al -- le -- lu -- ia!
  Chil -- dren with your hap -- py hearts.  Al -- le -- lu -- ia!
  In this wor -- ship sing your parts.  Al -- le -- lu -- ia!
}
