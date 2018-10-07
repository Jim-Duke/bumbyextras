\version "2.19.49"
#(use-modules (guile-user))

#(ly:set-option 'relative-includes #t)
\include "../../../LilypondTemplates/functions.ly"
\include "../../../LilypondTemplates/hymns.ly"
\include "../hymn_settings.ly"

global = {
  \key d \major
  \time 3/4
  \tempo 4 = 95
}

MajorKey = ##t

%%
%% Hymn Metadata Variables
%%

Title = "My God, I Thank You, Who Have Made"
SongNumber = \my_god_I_thank_you_who_have_made_number
RightFirstPage = \my_god_I_thank_you_who_have_made_number_rhs
FirstPage = #(if RightFirstPage 1 2)

LeaderHints = \markup {
  \fontsize #-4
  \normal-text { "D - 4 - MI" }
}

Scripture = "\"Blessed is a man who perseveres under trial;
 for once he has been approved, he will receive the crown of life
 which the Lord has promised to those who love Him.\" -- James 1:12 NASB95"

ShowScriptureOnSheetMusic = ##t

\header {
  title = \Title
  tune = "EULOGIA"
  meter = "8.4.8.4.8.4"
  composer = "Matthew L. Harber (2011)"
  poet = "Adelaide Anne Proctor (1858)"
  altered = ##t
  songNumber = \SongNumber
  lhs = #(if RightFirstPage LeaderHints SongNumber)
  rhs = #(if RightFirstPage SongNumber LeaderHints)
  copyright = "Copyright 2011 Matthew L. Harber"
  license = "Used by Permission"
  tagline = ##f
}

SopranoVerseMusic = \relative c'' {
  a4 a4 fis4 |
  a4. a8 b8 cis8 |
  d4. cis8 b8 a8 |
  a2. |
  
  a4 a4 fis4 |
  a4. a8 b8 cis8 |
  b4. b8 cis8 d8 |
  cis2. |
  
  d4 d4 a4 |
  b4. b8 a8 g8 |
  fis4. g8 e8. d16 |
  d2. \bar "|."
}

AltoVerseMusic = \relative c' {
  d4 d4 d4 |
  cis4. cis8 d8 e8 |
  d4. d8 d8 d8 |
  d2. |
  
  d4 d4 d4 |
  cis4. d8 d8 d8 |
  d4. g8 g8 g8 |
  e4( fis4 g4) |
  
  fis4 fis4 fis4 |
  g4. d8 d8 d8 |
  d4. d8 cis8. d16 |
  d2. \bar "|."
}

TenorVerseMusic = \relative c {
  fis4 fis4 a4 |
  a4. a8 a8 a8 |
  fis4. fis8 g8 g8 |
  fis2. |
  
  fis4 fis4 a4 |
  a4. a8 fis8 a8 |
  g4. g8 a8 b8 |
  a2. |
  
  b4 b4 cis4 |
  d4. d8 cis8 b8 |
  a4. b8 g8. fis16 |
  fis2. \bar "|."
}

BassVerseMusic = \relative c {
  d4 d4 d4 |
  a4. a8 a8 a8 |
  b4. a8 g8 g8 |
  d'2. |
  
  d4 d4 d8 e8 |
  fis4. fis8 fis8 fis8 |
  g4. g8 g8 g8 |
  a2. |
  
  b4 b4 a4 |
  g4. g8 g8 g8 |
  a4. a,8 a8. a16 |
  d2. \bar "|."
}

SheetMusicVerseBreaks = \relative c {
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \break \noPageBreak
  
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \break \noPageBreak
  
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \break
}

SlidesVerseBreaks = \relative c {
  \setSystemOffset \defaultTopSystemOffset
  s2. | \noBreak
  s2 s8 \bar "" \break
  
  \setSystemOffset \defaultBottomSystemOffset
  s8 | \noBreak
  s2. | \noBreak
  s2. | \pageBreak
  
  %---------------------------------------------

  \setSystemOffset \defaultTopSystemOffset
  s2. | \noBreak
  s2 s8 \bar "" \break
  
  \setSystemOffset \defaultBottomSystemOffset
  s8 | \noBreak
  s2. | \noBreak
  s2. | \pageBreak
  
  %---------------------------------------------

  \setSystemOffset \defaultTopSystemOffset
  s2. | \noBreak
  s2 s8 \bar "" \break
  
  \setSystemOffset \defaultBottomSystemOffset
  s8 | \noBreak
  s2. | \noBreak
  s2. | \pageBreak
}

VerseOne = \lyricmode {
  \set stanza = "1. "
  My God, I thank You, who have made
  The earth so bright.
  So full of spen -- dor and of joy.
  Beau -- ty and light;
  So man -- y glo -- rious things are here,
  No -- ble and right.
}

VerseTwo = \lyricmode {
  \set stanza = "2. "
  I thank You, too, that You have made
  Joy to a -- bound;
  So man -- y gen -- tle thoughts and deeds
  Cir cling us round,
  That in the dark -- est spot of earth
  Some love is found.
}

VerseThree = \lyricmode {
  \set stanza = "3. "
  I thank You more that all our joy
  Is touched with pain,
  The shad -- ows fall on bright -- est hours.
  That thorns re -- main;
  So that earth's bliss may be our guide
  And not our chain.
}

VerseFour = \lyricmode {
  \set stanza = "4. "
  For You who knows, O Lord, how soon
  Our weak heart clings,
  Have giv'n us joys, ten -- der and true,
  Yet all with wings;
  So that we see gleam -- ing on high
  Di -- vin -- er things.
}

VerseFive = \lyricmode {
  \set stanza = "5. "
  I thank You, Lord, that You have kept
  The best in store;
  We have e -- nough, yet not too much
  To long for more;
  A yearn -- ing for a deep -- er peace
  Not known be -- fore.
}

VerseSix = \lyricmode {
  \set stanza = "6. "
  I thank You, Lord, that here our souls,
  Though am -- ply blessed,
  Can nev -- er find, al -- though they seek,
  A per -- fect rest;
  Nor ev -- er shall, un -- til they lean
  On Je -- sus' breast.
}
