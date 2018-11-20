\version "2.19.49"
#(use-modules (guile-user))

#(ly:set-option 'relative-includes #t)
\include "../../../LilypondTemplates/functions.ly"
\include "../../../LilypondTemplates/hymns.ly"
\include "../hymn_settings.ly"

%%
%% Hymn Metadata Variables
%%

Title = "In Christ Alone"
SongNumber = \in_christ_alone_bumby_number

LeaderHints = \markup {
  \fontsize #-4
  \normal-text { "E" \musicglyph #"accidentals.flat" " - 3 - SOL" }
}

FirstPage = #(if in_christ_alone_bumby_number_rhs 1 2)

Scripture = "“For I am persuaded that neither death nor life,
             nor angels nor principalities nor powers, nor things present nor things
             to come, nor height nor depth, nor any other created thing, shall be able
             to separate us from the love of God which is in Christ Jesus our Lord.”
             Romans 8:38-39"

ShowScriptureOnSheetMusic = ##t

\header {
  title = \Title
  tune = "In Christ Alone"
  meter = "LMD"
  composer = "Keith Getty and Stuart Townend (2001)"
  poet = "Keith Getty and Stuart Townend (2001)"
  songNumber = \SongNumber
  lhs = #(if in_christ_alone_bumby_number_rhs LeaderHints in_christ_alone_bumby_number)
  rhs = #(if in_christ_alone_bumby_number_rhs in_christ_alone_bumby_number LeaderHints)
  copyright = "Words and Music Copyright © 2001 Thankyou Music.  All rights reserved."
  copyright_admin = "Admin. Capitol CMG Publishing"
  license = #(string-append "CCLI Song #3350395, License #" bumby_ccli_license)
  arranger = "D. J. Bulls"
  tagline = ##f
}

%%
%% Music and Lyrics Variables
%%

global = {
  \key ees \major
  \time 3/4
  \tempo 4=80
}

MajorKey = ##t

SopranoVerseMusic = \relative c' {
  \tag #'usePartials { \partial 4. }
  \set Staff.autoBeaming = ##f
  bes8 c8. ees16 |
  ees4. bes8 c8 ees8 |
  f2 g8 f16 ees16 |
  c8 g'8 f4. ees8 |
  ees4.
  
  bes8 c8. ees16 |
  ees4. bes8 c8 ees8 |
  f2 g8 f16 ees16 |
  c8 g'8 f4. ees8 |
  ees4.
  
  ees8 g8 bes8 |
  c4. c8 bes8 g8 |
  f4. ees8 ees'8 d8 |
  c4. c8 bes8 g8 |
  f4.
  
  bes,8 c8. ees16 |
  ees4. bes8 c8 ees8 |
  f2 g8 f16 ees16 |
  c8 g'8 f4. ees8 |
  ees4. \bar "|."
}

AltoVerseMusic = \relative c' {
  \tag #'usePartials { \partial 4. }
  \set Staff.autoBeaming = ##f
  bes8 c8. c16 |
  bes4. bes8 c8 ees8 |
  d2 ees8 d16 c16 |
  c8 ees8 ees4( d8) c8 |
  bes4.
  
  bes8 c8. c16 |
  bes4. bes8 c8 ees8 |
  d2 ees8 d16 c16 |
  c8 ees8 ees4( d8) c8 |
  bes4.

  ees8 ees8 g8 |
  aes4. aes8 g8 ees8 |
  d4. ees8 g8 bes8 |
  aes4. aes8 g8 ees8 |
  d4.

  bes8 c8. c16 |
  bes4. bes8 c8 ees8 |
  d2 ees8 d16 c16 |
  c8 ees8 ees4( d8) c8 |
  bes4. \bar "|."
}

TenorVerseMusic = \relative c' {
  \tag #'usePartials { \partial 4. }
  \set Staff.autoBeaming = ##f
  bes8 aes8. aes16 |
  g4. g8 aes8 aes8 |
  bes2 bes8 bes16 bes16 |
  aes8 c8 bes4. aes8 |
  g4.
  
  g8 aes8. aes16 |
  g4. g8 aes8 aes8 |
  bes2 bes8 bes16 bes16 |
  aes8 c8 bes4. aes8 |
  g4.

  g8 bes8 ees8 |
  ees4. ees8 ees8 bes8 |
  bes4. bes8 bes8 ees8 |
  ees4. ees8 ees8 bes8 |
  bes4.

  bes8 aes8. aes16 |
  g4. g8 aes8 aes8 |
  bes2 bes8 bes16 bes16 |
  aes8 c8 bes4. aes8 |
  g4. \bar "|."
}

BassVerseMusic = \relative c {
  \tag #'usePartials { \partial 4. }
  \set Staff.autoBeaming = ##f
  bes8 bes8. bes16 |
  ees4. ees8 c8 c8 |
  bes2 g8 g16 g16 |
  aes8 f8 bes4. bes8 |
  ees4.
  
  bes8 bes8. bes16 |
  ees4. ees8 c8 c8 |
  bes2 g8 g16 g16 |
  aes8 f8 bes4. bes8 |
  ees4.
  
  ees8 ees8 ees8 |
  aes4. aes8 ees8 ees8 |
  bes4. ees8 ees8 g8 |
  aes4. aes8 c,8 c8 |
  bes4.
  
  bes8 bes8. bes16 |
  ees4. ees8 c8 c8 |
  bes2 g8 g16 g16 |
  aes8 f8 bes4. bes8 |
  ees4. \bar "|."
}

AlignVerseMusic = \relative c' {
  \tag #'usePartials { \partial 4. }
  c8 c8. c16 |
  c4. c8 c8 c8 |
  c2 c8 c16 c16 |
  c8 c8 c4. c8 |
  c4.
  
  c8 c8. c16 |
  c4. c8 c8 c8 |
  c2 c8 c16 c16 |
  c8 c8 c4. c8 |
  c4.
  
  c8 c8 c8 |
  c4. c8 c8 c8 |
  c4. c8 c8 c8 |
  c4. c8 c8 c8 |
  c4.
  
  c8 c8. c16 |
  c4. c8 c8 c8 |
  c2 c8 c16 c16 |
  c8 c8 c4. c8 |
  c4. \bar "|."
}

SheetMusicVerseBreaks = \relative c {
  \tag #'usePartials { \partial 4. }
  s4. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s4. \bar "" \break
  
  s4. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s4. \bar "" \break
  
  s4. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s4. \bar "" \break
  
  s4. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s4. \bar "|."
}

SlidesVerseBreaks = \relative c {
  \tag #'usePartials { \partial 4. }

  \setSystemOffset \defaultTopSystemOffset
  s4. | \noBreak
  s2. | \noBreak
  s2  \bar "" \break

  \setSystemOffset \defaultBottomSystemOffset
  s4  | \noBreak
  s2. | \noBreak
  s4. \bar "" \break
  
  \setSystemOffset \defaultTopSystemOffset
  s4. | \noBreak
  s2. | \noBreak
  s2  \bar "" \break

  \setSystemOffset \defaultBottomSystemOffset
  s4  | \noBreak
  s2. | \noBreak
  s4. \bar "" \break
  
  \setSystemOffset \defaultTopSystemOffset
  s4. | \noBreak
  s2. | \noBreak
  s4. \bar "" \break
  
  \setSystemOffset \defaultBottomSystemOffset
  s4. | \noBreak
  s2. | \noBreak
  s4. \bar "" \break
  
  \setSystemOffset \defaultTopSystemOffset
  s4. | \noBreak
  s2. | \noBreak
  s2  \bar "" \break
  
  \setSystemOffset \defaultBottomSystemOffset
  s4  | \noBreak
  s2. | \noBreak
  s4. \bar "|." \break
}
  
VerseOne = \lyricmode {
  \set stanza = "1. "
   In Christ a -- lone my hope is found;  
   He is my light, my strength, my song;  
   This Cor -- ner -- stone, this sol -- id Ground,  
   Firm through the fier -- cest drought and storm.  
   What heights of love, what depths of peace,    
   When fears are stilled, when striv -- ings cease!  
   My Com -- fort -- er, my All in All,  
   Here in the love of Christ I stand.
}

VerseTwo = \lyricmode {
  \set stanza = "2. "
   In Christ a -- lone! who took on flesh,  
   Full -- ness of God in help -- less babe.  
   This gift of love and right -- eous -- ness,  
   Scorned by the ones He came to save.  
   Till on that cross as Je -- sus died,  
   The wrath of God was sat -- is -- fied;  
   For eve -- ry sin on Him was laid;  
   Here in the death of Christ I live.
}

VerseThree = \lyricmode {
  \set stanza = "3. "
   There in the ground His bod -- y lay,  
   Light of the world by dark -- ness slain;  
   Then burst -- ing forth in glo -- rious day,  
   Up from the grave He rose a -- gain!  
   And as He stands in vic -- to -- ry,  
   Sin's curse has lost its grip on me;  
   For I am His and He is mine,  
   Bought with the pre -- cious blood of Christ.
}

VerseFour = \lyricmode {
  \set stanza = "4. "
   No guilt in life, no fear in death,  
   This is the pow'r of Christ in me;  
   From life's first cry to fi -- nal breath,  
   Je -- sus com -- mands my des -- ti -- ny.  
   No pow'r of hell, no scheme of man,  
   Can ev -- er pluck me from His hand;  
   Till He re -- turns or calls me home,  
   Here in the pow'r of Christ I'll stand.
}
