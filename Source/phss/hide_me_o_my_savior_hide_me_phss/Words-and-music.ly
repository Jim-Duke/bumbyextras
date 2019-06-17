\version "2.19.49"
#(use-modules (guile-user))

#(ly:set-option 'relative-includes #t)
\include "../../../../LilypondTemplates/functions.ly"
\include "../../../../LilypondTemplates/hymns.ly"
\include "../hymn_settings.ly"

global = {
  \key aes \major
  \numericTimeSignature
  \time 4/4
  \tempo 4 = 102
}

MajorKey = ##t

%%
%% Hymn Metadata Variables
%%

Title = "Hide Me, O My Savior, Hide Me"
SongNumber = \hide_me_o_my_savior_hide_me_phss_number
RightFirstPage = \hide_me_o_my_savior_hide_me_phss_number_rhs
FirstPage = #(if RightFirstPage 1 2)

LeaderHints = \markup {
  \fontsize #-4
  \normal-text { "A" \musicglyph #"accidentals.flat" " - 4 - MI" }
}

Scripture = "TBD"

ShowScriptureOnSheetMusic = ##f

\header {
  title = \Title
  tune = "HIDE ME"
  meter = "8.5.8.6 with chorus"
  composer = "William H. Doane (1886)"
  poet = "Fanny J. Crosby (1886)"
  songNumber = \SongNumber
  lhs = #(if RightFirstPage LeaderHints SongNumber)
  rhs = #(if RightFirstPage SongNumber LeaderHints)
  copyright = ""
  license = ##f
  tagline = ##f
}

AlignVerseMusic = {
  c8. c16 c8. c16 c4 c4 |
  c2 c2 |
  c4 c4 c4 c4 |
  c2. r4 |

  c8. c16 c8. c16 c4 c4 |
  c2 c2 |
  c4 c8. c16 c4 c4 |
  c2. r4 \bar "||"
}

AlignChorusOneMusic = {
  c2 c2 |
  c2 c2 |
  c4 c8. c16 c4 c4 |
  c2 c2 |

  c2 c4 c4 |
  c2 c2 |
  c4 c8. c16 c4 c4 |
  c2. r4 \bar "|."
}

AlignChorusTwoMusic = {
  c4 c4 c4 c4 |
  c4 c4 c4 c4 |
  r1 |
  r1 |
  c4 c4 c4 c4 |
  c4 c4 c2 |
  r1 |
  r1 \bar "|."
}

SopranoVerseMusic = \relative c'' {
  c8. c16 c8. bes16 aes4 ees4 |
  f2 aes2 |
  ees4 aes4 c4 bes4 |
  bes2. r4 |

  c8. c16 c8. bes16 aes4 aes4 |
  aes2 f2 |
  ees4 aes8. bes16 aes4 g4 |
  aes2. r4 \bar "||"
}

SopranoChorusMusic = \relative c'' {
  c2 aes2 |
  des2 f,2 |
  ees4 aes8. bes16 c4 ees4 |
  ees2 bes2 |

  c2 bes4 aes4 |
  aes2 f2 |
  ees4 aes8. bes16 aes4 g4 |
  aes2. r4 \bar "|."
}

AltoVerseMusic = \relative c' {
  ees8. ees16 ees8. des16 c4 ees4 |
  des2 des2 |
  ees4 ees4 ees4 d4 |
  ees2. r4 |

  ees8. ees16 ees8. ees16 ees4 ges4 |
  f2 des2 |
  c4 ees8. ees16 ees4 ees4 |
  ees2. r4 \bar "||"
}

AltoChorusMusic = \relative c'' {
  aes2 ges2 |
  f2 des2 |
  c4 ees8. ees16 ees4 aes4 |
  g2 g2 |

  ges2 ges4 ges4 |
  f2 des2 |
  c4 ees8. ees16 ees4 ees4 |
  ees2. r4 \bar "|."
}

TenorVerseMusic = \relative c' {
  aes8. aes16 aes8. ees16 ees4 aes4 |
  aes2 f2 |
  aes4 aes4 aes4 aes4 |
  g2. r4 |

  aes8. aes16 aes8. des16 c4 aes4 |
  aes2 aes2 |
  aes4 c8. des16 c4 bes8[ des8] |
  c2. r4 \bar "||"
}

TenorChorusMusic = \relative c' {
  ees4 ees4 c4 aes4 |
  aes4 aes4 aes4 aes4 |
  aes4 aes8. g16 aes4 c4 |
  bes2 ees2 |

  ees4 ees4 des4 c4 |
  des4 des4 aes2 |
  aes4 c8. des16 c4 bes8[ des8] |
  c2. r4 \bar "|."
}

BassVerseMusic = \relative c {
  aes8. aes16 aes8. aes16 aes4 c4 |
  des2 des2 |
  c4 c4 aes4 bes4 |
  ees2. r4 |

  aes,8. aes16 aes8. aes16 aes4 c4 |
  des2 des2 |
  ees4 ees8. ees16 ees4 ees4 |
  aes,2. r4 \bar "||"
}

BassChorusMusic = \relative c' {
  aes4 aes4 aes4 c,4 |
  des4 des4 des4 des4 |
  aes4 c8. ees16 aes4 aes4 |
  ees2 ees2 |

  aes4 aes4 aes4 aes4 |
  des,4 des4 des2 |
  ees4 ees8. ees16 ees4 ees4 |
  <aes aes,>2. r4 \bar "|."
}

SheetMusicVerseBreaks = {
  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 | \break \noPageBreak

  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 | \break \noPageBreak
}

SheetMusicChorusBreaks = {
  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 | \break \noPageBreak

  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 \bar "|."
}

SlidesVerseBreaks = {
  \setSystemOffset \defaultTopSystemOffset
  \setSystemOffset \defaultBottomSystemOffset
}

VerseOne = \lyricmode {
  \set stanza = "1. "
  Hide me, O my Sav -- ior, hide me In Thy ho -- ly place;
  Rest -- ing there be -- neath Thy glo -- ry, O let me see Thy face.
}

VerseTwo = \lyricmode {
  \set stanza = "2. "
  Hide me, when the storm is rag -- ing O'er life's trou -- bled sea;
  Like a dove on o -- cean's bil -- lows, O let me fly to Thee.
}

VerseThree = \lyricmode {
  \set stanza = "3. "
  Hide me, when my heart is break -- ing With its weight of woe,
  When in tears I seek the com -- fort Thou canst a -- lone be -- stow.
}

ChorusOne = \lyricmode {
  Hide me, hide me, O bless -- ed Sav -- ior, hide me;
  O Sav -- ior, keep me, Safe -- ly, O Lord with Thee.
}

ChorusTwo = \lyricmode {
  Hide me, hide me, safe -- ly hide me,
  O my Sav -- ior, keep Thou me,
}
