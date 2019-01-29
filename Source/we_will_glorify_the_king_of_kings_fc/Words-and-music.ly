\version "2.19.49"
#(use-modules (guile-user))

#(ly:set-option 'relative-includes #t)
\include "../../../LilypondTemplates/functions.ly"
\include "../../../LilypondTemplates/hymns.ly"
\include "../hymn_settings.ly"

global = {
  \key ees \major
  \time 3/4
  \tempo 4 = 90
}

MajorKey = ##t

%%
%% Hymn Metadata Variables
%%

Title = "We Will Glorify The King of Kings"
SongNumber = \the_cost_bumby_number
RightFirstPage = \the_cost_bumby_number_rhs
FirstPage = #(if RightFirstPage 1 2)

LeaderHints = \markup {
  \fontsize #-4
  \normal-text { "E" \musicglyph #"accidentals.flat" " - 3 - MI" }
}

Scripture = "The Lord reigns, His is robed in majesty. -- Psalm 93:1"

ShowScriptureOnSheetMusic = ##t

\header {
  title = \Title
  tune = "GLORIFY"
  meter = "9.7.9.6"
  composer = "Twila Paris"
  poet = "Twila Paris"
  songNumber = \SongNumber
  lhs = #(if RightFirstPage LeaderHints SongNumber)
  rhs = #(if RightFirstPage SongNumber LeaderHints)
  copyright = "Words and Music Copyright © 1982 by Singspiration Music (ASCAP)."
  license = "Used by permission"
  tagline = ##f
}

SopranoVerseMusic = \relative c'' {
  \tag #'usePartials { \partial 4 }
  g8 bes8 |
  c8 bes8 bes4 f4 |
  f8 g8 g4 g8 bes8 |
  c8 bes8 bes4 f4 |
  g2
  
  g8 bes8 |
  c8 bes8 bes4 f4 |
  f8 g8 g4 g8[ bes8] |
  aes8 g8 g4 f4 |
  ees2 \bar "|."
}

AltoVerseMusic = \relative c' {
  \tag #'usePartials { \partial 4 }
  ees8 ees8 |
  ees8 ees8 d4 d4 |
  d8 ees8 ees4 ees8 ees8 |
  ees8 ees8 d4 d4 |
  ees2
  
  ees8 ees8 |
  ees8 ees8 d4 f4 |
  f8 ees8 ees4 ees4 |
  ees8 ees8 ees4 d4 |
  bes2 \bar "|."
}

TenorVerseMusic = \relative c' {
  \tag #'usePartials { \partial 4 }
  bes8 bes8 |
  aes8 bes8 bes4 bes4 |
  bes8 bes8 bes4 bes8 bes8 |
  aes8 bes8 bes4 bes4 |
  bes2
  
  bes8 bes8 |
  aes8 bes8 bes4 bes4 |
  bes8 c8 c4 bes4 |
  c8 c8 bes4 bes8[ aes8] |
  g2 \bar "|."
}

BassVerseMusic = \relative c {
  \tag #'usePartials { \partial 4 }
  ees8 g8 |
  aes8 g8 f4 bes,4 |
  bes8 ees8 ees4 ees8 g8 |
  aes8 g8 f4 bes,4 |
  ees2
  
  ees8 g8 |
  aes8 g8 f4 d4 |
  d8 c8 c4 g4 |
  aes8 aes8 bes4 bes4 |
  ees2 \bar "|."
}

SheetMusicVerseBreaks = {
  \tag #'usePartials { \partial 4 }
  s4  | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2  \bar "" \break
  
  s4  | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2  \bar "|."
}

AlignVerseMusic = \AltoVerseMusic

SlidesVerseBreaks = \relative c {
  \setSystemOffset \defaultTopSystemOffset
  s4 | \noBreak
  s1 | \noBreak
  s2. s8 \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s8 | \noBreak
  s1 | \noBreak
  s2. \bar "" \pageBreak
  
  %----------------------------------------
  
  \setSystemOffset \defaultTopSystemOffset
  s4 | \noBreak
  s1 | \noBreak
  s2. s8 \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s8 | \noBreak
  s1 | \noBreak
  s2. \bar "" \pageBreak
  
  %----------------------------------------
  
  \setSystemOffset \defaultTopSystemOffset
  s4 | \noBreak
  s1 | \noBreak
  s2. \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s4 | \noBreak
  s1 | \noBreak
  s2. \bar "|."
}

VerseOne = \lyricmode {
  \set stanza = "1. "
  We will glo -- ri -- fy the King of Kings,
  We will glo -- ri -- fy the Lamb;
  We will glo -- ri -- fy the Lord of lords,
  Who is the great I AM.
}

VerseTwo = \lyricmode {
  \set stanza = "2. "
  Lord Je -- ho -- vah reigns in maj -- es -- ty,
  We will bow be -- fore His throne;
  We ill wor -- ship Him in right -- eous -- ness,
  We wor -- ship Him a -- lone.
}

VerseThree = \lyricmode {
  \set stanza = "3. "
  He is Lord of heav -- en, Lord of earth,
  He is Lord of all who live;
  He is Lord a -- bove the u -- ni -- verse,
  All praise to Him we give.
}

VerseFour = \lyricmode {
  \set stanza = "4. "
  Hal -- le -- lu -- jah to the King of kings,
  Hal -- le -- lu -- jah to the Lamb;
  Hal -- le -- lu -- jah to the Lord of lords,
  Who is the great I AM.
}
