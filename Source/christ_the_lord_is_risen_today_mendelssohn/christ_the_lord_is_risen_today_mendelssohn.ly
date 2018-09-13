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

%%
%% Music Variables
%%

Key = \key g \major
MajorKey = ##t

Time = {
  \time 4/4
  \tempo 4=125
}

Title = "Christ the Lord is Risen Today"
SongNumber = \christ_the_lord_is_risen_today_mendelssohn_number

LeaderHints = \markup {
  \fontsize #-4
  \normal-text { "G - 4 - SOL" }
}

FirstPage = #(if christ_the_lord_is_risen_today_mendelssohn_number_rhs 1 2)

Scripture = "But the angel answered and said to the women,
             “Do not be afraid, for I know that you seek Jesus who was crucified.
             He is not here; for He is risen, as He said.
             Come, see the place where the Lord lay.” (Matthew 28:5–6, NKJV)"

ShowScriptureOnSheetMusic = ##f

\header {
  title = \Title
  tune = "MENDELSSOHN"
  meter = "7.7.7.7.D with refrain"
  composer = "Felix Mendelssohn (1840)"
  poet = "Charles Wesley"
  songNumber = \SongNumber
  lhs = #(if christ_the_lord_is_risen_today_mendelssohn_number_rhs LeaderHints christ_the_lord_is_risen_today_mendelssohn_number)
  rhs = #(if christ_the_lord_is_risen_today_mendelssohn_number_rhs christ_the_lord_is_risen_today_mendelssohn_number LeaderHints)
  copyright = "In the Public Domain"
  license = ##f
  arranger = "William H. Cummings"
  tagline = ##f
}

SopranoVerseMusic = \relative c' {
  d4 g4 g4. fis8 |
  g4 b4 b4( a4) |
  d4 d4 d4. c8 |
  b4 a4 b2 |
  
  d,4 g4 g4. fis8 |
  g4 b4 b4( a4) |
  d4 a4 a4. fis8 |
  fis4 e4 d2 |
  
  d'4 d4 d4 g,4 |
  c4 b4 b4( a4) |
  d4 d4 d4 g,4 |
  c4 b4 b4( a4) |

  e'4 e4 e4 d4 |
  c4 b4 c2 |
  a4 b8( c8) d4. g,8 |
  g4 a4 b2 |
  
  e4. e8 e4 d4 |
  c4 b4 c2 |
  a4 b8( c8) d4. g,8 |
  g4 a4 g2 \bar "|."
}

AltoVerseMusic = \relative c' {
  d4 d4 d4. d8 |
  d4 g4 g4( fis4) |
  g4 fis4 e4 a4 |
  g4 fis4 g2 |
  
  d4 d4 d4. d8 |
  b4 g'4 g2 |
  fis4 e4 fis4. d8 |
  d4 cis4 d2 |
  
  d4 d4 d4 g4 |
  a4 g4 g4( fis4) |
  d4 d4 d4 g4 |
  a4 g4 g4( fis4) |
  
  c'4 c4 c4 b4 |
  a4 gis4 a2 |
  fis4 fis4 g4. d8 |
  d4 fis4 g2 |
  
  c4 c4 c4 b4 |
  a4 gis4 a2 |
  d,4 fis4 g4. d8 |
  d4 d4 d2 \bar "|."
}

TenorVerseMusic = \relative c' {
  b4 b4 b4. a8 |
  g4 d'4 d2 |
  d4 d4 e4 e4 |
  d4 d4 d2 |
  
  b4 b4 b4. a8 |
  g4 d'4 e2 |
  b4 a4 a4. a8 |
  b4 g4 fis2 |
  
  d'4 d4 d4 d4 |
  d4 d4 d2 |
  d4 d4 d4 d4 |
  d4 d4 d2 |
  
  e4 e4 e4 e4 |
  e4 e4 e2 |
  d4 d4 d4. b8 |
  b4 c4 b2 |
  
  e4 e4 e4 d4 |
  c4 b4 c2 |
  d4 d4 d4. b8 |
  b4 c4 b2 \bar "|."
}

BassVerseMusic = \relative c' {
  g4 g4 g4 d4 |
  b4 g4 d'2 |
  b4 b4 c4 c4 |
  d4 d4 g,2 |
  
  g'4 g4 g4 d4 |
  e4 d4 cis2 |
  b4 cis4 d4 fis,4 |
  g4 a4 d2 |
  
  d'4 d4 d4 b4 |
  fis4 g4 d2 |
  d'4 d4 d4 b4 |
  fis4 g4 d2 |
  
  c4 c4 c4 c4 |
  c4 e4 a2 |
  c4 c4 b4 g4 |
  d4 d4 g,2 |
  
  c'4 c4 c4 b4 |
  a4 gis4 a4( g4) |
  fis4 c'4 b4 g4 |
  d4 d4 g2 \bar "|."
}

AlignVerseMusic = \relative c' {
  c4 c4 c4. c8 |
  c4 c4 c2 |
  c4 c4 c4. c8 |
  c4 c4 c2 |
  
  c4 c4 c4. c8 |
  c4 c4 c2 |
  c4 c4 c4. c8 |
  c4 c4 c2 |
  
  c4 c4 c4 c4 |
  c4 c4 c2 |
  c4 c4 c4 c4 |
  c4 c4 c2 |

  c4 c4 c4 c4 |
  c4 c4 c2 |
  c4 c4 c4. c8 |
  c4 c4 c2 |
  
  c4. c8 c4 c4 |
  c4 c4 c2 |
  c4 c4 c4. c8 |
  c4 c4 c2 \bar "|."
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
  s1 | \break
  
  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 \bar "|." \break
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
  Christ the Lord is ris'n to -- day,
  Sons of men and an -- gels say!
  Raise your joys and tri -- umphs high,
  Sing, ye heav'ns and earth re -- ply.
  Vain the stone, the watch, the seal,
  Christ hath burst the gates of hell:
  Death in vain for -- bids His rise,
  Christ hath o -- pened par -- a -- dise.
  Death in vain for -- bids His rise,
  Christ hath o -- pened par -- a -- dise.
}

VerseTwo = \lyricmode {
  \set stanza = "2. "
  Lives a -- gain our glor -- ious King,
  Where, O death, is now thy sting?  
  Once he died our Souls to save;  
  Where's thy vic -- t'ry, boast -- ing grave?
  Soar we now where Christ hath led,  
  Foll' -- wing our ex -- alt -- ed Head;  
  Made like Him, like Him we rise,  
  Ours the cross, the grave, the skies.
  Made like Him, like Him we rise,  
  Ours the cross, the grave, the skies.
}

VerseThree = \lyricmode {
  \set stanza = "3. "
  King of glo -- ry! Soul of bliss!  
  Ev -- er -- last -- ing life is this  
  Thee to know, Thy pow'r to prove,  
  Thus to sing, and thus to love.
  Hail, the Lord of earth and heav'n!  
  Praise to Thee by both be giv'n!  
  Thee we greet tri -- um -- phant now,  
  Hail the re -- sur -- rec -- tion thou!
  Thee we greet tri -- um -- phant now,  
  Hail the re -- sur -- rec -- tion thou!
}

\include "../../../LilypondTemplates/bumby-hymnal-template.ly"
