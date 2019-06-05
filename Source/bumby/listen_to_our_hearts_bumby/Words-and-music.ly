\version "2.19.49"

\include "../../../../../LilypondTemplates/functions.ly"
\include "../../../../../LilypondTemplates/hymns.ly"
\include "../hymn_settings.ly"

global = {
  \key f \major
  \time 4/4
  \tempo 4 = 110
}

Title = "Listen to Our Hearts"
SongNumber = \listen_to_our_hearts_bumby_number
LeaderHints = \markup {
  \fontsize #-4
  \normal-text { "F - 4 - MI" }
}
number_on_rhs = \listen_to_our_hearts_bumby_number_rhs
FirstPage = #(if listen_to_our_hearts_bumby_number_rhs 1 2)

#(if number_on_rhs
     (begin
      (define lhs LeaderHints)
      (define rhs SongNumber))
     (begin
      (define lhs SongNumber)
      (define rhs LeaderHints)))

\header {
  title = \Title
  tune = "Listen to Our Hearts"
  meter = "Irregular"
  composer = "Geoff Moore and Steve Curtis Chapman"
  poet = "Geoff Moore"
  altered = ##f
  songNumber = \SongNumber
  lhs = \lhs
  rhs = \rhs
  copyright = "Words and Music Copyright © 1992 Primary Wave Brian (Chapman Sp Acct) Songs On The ForefrontSparrow Song"
  license = #(string-append "CCLI Song #903151, License #" bumby_ccli_license)
  tagline = ##f
}

ShowScriptureOnSheetMusic = ##t
Scripture = #"... the Spirit also helps our weakness; for we do not know how to pray as we should,
 but the Spirit Himself intercedes for us with groanings to deep for words; and He who searches the
 hearts knows what the mind of the Spirit is, because He intercedes for the saints ... (Romans 8:26-27)"

SopranoVerseMusic = {
  \autoBeamOff

  % <rest> How do you explain | If words could fall like rain
  \tag #'usePartials {
    \tag #'verseOneSlidesRhythms { \partial 2 }
    \tag #'(verseOneSheetRhythms verseTwoSheetRhythms verseTwoSlidesRhythms sheetMusicRhythms) { \partial $(ly:make-duration 0 0 5/8) }
  }
  \tag #'(verseTwoSheetRhythms verseTwoSlidesRhythms sheetMusicRhythms verseOneSheetRhythms) { f'8 }
  a'8 a'8 g'8 f'8 |
  f'1~ |
  f'2 % \bar ""

  % how do you describe | from these lips of mine
  a'8 a'8 g'8 f'8 |
  f'1~ |
  f'4. \bar ""

  % A love that goes from east to west | And if I had a thousand years,
  c'8 a'8 a'8 g'8 g'8 |
  g'4 f'8 f'8~ f'2~ |
  f'8 % \bar ""

  % and runs as deep as it is wide. | Lord, I would still run out of time.
  g'8 g'8 g'8 g'8 a'8 g'8 f'8 |
  f'1~ |
  f'4 \bar ""

  % <rest> You know all our hopes | If You listen to my heart
  \tag #'verseOneSlidesRhythms { r4 }
  \tag #'(verseTwoSheetRhythms verseTwoSlidesRhythms verseOneSheetRhythms sheetMusicRhythms) { a'8 a'8 }
  a'8 a'8 g'8 f'8 |
  f'1~ |
  f'4 % \bar ""

  % Lord, You know all our fears, | <rest> ev'ry beat will say:
  \tag #'(verseOneSheetRhythms verseOneSlidesRhythms verseTwoSheetRhythms sheetMusicRhythms) { a'8 }
  \tag #'verseTwoSlidesRhythms { r8 }
  bes'8~ bes'8 a'8 g'8 f'8 |
  f'1~ |
  f'4. % \bar ""

  % And words cannot express the love we feel | <rest> "Thank You for the Life, <rest> Thank You for the Truth
  \tag #'(verseOneSheetRhythms verseOneSlidesRhythms sheetMusicRhythms) {
    c'8 a'8 a'8 g'8 g'8 |
    g'4 f'8 f'8~ f'8 g'8~ g'8 g'8~ |
    g'4
  }
  \tag #'verseTwoSheetRhythms { c'8 a'8 }
  \tag #'verseTwoSlidesRhythms { r8 a'8 }
  \tag #'(verseTwoSheetRhythms verseTwoSlidesRhythms) {
    a'8 g'8 g'8 |
    g'4
  }
  \tag #'verseTwoSheetRhythms { f'8 f'8 }
  \tag #'verseTwoSlidesRhythms { r4 }
  \tag #'(verseTwoSheetRhythms verseTwoSlidesRhythms) {
    f'8 g'8 g'8 g'8 |
    g'4
  }
  % \bar ""

  % but we long for You to hear | <rest> Thank You for the Way."
  \tag #'(verseOneSheetRhythms verseOneSlidesRhythms verseTwoSheetRhythms sheetMusicRhythms) { g'8 g'8 }
  \tag #'verseTwoSlidesRhythms { r4 }
  g'8 a'8 g'8 f'8 |
  f'1~ |
  f'4. \bar "||"
}

AltoVerseMusic = \relative c' {
  \autoBeamOff

  % <rest> How do you explain | If words could fall like rain
  \tag #'usePartials {
    \tag #'verseOneSlidesRhythms { \partial 2 }
    \tag #'(verseOneSheetRhythms verseTwoSheetRhythms verseTwoSlidesRhythms sheetMusicRhythms) { \partial $(ly:make-duration 0 0 5/8) }
  }
  \tag #'(verseTwoSheetRhythms verseTwoSlidesRhythms sheetMusicRhythms verseOneSheetRhythms) { c8 }
  f8 f8 e8 d8 |
  d4.( c8~ c4. d8~ |
  d2) % \bar ""

  % how do you describe | from these lips of mine
  f8 f8 f8 f8 |
  d4.( e8~ e4. d8~ |
  d4.) % \bar ""

  % A love that goes from east to west | And if I had a thousand years,
  c8 f8 f8 e8 e8 |
  e4 d8 d8~ d4. e8~ |
  e8 % \bar ""

  % and runs as deep as it is wide. | Lord, I would still run out of time.
  e8 e8 e8 e8 f8 e8 d8 |
  d4.( c8~ c4. d8~ |
  d4) % \bar ""

  % <rest> You know all our hopes | If You listen to my heart
  \tag #'verseOneSlidesRhythms { r4 }
  \tag #'(verseTwoSheetRhythms verseTwoSlidesRhythms verseOneSheetRhythms sheetMusicRhythms) { f8 f8 }
  f8 f8 e8 d8 |
  d4.( c8~ c4. d8~ |
  d4) % \bar ""

  % Lord, You know all our fears, | <rest> ev'ry beat will say:
  \tag #'(verseOneSheetRhythms verseOneSlidesRhythms verseTwoSheetRhythms sheetMusicRhythms) { f8 }
  \tag #'verseTwoSlidesRhythms { r8 }
  g8~ g8 f8 e8 d8 |
  d4.( e8~ e4. d8~ |
  d4.) % \bar ""

  % And words cannot express the love we feel | <rest> "Thank You for the Life, <rest> Thank You for the Truth
  \tag #'(verseOneSheetRhythms verseOneSlidesRhythms sheetMusicRhythms) {
    c8 f8 f8 e8 e8 |
    e4 d8 d8~ d8 e8~ e8 e8~ |
    e4
  }
  \tag #'verseTwoSheetRhythms { c8 f8 }
  \tag #'verseTwoSlidesRhythms { r8 f8 }
  \tag #'(verseTwoSheetRhythms verseTwoSlidesRhythms) {
    f8 e8 e8 |
    e4
  }
  \tag #'verseTwoSheetRhythms { d8 d8 }
  \tag #'verseTwoSlidesRhythms { r4 }
  \tag #'(verseTwoSheetRhythms verseTwoSlidesRhythms) {
    d8 e8 e8 e8 |
    e4
  }
  % \bar ""

  % but we long for You to hear | <rest> Thank You for the Way."
  \tag #'(verseOneSheetRhythms verseOneSlidesRhythms verseTwoSheetRhythms sheetMusicRhythms) { e8 e8 }
  \tag #'verseTwoSlidesRhythms { r4 }
  e8 f8 e8 d8 |
  d4.( c8~ c4. d8~ |
  d4.) \bar "||"
}

TenorVerseMusic = \relative c' {
  \autoBeamOff

  % <rest> How do you explain | If words could fall like rain
  \tag #'usePartials {
    \tag #'verseOneSlidesRhythms { \partial 2 }
    \tag #'(verseOneSheetRhythms verseTwoSheetRhythms verseTwoSlidesRhythms sheetMusicRhythms) { \partial $(ly:make-duration 0 0 5/8) }
  }
  \tag #'(verseTwoSheetRhythms verseTwoSlidesRhythms sheetMusicRhythms verseOneSheetRhythms) { a8 }
  a8 a8 a8 a8 |
  bes4.( a8~ a4. bes8~ |
  bes2) % \bar ""

  % how do you describe | from these lips of mine
  d8 d8 c8 bes8 |
  a4.( g8~ g4. a8~ |
  a4.) % \bar ""

  % A love that goes from east to west | And if I had a thousand years,
  a8 a8 a8 a8 c8 |
  d4 d8 c8~ c2~ |
  c8 % \bar ""

  % and runs as deep as it is wide. | Lord, I would still run out of time.
  c8 c8 c8 c8 c8 c8 bes8 |
  a4.( g8~ g4. a8~ |
  a4) % \bar ""

  % <rest> You know all our hopes | If You listen to my heart
  \tag #'verseOneSlidesRhythms { r4 }
  \tag #'(verseTwoSheetRhythms verseTwoSlidesRhythms verseOneSheetRhythms sheetMusicRhythms) { a8 a8 }
  a8 a8 a8 a8 |
  bes4.( a8~ a4. bes8~ |
  bes4) % \bar ""

  % Lord, You know all our fears, | <rest> ev'ry beat will say:
  \tag #'(verseOneSheetRhythms verseOneSlidesRhythms verseTwoSheetRhythms sheetMusicRhythms) { d8 }
  \tag #'verseTwoSlidesRhythms { r8 }
  d8~ d8 d8 c8 bes8 |
  a4.( g8~ g4. a8~ |
  a4.) % \bar ""

  % And words cannot express the love we feel | <rest> "Thank You for the Life, <rest> Thank You for the Truth
  \tag #'(verseOneSheetRhythms verseOneSlidesRhythms sheetMusicRhythms) {
    a8 a8 a8 a8 c8 |
    d4 d8 c8~ c8 c8~ c8 c8~ |
    c4
  }
  \tag #'verseTwoSheetRhythms { a8 a8 }
  \tag #'verseTwoSlidesRhythms { r8 a8 }
  \tag #'(verseTwoSheetRhythms verseTwoSlidesRhythms) {
    a8 a8 c8 |
    d4
  }
  \tag #'verseTwoSheetRhythms { d8 c8 }
  \tag #'verseTwoSlidesRhythms { r4 }
  \tag #'(verseTwoSheetRhythms verseTwoSlidesRhythms) {
    c8 c8 c8 c8 |
    c4
  }
  % \bar ""

  % but we long for You to hear | <rest> Thank You for the Way."
  \tag #'(verseOneSheetRhythms verseOneSlidesRhythms verseTwoSheetRhythms sheetMusicRhythms) { c8 c8 }
  \tag #'verseTwoSlidesRhythms { r4 }
  c8 c8 c8 bes8 |
  a4.( g8~ g4. a8~ |
  a4.) \bar "||"
}

BassVerseMusic = \relative c {
  \autoBeamOff

  % <rest> How do you explain | If words could fall like rain
  \tag #'usePartials {
    \tag #'verseOneSlidesRhythms { \partial 2 }
    \tag #'(verseOneSheetRhythms verseTwoSheetRhythms verseTwoSlidesRhythms sheetMusicRhythms) { \partial $(ly:make-duration 0 0 5/8) }
  }
  \tag #'(verseTwoSheetRhythms verseTwoSlidesRhythms sheetMusicRhythms verseOneSheetRhythms) { d8 }
  d8 d8 d8 d8 |
  bes1~ |
  bes2 % \bar ""

  % how do you describe | from these lips of mine
  bes8 bes8 bes8 c8 |
  d1~ |
  d4. % \bar ""

  % A love that goes from east to west | And if I had a thousand years,
  d8 d8 d8 d8 d8 |
  bes4 bes8 (bes8~ bes4. c8~ |
  c8) % \bar ""

  % and runs as deep as it is wide. | Lord, I would still run out of time.
  c8 c8 c8 c8 c8 c8 c8 |
  d4.( e8~ e4. f8~ |
  f4) % \bar ""

  % <rest> You know all our hopes | If You listen to my heart
  \tag #'verseOneSlidesRhythms { r4 }
  \tag #'(verseTwoSheetRhythms verseTwoSlidesRhythms verseOneSheetRhythms sheetMusicRhythms) { d8 d8 }
  d8 d8 d8 d8 |
  bes1~ |
  bes4 % \bar ""

  % Lord, You know all our fears, | <rest> ev'ry beat will say:
  \tag #'(verseOneSheetRhythms verseOneSlidesRhythms verseTwoSheetRhythms sheetMusicRhythms) { bes8 }
  \tag #'verseTwoSlidesRhythms { r8 }
  bes8~ bes8 bes8 bes8 c8 |
  d1~ |
  d4. % \bar ""

  % And words cannot express the love we feel | <rest> "Thank You for the Life, <rest> Thank You for the Truth
  \tag #'(verseOneSheetRhythms verseOneSlidesRhythms sheetMusicRhythms) {
    d8 d8 d8 d8 d8 |
    bes4 bes8 bes8~ bes8 bes8~ bes8 c8~ |
    c4
  }
  \tag #'verseTwoSheetRhythms { d8 d8 }
  \tag #'verseTwoSlidesRhythms { r8 d8 }
  \tag #'(verseTwoSheetRhythms verseTwoSlidesRhythms) {
    d8 d8 d8 |
    bes4
  }
  \tag #'verseTwoSheetRhythms { bes8 bes8 }
  \tag #'verseTwoSlidesRhythms { r4 }
  \tag #'(verseTwoSheetRhythms verseTwoSlidesRhythms) {
    bes8 bes8 bes8 c8 |
    c4
  }
  % \bar ""
%%
  % but we long for You to hear | <rest> Thank You for the Way."
  \tag #'(verseOneSheetRhythms verseOneSlidesRhythms verseTwoSheetRhythms sheetMusicRhythms) { c8 c8 }
  \tag #'verseTwoSlidesRhythms { r4 }
  c8 c8 c8 c8 |
  d4.( e8~ e4. f8~ |
  f4.) \bar "||"
}

SopranoRefrainMusic = \relative c'' {
  \tag #'usePartials { \partial $(ly:make-duration 0 0 5/8) }
  a8 a8 c8 c8 d8 |
  d1~ |
  d2 d8 c8 a8 c8 |
  
  c1~ |
  c4. a8 a8 c8 c8 d8 |
  d1~ |
  d4. a8 d8 c8 a8 c8 |
  
  c1~ |
  c2 a8 c8 c8 d8 |
  d4 c8 c8~ c4 r8 c8 |
  
  c4 c8 c8~ c8 bes4 a8~ |
  a8 bes4 a8~ a8 g4 f8~ |
  f4 r8 f8 a8 a8 g8 f8 |
  
  f4 r8 f8 a8 a8 g16 f8. |
  g4 r8 g8 a8 a8 g8 f8 |
  f1~ |
  f4. \bar "|."
}

AltoRefrainMusic = \relative c' {
  \tag #'usePartials { \partial $(ly:make-duration 0 0 5/8) }
  r8 r2 |
  r4 f8 a8~ a4. f8~ |
  f4 f8 f8~ f4 r4 |
  
  r4 f8 a8~ a8 a4 a8~ |
  a4. r8 r4. f8 |
  
  f4 f8 f8~ f8 bes4 g8~ |
  g4. r8 r4. f8 |
  
  f4 f8 a8~ a8 f4( e8) |
  f2 f8 f8 f8 f8 |
  f4 f8 f8~ f4 r8 f8 |
  
  e4 e8 e8~ e8 e4 f8~ |
  f8 f4 f8~ f8 f4 d8~ |
  d4 r8 d8 c8 c8 c8 c8 |
  
  d4 r8 d8 d8 d8 d16 d8. |
  e4 r8 e8 e8 e8 e8 c8 |
  c2~( c8 bes4 c8~ |
  c4.) \bar "|."
}

TenorRefrainMusic = \relative c' {
  \tag #'usePartials { \partial $(ly:make-duration 0 0 5/8) }
  r8 r2 |
  r4 a8 c8~ c4. a8~ |
  a4 g8 f8~ f4 r4 |
  
  r4 a8 c8~ c8 d4 a8~ |
  a4. r8 r4. f8 |
  
  bes4 bes8 c8~ c8 d4 c8~ |
  c4. r8 r4. a8 |
  
  a4 a8 c8~ c8 a4( g8) |
  a16( g16 f4.) a8 a8 a8 bes8 |
  bes4 bes8 bes8~ bes4 r8 bes8 |
  
  g4 g8 g8~ g8 c4 c8~ |
  c8 d4 c8~ c8 bes4 a8~ |
  a4 r8 a8 a8 a8 a8 a8 |
  
  bes4 r8 bes8 bes8 bes8 bes16 bes8. |
  g4 r8 g8 g8 g8 g8 g8 |
  a2~( a8 g4 a8~ |
  a4.) \bar "|."
}

BassRefrainMusic = \relative c {
  \tag #'usePartials { \partial $(ly:make-duration 0 0 5/8) }
  f8 f8 e8 d8 c8 |
  bes1( |
  c2) c8 c8 c8 c8 |
  
  f1~ |
  f4. f8 f8 e8 d8 c8 |
  
  bes1( |
  c4.) c8 c8 c8 c8 c8 |
  
  f1~ |
  f2 f8 e8 d8 c8 |
  bes4 bes8 bes8~ bes4 r8 bes8 |
  
  c4 c8 c8~ c8 c4 f8~ |
  f8 f4 f8~ f8 c4 d8~ |
  d4 r8 d8 d8 d8 d8 d8 |
  
  bes4 r8 bes8 bes8 bes8 bes16 c8. |
  c4 r8 c8 c8 c8 c8 c8 |
  <f f,>1~ |
  <f f,>4. \bar "|."
}

AltLyricsAlign = \relative c {
  \tag #'usePartials { \partial $(ly:make-duration 0 0 5/8) }
  r8 r2 |
  r4 c8 c8~ c4. c8~ |
  c4 c8 c8~ c4 r4 |
  
  r4 c8 c8~ c8 c4 c8~ |
  c4. r8 r4. c8 |
  
  c4 c8 c8~ c8 c4 c8~ |
  c4. r8 r4. c8 |
  
  c4 c8 c8~ c8 c4. |
  c2 r2 |
  r1 |
  
  r1 |
  r1 |
  r1 |
  
  r1 |
  r1 |
  r1 |
  r4. \bar "|."
}  

SheetMusicVerseBreaks = \relative c {
  \tag #'usePartials { \partial $(ly:make-duration 0 0 5/8) }
  s8 s2 | \noBreak
  s1    | \noBreak
  s1    | \noBreak
  s1    | \noBreak
  s4.   \bar "" \break
  
  s8 s2 | \noBreak
  s1    | \noBreak
  s1    | \noBreak
  s1    | \noBreak
  s4    \bar "" \break
  
  s2.   | \noBreak
  s1    | \noBreak
  s1    | \noBreak
  s1    | \noBreak
  s4.   \bar "" \break
  
  s2 s8 | \noBreak
  s1    | \noBreak
  s4    \bar "" \break

  \newSpacingSection
  \override Score.SpacingSpanner.shortest-duration-space = #6.0
  s2.   | \noBreak
  s1    | \noBreak
  s4.   \bar "||" \pageBreak
}

SheetMusicRefrainBreaks = \relative c {
  \tag #'usePartials { \partial $(ly:make-duration 0 0 5/8) }
  s2 s8 | \noBreak
  s1    | \noBreak
  s1    | \noBreak
  s1    | \noBreak
  s4.   \bar "" \break \noPageBreak
  
  s2 s8 | \noBreak
  s1    | \noBreak
  s1    | \noBreak
  s1    | \noBreak
  s2    \bar "" \break \noPageBreak
  
  s2    | \noBreak
  s1    | \noBreak
  s1    | \noBreak
  s1    | \noBreak
  s4.   \bar "" \break \noPageBreak
  
  s2 s8 | \noBreak
  s1    | \noBreak
  s1    | \noBreak
  s1    | \noBreak
  s4.   \bar "|."
}

SlideMusicVerseOneBreaks = \relative c {
  \partial 2
  \setSystemOffset \defaultTopSystemOffset
  s2 | \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s1 | \noBreak
  s2 \bar "" \pageBreak % p1
  
  \setSystemOffset \defaultTopSystemOffset
  s2 | \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s1 | \noBreak
  s4. \bar "" \pageBreak % p2
  
  \setSystemOffset \defaultTopSystemOffset
  s8 s2 | \break

  \setSystemOffset \defaultBottomSystemOffset
  s1 | \noBreak
  s8 \bar "" \pageBreak % p3
  
  \setSystemOffset \defaultTopSystemOffset
  s8 s4 s2 | \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s1 | \noBreak
  s2 \bar "" \pageBreak % p4
  
  \setSystemOffset \defaultTopSystemOffset
  s2 | \break
  
  \setSystemOffset \defaultBottomSystemOffset
  s1 | \noBreak
  s4 \bar "" \pageBreak % p5
  
  \setSystemOffset \defaultTopSystemOffset
  s4 s2 | \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s1 | \noBreak
  s4. \bar "" \pageBreak % p6
  
  \setSystemOffset \defaultTopSystemOffset
  s8 s2 | \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s1 | \noBreak
  s4 \bar "" \pageBreak % p7
  
  \setSystemOffset \defaultTopSystemOffset
  s2. | \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s1 | \noBreak
  s4. \bar "||" \pageBreak
}

SlideMusicVerseTwoBreaks = \relative c {
  \partial $(ly:make-duration 0 0 5/8)
  \setSystemOffset \defaultTopSystemOffset
  s8 s2 | \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s1 | \noBreak
  s2 \bar "" \pageBreak % p1
  
  \setSystemOffset \defaultTopSystemOffset
  s2 | \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s1 | \noBreak
  s4. \bar "" \pageBreak % p2
  
  \setSystemOffset \defaultTopSystemOffset
  s8 s2 | \break

  \setSystemOffset \defaultBottomSystemOffset
  s1 | \noBreak
  s8 \bar "" \pageBreak % p3
  
  \setSystemOffset \defaultTopSystemOffset
  s8 s4 s2 | \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s1 | \noBreak
  s2 \bar "" \pageBreak % p4
  
  \setSystemOffset \defaultTopSystemOffset
  s2 | \break
  
  \setSystemOffset \defaultBottomSystemOffset
  s1 | \noBreak
  s4 \bar "" \pageBreak % p5
  
  \setSystemOffset \defaultTopSystemOffset
  s4 s2 | \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s1 | \noBreak
  s4. \bar "" \pageBreak % p6
  
  \setSystemOffset \defaultTopSystemOffset
  s8 s2 | \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s1 | \noBreak
  s4 \bar "" \pageBreak % p7
  
  \setSystemOffset \defaultTopSystemOffset
  s2. | \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s1 | \noBreak
  s4. \bar "||" \pageBreak
}

SlideMusicRefrainBreaks = \relative c {
  \partial $(ly:make-duration 0 0 5/8)
  \setSystemOffset \defaultTopSystemOffset
  s8 s2 | \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s1  | \noBreak
  s2  \bar "" \pageBreak % p1
  
  \setSystemOffset \defaultTopSystemOffset
  s2  | \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s1  | \noBreak
  s4. \bar "" \pageBreak % p2
  
  \setSystemOffset \defaultTopSystemOffset
  s8 s2 | \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s1  | \noBreak
  s4. \bar "" \pageBreak % p3
  
  \setSystemOffset \defaultTopSystemOffset
  s8 s2 | \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s1  | \noBreak
  s2  \bar "" \pageBreak % p4
  
  \setSystemOffset \defaultTopSystemOffset
  s2 | \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s2. s8 \bar "" \pageBreak % p5
  
  \setSystemOffset \defaultTopSystemOffset
  s8 | \noBreak
  s2. s8 \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s8 | \noBreak
  s1 | \noBreak
  s4 \bar "" \pageBreak % p6
  
  \setSystemOffset \defaultTopSystemOffset
  s2. | \noBreak
  s4  \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s2. |
  s4  \bar "" \pageBreak % p7
  
  \setSystemOffset \defaultTopSystemOffset
  s2. | \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s1  | \noBreak
  s4. \bar "|." \pageBreak % p8
}

lyricRest = \markup { \raise #1.0 \musicglyph #"rests.3" }

VerseOneLyrics = \lyricmode {
  \set stanza = "1. "
  \tag #'sheetMusicRhythms { \lyricRest }
  How do you ex -- plain,
  how do you de -- scribe
  A love that goes from east to west,
  and runs as deep as it is wide.
  \tag #'sheetMusicRhythms { \lyricRest \lyricRest }
  You know all our hopes,
  Lord, You know all our fears,
  And words can -- not ex -- press the love we feel
  but we long for You to hear.
}

VerseTwoLyrics = \lyricmode {
  \set stanza = "2. "
  If words could fall like rain
  from these lips of mine,
  And if I had a thou -- sand years,
  Lord, I would still run out of time.
  If you lis -- ten to my heart,
  \tag #'sheetMusicRhythms { \lyricRest }
  ev -- 'ry beat will say:
  \tag #'sheetMusicRhythms { \lyricRest }
  "\"Thank" You for the Life,
  \tag #'sheetMusicRhythms { \lyricRest \lyricRest }
  Thank You for the Truth,
  \tag #'sheetMusicRhythms { \lyricRest \lyricRest }
  Thank You for the "Way.\""
}

RefrainLyrics = \lyricmode {
  So lis -- ten to our hearts,
  hear our spir -- its sing
  A song of praise that flows
  from those You have re -- deemed.
  We will use the words we know
  to tell You what an awe -- some God You are.
  But words are not e -- nough
  to tell You of our love,
  so lis -- ten to our hearts.
}

AltRefrainLyrics = \lyricmode {
  O Lord, please lis -- ten,
  and hear us sing
  a sim -- ple song of praise
  from those You have re -- deemed.
}
