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

SheetMusicChorusBreaks = {
  \tag #'usePartials { \partial $(ly:make-duration 0 0 5/8) }
  s8 s2 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s2 \bar "" \break
  
  s2 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s4. \bar "" \break
  
  s8 s2 | \noBreak
  s1 | \noBreak
  s2 s4. \bar "|."
}

SheetMusicCodaBreaks = {
  s1 | \noBreak
  s1 | \break
  
  s1 | \noBreak
  s1 | \break
  
  s1 | \noBreak
  s1 | \break
  
  s1 | \noBreak
  s1 | \break
  
  s1 | \noBreak
  s1 | \break
  
  s1 | \noBreak
  s1 | \break
  
  s1 | \noBreak
  s1 | \break
  
  s1 | \noBreak
  s4. \bar "" \break
  
  s8 s2 | \noBreak
  s1 | \noBreak
  s2 \bar "" \break
  
  s2 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s4. \bar "" \break
  
  s8 s2 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s2. \bar "" \break
  
  s4 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s2. \bar "" \break
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
  \setSystemOffset \defaultTopSystemOffset
  s8 s2 | \noBreak
  s2 \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s2 | \noBreak
  s2 \bar "" \pageBreak
  
  \setSystemOffset \defaultTopSystemOffset
  s2 | \noBreak
  s2 \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s2 | \noBreak
  s4. \bar "" \pageBreak
  
  \setSystemOffset \defaultTopSystemOffset
  s8 s2 | \noBreak
  s4. \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s8 s2 | \noBreak
  s4. \bar "" \pageBreak
  
  \setSystemOffset \defaultTopSystemOffset
  s8 s2 | \noBreak
  s4 \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s2. | \noBreak
  s2. s8 \bar "|."
}

SlideCodaBreaks = \relative c {
  %% pp
  \setSystemOffset \defaultTopSystemOffset
  s2 s8 \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s4. | \noBreak
  s8 \bar "" \pageBreak
  
  \setSystemOffset \defaultTopSystemOffset
  s2 \bar "" \break \noPageBreak  
  
  \setSystemOffset \defaultBottomSystemOffset
  s4. | \noBreak
  s8 \bar "" \pageBreak
  
  \setSystemOffset \defaultTopSystemOffset
  s2 \bar "" \break \noPageBreak  
  
  \setSystemOffset \defaultBottomSystemOffset
  s4. | \noBreak
  s8 \bar "" \pageBreak
  
  \setSystemOffset \defaultTopSystemOffset
  s2 \bar "" \break \noPageBreak  
  
  \setSystemOffset \defaultBottomSystemOffset
  s4. | \pageBreak

  %% p
  \setSystemOffset \defaultTopSystemOffset
  s8 s2 \bar "" \break \noPageBreak  
  
  \setSystemOffset \defaultBottomSystemOffset
  s4. | \noBreak
  s8 \bar "" \pageBreak
  
  \setSystemOffset \defaultTopSystemOffset
  s2 \bar "" \break \noPageBreak  
  
  \setSystemOffset \defaultBottomSystemOffset
  s4. | \noBreak
  s8 \bar "" \pageBreak
  
  \setSystemOffset \defaultTopSystemOffset
  s2 \bar "" \break \noPageBreak  
  
  \setSystemOffset \defaultBottomSystemOffset
  s4. | \noBreak
  s8 \bar "" \pageBreak
  
  \setSystemOffset \defaultTopSystemOffset
  s2 \bar "" \break \noPageBreak  
  
  \setSystemOffset \defaultBottomSystemOffset
  s4. | \pageBreak
  
  % f
  \setSystemOffset \defaultTopSystemOffset
  s8 s2 \bar "" \break \noPageBreak  
  
  \setSystemOffset \defaultBottomSystemOffset
  s4. | \noBreak
  s8 \bar "" \pageBreak
  
  \setSystemOffset \defaultTopSystemOffset
  s2 \bar "" \break \noPageBreak  
  
  \setSystemOffset \defaultBottomSystemOffset
  s4. | \noBreak
  s8 \bar "" \pageBreak
  
  \setSystemOffset \defaultTopSystemOffset
  s2 \bar "" \break \noPageBreak  
  
  \setSystemOffset \defaultBottomSystemOffset
  s4. | \noBreak
  s8 \bar "" \pageBreak
  
  \setSystemOffset \defaultTopSystemOffset
  s2 \bar "" \break \noPageBreak  
  
  \setSystemOffset \defaultBottomSystemOffset
  s4. | \pageBreak
  
  % ff
  \setSystemOffset \defaultTopSystemOffset
  s8 s2 \bar "" \break \noPageBreak  
  
  \setSystemOffset \defaultBottomSystemOffset
  s4. | \noBreak
  s8 \bar "" \pageBreak
  
  \setSystemOffset \defaultTopSystemOffset
  s2 \bar "" \break \noPageBreak  
  
  \setSystemOffset \defaultBottomSystemOffset
  s4. | \pageBreak
  
  % ff
  \setSystemOffset \defaultTopSystemOffset
  s8 s2 \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s4. | \noBreak
  s4. \bar "" \pageBreak
  
  % Reprise: Behold He comes
  \setSystemOffset \defaultTopSystemOffset
  s8 s2 | \noBreak
  s2 \bar "" \break \noPageBreak
  
  % riding on the clouds
  \setSystemOffset \defaultBottomSystemOffset
  s2 | \noBreak
  s2 \bar "" \pageBreak
  
  % shining like the sun
  \setSystemOffset \defaultTopSystemOffset
  s2 | \noBreak
  s2 \bar "" \break \noPageBreak
  
  % at the trumpet call
  \setSystemOffset \defaultBottomSystemOffset
  s2 | \noBreak
  s4. \bar "" \pageBreak
  
  % So lift your voice
  \setSystemOffset \defaultTopSystemOffset
  s8 s2 | \noBreak
  s4. \bar "" \break \noPageBreak
  
  % it's the year of Jubilee
  \setSystemOffset \defaultBottomSystemOffset
  s8 s2 | \noBreak
  s4. \bar "" \pageBreak
  
  % and out of Zion's Hill
  \setSystemOffset \defaultTopSystemOffset
  s8 s2 | \noBreak
  s4 \bar "" \break \noPageBreak
  
  % salvation comes
  \setSystemOffset \defaultBottomSystemOffset
  s2. | \noBreak
  s2. \bar "" \pageBreak
  
  % Who was and Who is
  \setSystemOffset \defaultTopSystemOffset
  s4 | \noBreak
  s1 | \noBreak
  s2 \bar "" \pageBreak
  
  % and Who is to come!
  \setSystemOffset \defaultTopSystemOffset
  s2 | \noBreak
  s1 | \noBreak
  s2. \bar "" \pageBreak
  
  % Who was and Who is
  \setSystemOffset \defaultTopSystemOffset
  s4 | \noBreak
  s1 | \noBreak
  s2 \bar "" \pageBreak
  
  % and Who is to come!
  \setSystemOffset \defaultTopSystemOffset
  s2 | \noBreak
  s1 | \noBreak
  s1 \bar "|."
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
  c8 aes'4 f8. ees16 |
  ees4 r4 aes8 aes8 f8 ees16 f16~ |
  f4 r4 aes8 aes8 f8 ees16 ees16~ |
  ees4 r4 aes8 aes16 bes8 aes8. |
  g4 r8 ees8 aes4 f8. ees16 |
  ees4 r8 ees16 ees16 aes8 aes8 f8 ees16 f16~ |
  f4 r8 ees8 aes8 aes8 f8 ees8 |
  ees4 ees8. ees16 ees4 ees8 ees8 |
  ees2. r8 \bar "|."
}

TenorChorusMusic = \relative c' {
  \tag #'usePartials { \partial $(ly:make-duration 0 0 5/8) }
  c8 ees4 des8. c16 |
  c4 r4 ees8 ees8 des8 c16 des16~ |
  des4 r4 ees8 ees8 des8 c16 c16~ |
  c4 r4 ees8 ees16 f8 ees8. |
  ees4 r8 c8 ees4 des8. c16 |
  c4 r8 c16 c16 ees8 ees8 des8 c16 des16~ |
  des4 r8 c8 ees8 ees8 des8 c8 |
  c4 c8. c16 bes4 bes8 c8 |
  c2. r8 \bar "|."
}

BassChorusMusic = \relative c {
  \tag #'usePartials { \partial $(ly:make-duration 0 0 5/8) }
  aes8 ees'4 ees8. ees16 |
  aes,4 r4 aes8 aes8 aes8 c16 des16~ |
  des4 r4 des8 des8 des8 des16 aes16~ |
  aes4 r4 aes8 aes16 aes8 c8. |
  ees4 r8 ees8 ees4 ees8. ees16 |
  aes,4 r8 aes16 aes16 aes8 aes8 aes8 c16 des16~ |
  des4 r8 des8 des8 des8 des8 des8 |
  aes4 aes8. c16 es4 ees8 ees8 |
  aes,2. r8 \bar "|."
}

SopranoCodaMusic = \relative c' {
  r8 c8 c8 c8 c8 c16 c16~ c8 c8 |
  r8 des8 des8 des8 des8 des16 des16~ des8 des8 |
  r8 c8 c8 c8 c8 c16 c16~ c8 c8 |
  r8 bes8 bes8 bes8 bes8 bes16 bes16~ bes8 bes8 |
  r8 ees8 ees8 ees8 ees8 ees16 ees16~ ees8 ees8 |
  r8 f8 f8 f8 f8 f16 f16~ f8 f8 |
  r8 ees8 ees8 ees8 ees8 ees16 ees16~ ees8 ees8 |
  r8 ees8 ees8 ees8 ees8 ees16 ees16~ ees8 ees8 |
  r8 aes8 aes8 aes8 aes8 aes16 aes16~ aes8 aes8 |
  r8 aes8 aes8 aes8 aes8 aes16 aes16~ aes8 aes8 |
  r8 aes8 aes8 aes8 aes8 aes16 aes16~ aes8 aes8 |
  r8 g8 g8 g8 g8 g16 g16~ g8 g8 |
  r8 c8 c8 c8 c8 c16 c16~ c8 c8 |
  r8 des8 des8 des8 des8 des16 des16~ des8 des8 |
  r8 c8 c8 c8 c8 c16 c16~ c8 c8( |
  bes4) r8
  
  ees,8 c'4 bes8.[ aes16] |
  aes2 c8 c8 bes8 aes16 aes16~ |
  aes4 r4
  
  c8 c8 bes8 aes16 aes16~ |
  aes2 c8 c16 des8 c8. |
  bes4 r8
  
  ees,8 c'4 bes8. aes16 |
  aes4. ees16 ees16 c'8 c8 bes8 aes16 aes16~ |
  aes4 r8
  
  ees8 c'8 c8 bes8 aes8 |
  aes4 aes8 g8 g4 g8 aes8 |
  aes2 r4
  
  aes8 c8 |
  c2 aes4 c4 |
  c8( bes4) r8 ges4 bes4 |
  aes2. f8 aes8 |
  aes2 r4 aes8 c8 |
  c2 aes4 c4 |
  c8( bes4) r8 ges4 bes4 |
  aes2. f8 aes8 |
  aes1 \bar "|."
}

AltoCodaMusic = \relative c' {
  r8 aes8 aes8 aes8 aes8 aes16 aes16~ aes8 aes8 |
  r8 aes8 aes8 aes8 aes8 aes16 aes16~ aes8 aes8 |
  r8 aes8 aes8 aes8 aes8 aes16 aes16~ aes8 aes8 |
  r8 g8 g8 g8 g8 g16 g16~ g8 g8 |
  r8 c8 c8 c8 c8 c16 c16~ c8 c8 |
  r8 des8 des8 des8 des8 des16 des16~ des8 des8 |
  r8 c8 c8 c8 c8 c16 c16~ c8 c8 |
  r8 bes8 bes8 bes8 bes8 bes16 bes16~ bes8 bes8 |
  r8 ees8 ees8 ees8 ees8 ees16 ees16~ ees8 ees8 |
  r8 f8 f8 f8 f8 f16 f16~ f8 f8 |
  r8 ees8 ees8 ees8 ees8 ees16 ees16~ ees8 ees8 |
  r8 ees8 ees8 ees8 ees8 ees16 ees16~ ees8 ees8 |
  r8 aes8 aes8 aes8 aes8 aes16 aes16~ aes8 aes8 |
  r8 aes8 aes8 aes8 aes8 aes16 aes16~ aes8 aes8 |
  r8 aes8 aes8 aes8 aes8 aes16 aes16~ aes8 aes8( |
  g4) r8
  
  ees8 aes4 f8.[ ees16] |
  ees2 aes8 aes8 f8 ees16 f16~ |
  f4 r4
  
  aes8 aes8 f8 ees16 ees16~ |
  ees2 aes8 aes16 bes8 aes8. |
  g4 r8
  
  ees8 aes4 f8. f16 |
  ees4. ees16 ees16 aes8 aes8 f8 ees16 f16~ |
  f4 r8
  
  ees8 aes8 aes8 f8 ees8 |
  ees4 ees8 ees8 ees4 ees8 ees8 |
  ees2 r4
  
  ees8 g8 |
  aes2 ees4 aes4 |
  aes8( ges4) r8 des4 ges4 |
  f2. des8 f8 |
  ees2 r4 ees8 aes8 |
  aes2 ees4 aes4 |
  aes8( ges4) r8 des4 ges4 |
  f2. des8 f8 |
  ees1 \bar "|."
}

TenorCodaMusic = \relative c {
  r8 ees8 ees8 ees8 ees8 ees16 ees16~ ees8 ees8 |
  r8 f8 f8 f8 f8 f16 f16~ f8 f8 |
  r8 ees8 ees8 ees8 ees8 ees16 ees16~ ees8 ees8 |
  r8 ees8 ees8 ees8 ees8 ees16 ees16~ ees8 ees8 |
  r8 aes8 aes8 aes8 aes8 aes16 aes16~ aes8 aes8 |
  r8 aes8 aes8 aes8 aes8 aes16 aes16~ aes8 aes8 |
  r8 aes8 aes8 aes8 aes8 aes16 aes16~ aes8 aes8 |
  r8 g8 g8 g8 g8 g16 g16~ g8 g8 |
  r8 c8 c8 c8 c8 c16 c16~ c8 c8 |
  r8 des8 des8 des8 des8 des16 des16~ des8 des8 |
  r8 c8 c8 c8 c8 c16 c16~ c8 c8 |
  r8 bes8 bes8 bes8 bes8 bes16 bes16~ bes8 bes8 |
  r8 ees8 ees8 ees8 ees8 ees16 ees16~ ees8 ees8 |
  r8 f8 f8 f8 f8 f16 f16~ f8 f8 |
  r8 ees8 ees8 ees8 ees8 ees16 ees16~ ees8 ees8( |
  ees4) r8
  
  c8 ees4 des8. c16 |
  c2 ees8 ees8 des8 c16 des16~ |
  des4 r4 ees8 ees8 des8 c16 c16~ |
  c2 ees8 ees16 f8 ees8. |
  ees4 r8 c8 ees4 des8. c16 |
  c4. c16 c16 ees8 ees8 des8 c16 des16~ |
  des4 r8 c8 ees8 ees8 des8 c8 |
  c4 c8 bes8 bes4 bes8 c8 |
  c2 r4
}

TenorCodaTailMusic = \relative c' {
  c8 ees8 |
  ees2 c4 ees4 |
  ees8( des4.) bes4 des4 |
  des2. aes8 ees'8 |
  c2 r4 c8 ees8 |
  ees2 c4 ees4 |
  ees8( des4.) bes4 des4 |
  des2. aes8 ees'8 |
  c1 \bar "|."
}

BassCodaMusic = \relative c {
  r8 aes8 aes8 aes8 aes8 aes16 aes16~ aes8 aes8 |
  r8 des8 des8 des8 des8 des16 des16~ des8 des8 |
  r8 aes8 aes8 aes8 aes8 aes16 aes16~ aes8 aes8 |
  r8 ees8 ees8 ees8 ees8 ees16 ees16~ ees8 ees8 |
  r8 aes8 aes8 aes8 aes8 aes16 aes16~ aes8 aes8 |
  r8 des8 des8 des8 des8 des16 des16~ des8 des8 |
  r8 aes8 aes8 aes8 aes8 aes16 aes16~ aes8 aes8 |
  r8 ees'8 ees8 ees8 ees8 ees16 ees16~ ees8 ees8 |
  r8 aes8 aes8 aes8 aes8 aes16 aes16~ aes8 aes8 |
  r8 des,8 des8 des8 des8 des16 des16~ des8 des8 |
  r8 aes'8 aes8 aes8 aes8 aes16 aes16~ aes8 aes8 |
  r8 ees8 ees8 ees8 ees8 ees16 ees16~ ees8 ees8 |
  r8 aes8 aes8 aes8 aes8 aes16 aes16~ aes8 aes8 |
  r8 des,8 des8 des8 des8 des16 des16~ des8 des8 |
  r8 aes'8 aes8 aes8 aes8 aes16 aes16~ aes8 aes8( |
  ees4) r8

  aes,8 ees'4 ees8. ees16 |
  aes,2 aes8 aes8 aes8 aes16 des16~ |
  des4 r4 des8 des8 des8 des16 aes16~ |
  aes2 aes8 aes16 aes8 c8. |
  ees4 r8 ees8 ees4 ees4 |
  aes,4. aes16 aes16 aes8 aes8 aes8 c16 des16~ |
  des4 r8 des8 des8 des8 des8 des8 |
  aes4 aes8 c8 es4 ees8 ees8 |
  aes,2 r4
}

BassCodeTailMusic = \relative c {
  r4 |
  r4 <aes' aes,>4 <aes aes,>2 |
  <ges ges,>4 <ges ges,>4 <ges ges,>2 |
  des4 des4 des4 des4 |
  aes2 r4 r4 |
  r4 <aes' aes,>4 <aes aes,>2 |
  <ges ges,>4 <ges ges,>4 <ges ges,>2 |
  des4 des4 des4 des4 |
  aes1 \bar "|."
}

AlignTopCodaMusic = \relative c' {
  c8 c8 c8 c8 c8 c16 c16~ c8 c8 |
  r8 des8 des8 des8 des8 des16 des16~ des8 des8 |
  r8 c8 c8 c8 c8 c16 c16~ c8 c8 |
  r8 bes8 bes8 bes8 bes8 bes16 bes16~ bes8 bes8 |
  ees8 ees8 ees8 ees8 ees8 ees16 ees16~ ees8 ees8 |
  r8 f8 f8 f8 f8 f16 f16~ f8 f8 |
  r8 ees8 ees8 ees8 ees8 ees16 ees16~ ees8 ees8 |
  r8 ees8 ees8 ees8 ees8 ees16 ees16~ ees8 ees8 |
  aes8 aes8 aes8 aes8 aes8 aes16 aes16~ aes8 aes8 |
  r8 aes8 aes8 aes8 aes8 aes16 aes16~ aes8 aes8 |
  r8 aes8 aes8 aes8 aes8 aes16 aes16~ aes8 aes8 |
  r8 g8 g8 g8 g8 g16 g16~ g8 g8 |
  c8 c8 c8 c8 c8 c16 c16~ c8 c8 |
  r8 des8 des8 des8 des8 des16 des16~ des8 des8 |
  c8 c8 c8 c8 c8 c16 c16~ c8 c8( |
  bes4) r8
  
  ees,8 c'4 bes4 |
  aes2 c8 c8 bes8 aes16 aes16~ |
  aes4 r4
  
  c8 c8 bes8 aes16 aes16~ |
  aes2 c8 c16 des8 c8. |
  bes4 r8
  
  ees,8 c'4 bes4 |
  aes4. ees16 ees16 c'8 c8 bes8 aes16 aes16~ |
  aes4 r8
  
  ees8 c'8 c8 bes8 aes8 |
  aes4 aes4 g4 g4 |
  aes2 r4
  
  c4 |
  c2 aes4 c4 |
  c8( bes4) r8 g4 bes4 |
  aes2. f4 |
  aes2 r4 aes4 |
  c2 aes4 c4 |
  c8( bes4) r8 g4 bes4 |
  aes2. f4 |
  aes1 \bar "|."
}

AlignBotCodaMusic = \relative c' {
  r1 |
  r1 |
  r1 |
  r1 |
  r1 |
  r1 |
  r1 |
  r1 |
  r1 |
  r1 |
  r1 |
  r1 |
  r1 |
  r1 |
  r1 |
  r1 |
  r1 |
  r1 |
  r1 |
  r1 |
  r1 |
  r1 |
  r1 |
  r1 |
  r4 c4 c2 |
  c4 c4 c2 |
  c4 c4 c4 c4 |
  c2 r2 |
  r4 c4 c2 |
  c4 c4 c2 |
  c4 c4 c4 c4 |
  c1 \bar "|."
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
  the dry bones be -- com -- ing as flesh;
  And these are the days of your serv -- ant Da -- vid,
  re -- build -- ing a tem -- ple of praise.
  And these are the days of the har -- vest,
  the fields are as white in Your world,
  and we are the la -- bor -- ers in Your vine -- yard
  de -- clar -- ing the Word of the Lord.
}

LyricPP = \markup { \musicglyph "p" \hspace #-0.5 \musicglyph "p" }
LyricP = \markup { \musicglyph "p" }
LyricF = \markup { \musicglyph "f" }
LyricFF = \markup { \musicglyph "f" \hspace #-0.5 \musicglyph "f" }

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

CodaBotLyrics = \lyricmode {
  Who was and Who is and Who is to come!
  Who was and Who is and Who is to come!
}