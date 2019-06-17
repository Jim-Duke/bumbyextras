\version "2.19.49"
#(use-modules (guile-user))

#(ly:set-option 'relative-includes #t)
\include "../../../../LilypondTemplates/functions.ly"
\include "../../../../LilypondTemplates/hymns.ly"
\include "../hymn_settings.ly"

global = {
  \key aes \major
  \time 3/4
  \tempo 4 = 90
}

MajorKey = ##t

%%
%% Hymn Metadata Variables
%%

Title = "The Day Thou Gavest"
SongNumber = \the_day_thou_gavest_phss_number
RightFirstPage = \the_day_thou_gavest_phss_number_rhs
FirstPage = #(if RightFirstPage 1 2)

LeaderHints = \markup {
  \fontsize #-4
  \normal-text { "A" \musicglyph #"accidentals.flat" " - 3 - SOL" }
}

Scripture = "TBD"

ShowScriptureOnSheetMusic = ##f

\header {
  title = \Title
  tune = "ST. CLEMENT"
  meter = "9.8.9.8"
  composer = "Clement C. Scholefield (1874)"
  poet = "John Ellerton (1870)"
  songNumber = \SongNumber
  lhs = #(if RightFirstPage LeaderHints SongNumber)
  rhs = #(if RightFirstPage SongNumber LeaderHints)
  copyright = ""
  license = ##f
  tagline = ##f
}

AlignVerseMusic = {
  c4 |
  c2 c4 |
  c2 c4 |
  c2 c4 |
  c4 c4

  c4 |
  c2 c4 |
  c2 c4 |
  c2 c4 |
  c2

  c4 |
  c2 c4 |
  c2 c4 |
  c2 c4 |
  c4 c4

  c4 |
  c2 c4 |
  c2 c4 |
  c2 c4 |
  c2 \bar "|."
}

SopranoVerseMusic = \relative c' {
  ees4 |
  c'4( des4) c4 |
  ees4( c4) bes4 |
  aes4( bes4) f4 |
  aes4 g4

  f4 |
  ees2 ees4 |
  aes4( bes4) c4 |
  bes2 aes4 |
  g2

  ees4 |
  c'4( des4) c4 |
  ees4( c4) bes4 |
  aes4( bes4) f4 |
  aes4 g4

  f4 |
  ees4( f4) g4 |
  aes4( c4) bes4 |
  f4( aes4) g4 |
  aes2 \bar "|."
}

AltoVerseMusic = \relative c' {
  ees4 |
  ees2 aes4 |
  g2 g4 |
  aes4( f4) f4 |
  des4 des4

  des4 |
  des4( c4) ees4 |
  f2 ees4 |
  d2 d4 |
  ees2

  ees4 |
  ees2 aes4 |
  g2 g4 |
  aes4( f4) f4 |
  des4 des4

  bes4 |
  ees2 des4 |
  c4( ees4) f4 |
  f2 ees4 |
  ees2 \bar "|."
}

TenorVerseMusic = \relative c {
  ees4 |
  aes2 aes4 |
  bes4( ees4) des4 |
  c4( des4) bes4 |
  bes4 bes4

  aes4 |
  bes4( aes4) bes4 |
  c2 aes4 |
  f2 bes4 |
  bes2

  ees,4 |
  aes2 aes4 |
  bes4( ees4) des4 |
  c4( des4) bes4 |
  bes4 bes4

  g4 |
  aes2 bes4 |
  aes2 des4 |
  des2 des4 |
  c2 \bar "|."
}

BassVerseMusic = \relative c {
  ees4 |
  aes,2 aes'4 |
  ees2 ees4 |
  f4( bes,4) des4 |
  ees4 ees4

  f4 |
  g4( aes4) g4 |
  f2 f4 |
  bes,2 bes4 |
  ees2

  ees4 |
  aes,2 aes'4 |
  ees2 ees4 |
  f4( bes,4) des4 |
  ees4 ees4

  des4 |
  c2 ees4 |
  f4( c4) des4 |
  bes2 ees4 |
  aes,2 \bar "|."
}

SheetMusicVerseBreaks = \relative c {
  s4 | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2 \bar "" \break

  s4 | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2 \bar "" \break

  s4 | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2 \bar "" \break

  s4 | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2 \bar "|." \break
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
  The day Thou gav -- est, Lord, is end -- ed;
  The dark -- ness falls at Thy be -- hest.
  To Thee our morn -- ing hymns as -- cend -- ed;
  Thy praise shall sanc -- ti -- fy our rest.
}

VerseTwo = \lyricmode {
  \set stanza = "2. "
  We thank Thee that Thy church, un -- sleep -- ing,
  While earth rolls on -- ward in -- to light.
  Through all the world her watch is keep -- ing.
  And rests not now by day or night.
}

VerseThree = \lyricmode {
  \set stanza = "3. "
  As o'er each con -- ti -- nent and is -- land
  The dawn leads on an -- oth -- er day,
  The voice of prayer is nev -- er si -- lent,
  Nor dies the strain of praise a -- way.
}

VerseFour = \lyricmode {
  \set stanza = "4. "
  The sun that bids us rest is wak -- ing
  Our breth -- ren 'neath the west -- ern sky,
  And hour by hour fresh lips are mak -- ing
  Thy won -- drous do -- ings heard on high.
}

VerseFive = \lyricmode {
  \set stanza = "5. "
  So be it, Lord; Thy throne shall nev -- er,
  Like earth's proud em -- pires, pass a -- way;
  Thy king -- dom stands, and grows for -- ev -- er,
  Till all Thy crea -- tures own Thy sway.
}
