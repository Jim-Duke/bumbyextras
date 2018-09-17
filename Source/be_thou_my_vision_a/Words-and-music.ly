\version "2.19.49"
#(use-modules (guile-user))

#(ly:set-option 'relative-includes #t)
\include "../../../LilypondTemplates/functions.ly"
\include "../../../LilypondTemplates/hymns.ly"
\include "../hymn_settings.ly"

global = {
  \key ees \major
  \time 3/4
  \tempo 4 = 100
}

MajorKey = ##t

%%
%% Hymn Metadata Variables
%%

Title = "Be Thou My Vision (A)"
SongNumber = \be_thou_my_vision_number
RightFirstPage = \be_thou_my_vision_number_rhs
FirstPage = #(if RightFirstPage 1 2)

LeaderHints = \markup {
  \fontsize #-4
  \normal-text { "E" \musicglyph #"accidentals.flat" " - 3 - DO" }
}

Scripture = "The eyes of your understanding being enlightened; that you may know
  what is the hope of His calling, what are the riches of the glory of His inheritance in the saints"

ShowScriptureOnSheetMusic = ##t

\header {
  title = \Title
  tune = "SLANE"
  meter = "10.10.9.10"
  composer = "Joyce's Old Irish Folk Music and Songs (1909) arr. A"
  poet = "Irish Fok Hymn (c. 750) tr. Mary E. Byrne (1905) ver. Eleanor H. Hull alt."
  songNumber = \SongNumber
  lhs = #(if RightFirstPage LeaderHints SongNumber)
  rhs = #(if RightFirstPage SongNumber LeaderHints)
  copyright = "In the Public Domain"
  license = ##f
  tagline = ##f
}

SopranoVerseMusic = \relative c' {
  ees4 ees4 f8( ees8) |
  c4 bes4 bes8( c8) |
  ees4 ees4 f4 |
  g2. |
  
  f4 f4 f4 |
  f4 g4 bes4 |
  c4 bes4 g4 |
  bes2. |
  
  c4 c8( d8) ees8( d8) |
  c4( bes4) g4 |
  bes4 ees,4 d4 |
  c2( bes4) |
  
  ees4 g4 bes4 |
  c8( bes8) g4 ees8( g8) |
  f4 ees4 ees4 |
  ees2. \bar "|."
}

AltoVerseMusic = \relative c' {
  bes4 c4 c4 |
  aes4 bes4 bes8( c8) |
  c4 c4 d4 |
  ees2. |
  
  d4 ees4 d4 |
  c4 d4 g8( f8) |
  g4 f4 ees4 |
  f4( d4 ees4) |
  
  ees4 aes4 g4 |
  g2 d4 |
  f4 ees4 d4 |
  c2( bes4) |
  
  c4 ees4 d4 |
  ees4 ees4 ees4 |
  c4 c4 c4 |
  bes2. \bar "|."
}

TenorVerseMusic = \relative c' {
  g4 g4 f4 |
  aes4 g4 g4 |
  g4 g4 bes4 |
  bes2. |
  
  bes4 a4 bes4 |
  f4 bes4 bes4 |
  ees4 bes4 bes4 bes2. |
  
  aes4 c4 c4 |
  ees4( d4) bes4 |
  bes4 g4 aes4 |
  g4( aes8 g8 f4) |
  
  g4 g4 g4 |
  g4 bes4 bes4 |
  aes8( g8) g4 f4 |
  g2. \bar "|."
}

BassVerseMusic = \relative c {
  ees4 ees4 c4 |
  c8( d8) ees4 ees4 |
  c4 c4 bes4 |
  ees2. |
  
  d4 c4 bes4 |
  bes8( a8) g4 ees'8( d8) |
  c4 d4 ees4 |
  f2( g4) |
  
  aes4 f4 ees4 |
  ees8( f8 g4) bes8( g8) |
  f4 g4 f4 |
  ees4( f8 ees8 d4) |
  
  c4 c4 bes8( aes8) |
  g4 bes4 g4 |
  aes8( bes8) c4 aes4 |
  <ees' ees,>2. \bar "|."
}

SheetMusicVerseBreaks = \relative c {
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \break

  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \break

  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \break

  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. \bar "|."
}

SlidesVerseBreaks = \relative c {
  \setSystemOffset \defaultTopSystemOffset
  s2. | \noBreak
  s2  \bar "" \break
  
  \setSystemOffset \defaultBottomSystemOffset
  s4  | \noBreak
  s2. | \noBreak
  s2. | \pageBreak
  
  \setSystemOffset \defaultTopSystemOffset
  s2. | \noBreak
  s2. | \break
  
  \setSystemOffset \defaultBottomSystemOffset
  s2. | \noBreak
  s2. | \pageBreak
  
  \setSystemOffset \defaultTopSystemOffset
  s2. | \noBreak
  s2. | \break
  
  \setSystemOffset \defaultBottomSystemOffset
  s2. | \noBreak
  s2. | \pageBreak

  \setSystemOffset \defaultTopSystemOffset
  s2. | \noBreak
  s2  \bar "" \break
  
  \setSystemOffset \defaultBottomSystemOffset
  s4  | \noBreak
  s2. | \noBreak
  s2. | \pageBreak
}

VerseOne = \lyricmode {
  \set stanza = "1. "
  Be Thou my vi -- sion,  O Lord of my heart;
  Naught be all else to me, save that Thou art.
  Thou my best thought, by day or by night.
  Wak -- ing or sleep -- ing, Thy pres -- ence my light.
}

VerseTwo = \lyricmode {
  \set stanza = "2. "
  Be Thou my wis -- dom and thou my true word;
  I ev -- er with Thee and Thou with me, Lord.
  Thou my great Fa -- ther, I Thy true son;
  Thou in me dwell -- ing, and I with Thee one.
}

VerseThree = \lyricmode {
  \set stanza = "3. "
  Be Thou my bat -- tle Shield, Sword for the fight;
  Be Thou my Dig -- ni -- ty, Thou my De -- light;
  Thou my soul's Shel -- ter, Thou my high Tow'r;
  Raise Thou me heav'n -- ward, O Pow'r of my pow'r.
}

VerseFour = \lyricmode {
  \set stanza = "4. "
  Rich -- es I heed not, nor man's emp -- ty praise,
  Thou my in -- her -- it -- ance, now and al -- ways;
  Thou and Thou on -- ly, first in my heart,
  High King of heav -- en, my treas -- ure Thou art.
}

VerseFive = \lyricmode {
  \set stanza = "5. "
  High King of heav -- en, my vic -- to -- ry won,
  May I reach heav -- en's joys, O bright heav'n's Sun!
  Heart of my heart, what -- ev -- er be -- fall,
  Still be my vi -- sion, O Rul -- er of all.
}
