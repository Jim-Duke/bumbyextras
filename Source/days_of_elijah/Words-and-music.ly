\version "2.19.49"

\include "../../../LilypondTemplates/functions.ly"
\include "../../../LilypondTemplates/hymns.ly"
\include "../hymn_settings.ly"

global = {
  \key aes \major
  \time 4/4
  \tempo 4 = 100
}

MajorKey = ##t

title = "Days of Elijah"
songNumber = \days_of_elijah_number
leaderHints = \markup {
  \fontsize #-4
  \normal-text { "A" \musicglyph #"accidentals.flat" " - 4 - SOL" }
}
number_on_rhs = \days_of_elijah_number_rhs
FirstPage = #(if number_on_rhs 1 2)

#(if number_on_rhs
     (begin
      (define lhs leaderHints)
      (define rhs songNumber))
     (begin
      (define lhs songNumber)
      (define rhs leaderHints)))

\header {
  title = "Days of Elijah"
  tune = "Days of Elijah"
  meter = "Irregular"
  composer = "Robin Mark"
  poet = "Robin Mark"
  songNumber = \songNumber
  lhs = \lhs
  rhs = \rhs
  copyright = \markup {
    \char ##x00A9 " Copyright 1996 by Daybreak Music.  All rights reserved."
  }
  license = #(string-append "CCLI Song #1537904, License #" ccli_license)
  tagline = ##f
}

Scripture = #"“Behold, He is coming with the clouds, and every eye will see Him...” -- Revelation 1:7"

%
% Rhythms for the sheet music with line break controls
%
SheetMusicVerseBreaks = \relative c {
  \tag #'usePartials { \partial 8 }
  s8 | \noBreak
  s1 | \noBreak
  s2 s4. \bar "" \break \noPageBreak
  
  s8 | \noBreak
  s1 | \noBreak
  s2 s4. \bar "" \break \noPageBreak
  
  s8 | \noBreak
  s1 | \noBreak
  s2 s4. \bar "" \break \noPageBreak
  
  s8 | \noBreak
  s1 | \noBreak
  s2 s4. \bar "" \break \noPageBreak
  
  s8 | \noBreak
  s1 | \noBreak
  s2 s4. \bar "" \break \noPageBreak
  
  s8 | \noBreak
  s1 | \noBreak
  s2 s4. \bar "" \break
  
  s8 | \noBreak
  s1 | \noBreak
  s2 s4. \bar "" \break
  
  s8 | \noBreak
  s1 | \noBreak
  s4. \bar "||" \break
}

SlideMusicBreaks = \relative c {
  \setSystemOffset \defaultTopSystemOffset
  \tag #'(verseOneSheetRhythms verseTwoSheetRhythms verseTwoSlideRhythms sheetRhythms) {
    \tag #'usePartials { \partial 8 }
    s8 | \noBreak
  }
  s2 s4. \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s8 | \noBreak
  s2 s4. \bar "" \pageBreak

  \setSystemOffset \defaultTopSystemOffset
  s8 | \noBreak
  s2 s4. \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s8 | \noBreak
  s2 s4. \bar "" \pageBreak

  \setSystemOffset \defaultTopSystemOffset
  s8 | \noBreak
  s2 s4. \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s8 | \noBreak
  s2 s4. \bar "" \pageBreak

  \setSystemOffset \defaultTopSystemOffset
  s8 | \noBreak
  s2 s4. \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s8 | \noBreak
  s2 s4. \bar "" \pageBreak

  \setSystemOffset \defaultTopSystemOffset
  s8 | \noBreak
  s2 s4. \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s8 | \noBreak
  s2 s4. \bar "" \pageBreak

  \setSystemOffset \defaultTopSystemOffset
  s8 | \noBreak
  s2 s4. \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s8 | \noBreak
  s2 s4. \bar "" \pageBreak

  \setSystemOffset \defaultTopSystemOffset
  s8 | \noBreak
  s2 s4. \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s8 | \noBreak
  s2 s4. \bar "" \pageBreak

  \setSystemOffset \defaultTopSystemOffset
  s8 | \noBreak
  s2 s4. \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s8 | \noBreak
  s2 s4. \bar "" \pageBreak
}
  
SlideChorusBreaks = \relative c {
  \tag #'usePartials { \partial $(ly:make-duration 0 0 5/8) }
%  \setSystemOffset \defaultTopSystemOffset
%  \setSystemOffset \defaultBottomSystemOffset
}

SopranoVerseMusic = \relative c' {
  \tag #'(verseOneSheetRhythms verseTwoSheetRhythms verseTwoSlideRhythms sheetRhythms) {
    \tag #'usePartials { \partial 8 }
    ees8 |
  }
  ees8. ees8. ees8 ees4 ees8 ees8 |
  ees8. f16~ f2 r8 ees8 |
  ees8. ees8. ees8 ees8. des8. c8 |
  c2. r8
  
  ees8 |
  ees8. ees8. ees8 ees4 ees8 ees8 |
  ees8. ees8. r8 ees8. f8.
  
  \tag #'(sheetRhythms verseTwoSheetRhythms verseTwoSlideRhythms verseOneSheetRhythms) { ees8 }
  \tag #'(verseOneSlideRhythms) { r8 } |
  ees8. ees8. ees8 ees8. des8. c8 |
  c2. r8
  
  g'8 |
  g8. g8. g8 g4 g8 g8 |
  g8. aes16~ aes2 r8
  aes8 |
  aes8. aes8. aes8 aes8. aes8. bes8 |
  bes2. r8
  
  ees,8 |
  ees8. ees8. ees8 ees4 ees8 ees8 |
  ees8. f8. r8 ees8. f8.
  
  aes8 |
  aes4 aes8 aes16 aes16~ aes4 g8 aes16 aes16~ |
  aes4 r8 \bar "||"
}

AltoVerseMusic = \relative c' {
  \tag #'(verseOneSheetRhythms verseTwoSheetRhythms verseTwoSlideRhythms sheetRhythms) {
    \tag #'usePartials { \partial 8 }
    c8 |
  }
  c8. c8. c8 c4 c8 c8 |
  des8. des16~ des2 r8 des8 |
  c8. c8. c8 bes8. bes8. bes8 |
  c2. r8
  
  c8 |
  c8. c8. c8 c4 c8 c8 |
  des8. des8. r8 des8. des8.
  
  \tag #'(sheetRhythms verseTwoSheetRhythms verseTwoSlideRhythms verseOneSheetRhythms) { des8 }
  \tag #'(verseOneSlideRhythms) { r8 } |
  c8. c8. c8 c8. bes8. bes8 |
  aes2. r8
  
  ees'8 |
  ees8. ees8. ees8 ees4 ees8 ees8 |
  ees8. f16~ f2 r8 f8 |
  f8. f8. f8 f8. f8. aes8 |
  aes2( g4) r8
  
  ees8 |
  c8. c8. c8 c4 c8 c8 |
  des8. des8. r8 des8. des8.
  
  des8 |
  ees4 ees8 ees16 ees16~ ees4 ees8 ees16 ees16~ |
  ees4 r8 \bar "||"
}

TenorVerseMusic = \relative c' {
  \tag #'(verseOneSheetRhythms verseTwoSheetRhythms verseTwoSlideRhythms sheetRhythms) {
    \tag #'usePartials { \partial 8 }
    aes8 |
  }
  aes8. aes8. aes8 aes4 aes8 aes8 |
  aes8. aes16~ aes2 r8 aes8 |
  aes8. aes8. aes8 aes8. g8. g8 |
  aes2. r8
  
  aes8 |
  aes8. aes8. aes8 aes4 aes8 aes8 |
  aes8. aes8. r8 aes8. aes8.
  
  \tag #'(sheetRhythms verseTwoSheetRhythms verseTwoSlideRhythms verseOneSheetRhythms) { aes8 }
  \tag #'(verseOneSlideRhythms) { r8 } |
  aes8. aes8. aes8 aes8. g8. g8 |
  ees2. r8
  
  c'8 |
  c8. c8. c8 c4 c8 c8 |
  c8. c16~ c4~ c4 r8 c8 |
  des8. des8. des8 des8. des8. des8 |
  ees2. r8
  
  aes,8 |
  aes8. aes8. aes8 aes4 aes8 aes8 |
  aes8. aes8. r8 aes8. aes8.
  
  aes8 |
  c4 c8 c16 bes16~ bes4 bes8 bes16 c16~ |
  c4 r8 \bar "||"
}

BassVerseMusic = \relative c {
  \tag #'(verseOneSheetRhythms verseTwoSheetRhythms verseTwoSlideRhythms sheetRhythms) {
    \tag #'usePartials { \partial 8 }
    aes8 |
  }
  aes8. aes8. aes8 aes4 aes8 aes8 |
  des8. des16~ des2 r8 des8 |
  aes8. aes8. aes8 ees'8. ees8. ees8 |
  aes,2. r8
  
  aes8 |
  aes8. aes8. aes8 aes4 aes8 aes8 |
  des8. des8. r8 des8. des8.
  
  \tag #'(sheetRhythms verseTwoSheetRhythms verseTwoSlideRhythms verseOneSheetRhythms) { des8 }
  \tag #'(verseOneSlideRhythms) { r8 } |
  aes8. aes8. aes8 ees'8. ees8. ees8 |
  aes,2. r8
  
  c8 |
  c8. c8. c8 c4 c8 c8 |
  f8. f16~ f4( ees4) r8 ees8 |
  des8. des8. des8 bes8. bes8. bes8 |
  ees2. r8
  
  ees8 |
  aes,8. aes8. aes8 aes4 aes8 aes8 |
  des8. des8. r8 des8. des8.
  
  des8 |
  aes4 aes8 aes16 ees'16~ ees4 ees8 ees16 aes,16~ |
  aes4 r8 \bar "||"
}

SheetMusicAlign = \SopranoVerseMusic

SopranoChorusMusic = \relative c' {
  \tag #'usePartials { \partial $(ly:make-duration 0 0 5/8) }
  ees8 c'4 bes8.( aes16) |
  aes4 r4 c8 c8 bes8 aes16 aes16~ |
  aes4 r4 c8 c8 bes8 aes16 aes16~ |
  aes4 r4 c8 c16 des8 c8. |
  bes4 r8 ees,8 c'4 bes8.( aes16) |
  aes4 r8 ees16 ees16 c'8 c8 bes8 aes16 aes16~ |
  aes4 r8 ees8 c'8 c8 bes8 aes8 |
  aes4 aes8.( g16) g4 g8( aes8) |
  aes2. r8 \bar "|."
}

AltoChorusMusic = \relative c' {
  \tag #'usePartials { \partial $(ly:make-duration 0 0 5/8) }
}

TenorChorusMusic = \relative c' {
  \tag #'usePartials { \partial $(ly:make-duration 0 0 5/8) }
}

BassChorusMusic = \relative c {
  \tag #'usePartials { \partial $(ly:make-duration 0 0 5/8) }
}

VerseOneLyrics = \lyricmode {
  \set stanza = "1. "
  \tag #'sheetMusicVerseOne { \markup { \musicglyph "rests.3" } } These are the days of E -- li -- jah
  de -- clar -- ing the Word of the Lord;
  And these are the days of Your serv -- ant Mo -- ses,
  \tag #'sheetMusicVerseOne { \markup { \musicglyph "rests.3" } } right -- eous -- ness be -- ing re -- stored.
  And tho' these are days of great tri -- als,
  of fam -- ine and dark -- ness and sword;
  Still we are the voice in the de -- sert cry -- ing,
  "\"Pre" -- pare ye the way of the "Lord.\""
}

VerseTwoLyrics = \lyricmode {
  \set stanza = "2. "
  And these are the days of E -- ze -- kiel,
  the dry bones be -- come -- ing as flesh;
  And these are the days of your serv -- ant Da -- vid,
  re -- build -- ing a tem -- ple of praise.
  And these are the days of the har -- vest,
  the fields are as white in Your world,
  and we are the la -- bor -- ers in Your vine -- yard
  de -- clar -- ing the Word of the Lord.
}

LyricPP = \markup { \musicglyph "p" \musicglyph "p" }
LyricP = \markup { \musicglyph "p" }
LyricF = \markup { \musicglyph "f" }
LyricFF = \markup { \musicglyph "f" \musicglyph "f" }

ChorusLyrics = \lyricmode {
  Be -- hold, He comes rid -- ing on the clouds,
  shin -- ing like the sun at the trum -- pet call.
  So lift your voice, it's the year of Ju -- bi -- lee,
  and out of Zi -- on's Hill sal -- va -- tion comes.
}

CodaLyrics = \lyricmode {
  \LyricPP There's no God like Je -- ho -- vah.
  There's no God like Je -- ho -- vah.
  There's no God like Je -- ho -- vah.
  There's no God like Je -- ho -- vah.
  \LyricP There's no God like Je -- ho -- vah.
  There's no God like Je -- ho -- vah.
  There's no God like Je -- ho -- vah.
  There's no God like Je -- ho -- vah.
  \LyricF There's no God like Je -- ho -- vah.
  There's no God like Je -- ho -- vah.
  There's no God like Je -- ho -- vah.
  There's no God like Je -- ho -- vah.
  \LyricFF There's no God like Je -- ho -- vah.
  There's no God like Je -- ho -- vah.
  \LyricFF There's no God like Je -- ho -- vah.
  Be -- hold, He comes rid -- ing on the clouds,
  shin -- ing like the sun at the trum -- pet call.
  So lift your voice, it's the year of Ju -- bi -- lee,
  and out of Zi -- on's Hill sal -- va -- tion comes.
  Who was and Who is and Who is to come!
  Who was and Who is and Who is to come!
}
