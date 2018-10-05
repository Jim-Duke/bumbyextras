\version "2.19.49"
#(use-modules (guile-user))

#(ly:set-option 'relative-includes #t)
\include "../../../LilypondTemplates/functions.ly"
\include "../../../LilypondTemplates/hymns.ly"
\include "../hymn_settings.ly"

global = {
  \key aes \major
  \time 4/4
  \tempo 4 = 85
}

MajorKey = ##t

%%
%% Hymn Metadata Variables
%%

Title = "Immanuel, God with Us"
SongNumber = \immanuel_god_with_us_number
RightFirstPage = \immanuel_god_with_us_number_rhs
FirstPage = #(if RightFirstPage 1 2)

LeaderHints = \markup {
  \fontsize #-4
  \normal-text { "A" \musicglyph #"accidentals.flat" " - 4 - DO" }
}

Scripture = ""

ShowScriptureOnSheetMusic = ##f

\header {
  title = \Title
  tune = "GOD WITH US"
  meter = "Irregular"
  composer = "C. E. Couchman (1993)"
  poet = "C. E. Couchmand (1993)"
  songNumber = \SongNumber
  lhs = #(if RightFirstPage LeaderHints SongNumber)
  rhs = #(if RightFirstPage SongNumber LeaderHints)
  copyright = \markup {
    \char ##x00A9 " Copyright 1993 C. E. Couchman"
  }
  license = "Used by permission"
  tagline = ##f
}

SopranoVerseMusic = \relative c'' {
  \repeat volta 3 {
    aes4 aes4 aes4 aes4 |
    aes4 aes4 g4( aes4) |
    f4. f8 f4 f4 |
    f4. ees8 ees2 |
    
    c4 f4 aes4 g8 aes8 |
    bes4 bes4 g4 aes4 |
    aes4 f4 des4 f8 aes8 |
    aes4. aes8 aes4
  }
  \alternative {
    {
      bes8( c8) |
      <des aes>4. <des aes>8 <c aes>2 |
      <bes g>4 <g ees>4 <aes ees>2 |
    }
    {
      bes8( c8) |
      <des aes>4. <des aes>8 <c aes>2 |
      <bes g>4 <g ees>4 <aes ees>4
    }
  }
  
  bes8( c8) |
  <des aes>2 <des g>2 |
  <c aes>1 \bar "|."
}

AltoVerseMusic = \relative c' {
}

TenorVerseMusic = \relative c' {
}

BassVerseMusic = \relative c {
}

SheetMusicVerseBreaks = \relative c {
}

SlidesVerseBreaks = \relative c {
%  \setSystemOffset \defaultTopSystemOffset
%  \setSystemOffset \defaultBottomSystemOffset
}

VerseOne = \lyricmode {
  \set stanza = "1. "
  God in -- car -- nate, can it be?
  Pon -- der now the mys -- ter -- y;
  He, the fount of e -- ter -- nal life,
  Must drink the cup of mor -- tal -- i -- ty.
}

VerseTwo = \lyricmode {
  \set stanza = "2. "
  Shep -- herds won -- der at the scene:
  Swad -- dling robes for de -- i -- ty;
  Heav -- en's throne now a bed of straw
  With -- in these bor -- rowed sta -- ble walls
}

VerseThree = \lyricmode {
  \set stanza = "3. "
  God Cre -- a -- tor, now cre -- at -- ed,
  Lord of all in in -- fan -- cy,
  Hands that light -- ed the eve -- ning stars
  Reach out for com -- fort in Mar -- y's arms.
}

Common = \lyricmode {
  Im -- man -- u -- el, God with us.
}

Close = \lyricmode {
  Our God with us.
}