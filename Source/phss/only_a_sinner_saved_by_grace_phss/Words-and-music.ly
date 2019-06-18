\version "2.19.49"
#(use-modules (guile-user))

#(ly:set-option 'relative-includes #t)
\include "../../../../LilypondTemplates/functions.ly"
\include "../../../../LilypondTemplates/hymns.ly"
\include "../hymn_settings.ly"

global = {
  \key c \major
  \time 4/4
  \tempo 4 = 86
}

MajorKey = ##t

%%
%% Hymn Metadata Variables
%%

Title = "Only a Sinner Saved by Grace"
SongNumber = \only_a_sinner_saved_by_grace_phss_number
RightFirstPage = \only_a_sinner_saved_by_grace_phss_number_rhs
FirstPage = #(if RightFirstPage 1 2)

LeaderHints = \markup {
  \fontsize #-4
  \normal-text { "C - 4 - MI" }
}

Scripture = "TBD"

ShowScriptureOnSheetMusic = ##f

\header {
  title = \Title
  tune = ""
  meter = "8.8.5.6.9"
  composer = "Daniel B. Towner (1905)"
  poet = "James M. Gray (1905)"
  songNumber = \SongNumber
  lhs = #(if RightFirstPage LeaderHints SongNumber)
  rhs = #(if RightFirstPage SongNumber LeaderHints)
  copyright = ""
  license = ##f
  tagline = ##f
}

AlignVerseMusic = {
  \bar ".|:" c4 c8. c16 c8 c4. |
  c4 c4 c2 |
  c4 c8. c16 c8 c4. |
  c4 c4 c2 |
  
  c4 c8. c16 c8 c4 c8 |
  c4 c8. c16 c8 c4 c8 |
  c4 c8. c16 c8 c4. |
  c4 c4 c2 \bar ":|."
}

SopranoVerseMusic = \relative c' {
  \bar ".|:" e4 g8. g16 a8 g4. |
  c,4 d4 e2 |
  g4 c8. c16 d8 c4. |
  c4 d4 e2 |
  
  e4 e8. d16 d8 c4 c8 |
  c4 c8. a16 a8 g4 g8 |
  a4 c8. a16 g8 c4. |
  d4 b4 c2 \bar ":|."
}

AltoVerseMusic = \relative c' {
  \bar ".|:" c4 e8. e16 f8 e4. |
  c4 b4 c2 |
  e4 e8. e16 f8 e4. |
  a4 a4 gis2 |
  
  g4 g8. f16 f8 e4 g8 |
  f4 f8. f16 f8 e4 e8 |
  f4 a8. f16 e8 e4. |
  f4 d4 e2 \bar ":|."
}

TenorFirstSystemMusic = \relative c' {
  \bar ".|:" g4 c8. c16 c8 c4. |
  g4 g4 g2 |
  c4 g8. g16 g8 g4. |
  a4 a4 b2 |
}

TenorFirstSystemRest = {
  \bar ".|:" r1 |
  r1 |
  r1 |
  r1 |
}

TenorSecondSystemMusic = \relative c' {
  c4 c8. b16 c8 c4 bes8 |
  a4 a8. c16 c8 c4 c8 |
  c4 c8. c16 c8 c4. |
  a4 g4 g2 \bar ":|."
}

TenorVerseMusic = {
  \TenorFirstSystemMusic
  \TenorSecondSystemMusic
}

BassVerseMusic = \relative c {
  \bar ".|:"
  c4 c8. c16 c8 c4. |
  e4 d4 c2 |
  c4 g'8. g16 g8 g4. |
  a4 f4 e2 |
  
  c4 g'8. g16 c,8 c4 e8 |
  f4 f8. f16 c8 c4 c8 |
  f4 f8. f16 c8 c4. |
  f4 g4 c,2 \bar ":|."
}

BassVerseRest = {
  \bar ".|:"
  r1 |
  r1 |
  r1 |
  r1 |
  
  r1 |
  r1 |
  r1 |
  r1 \bar ":|."
}

SheetMusicVerseBreaks = \relative c {
  \bar ".|:"
  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 | \break \noPageBreak

  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 \bar ":|."
}

SlidesVerseBreaks = \relative c {
  \setSystemOffset \defaultTopSystemOffset
  \setSystemOffset \defaultBottomSystemOffset
}

VerseOne = \lyricmode {
  On -- ly a sin -- ner saved by grace, On -- ly a sin -- ner saved by grace;
  This is my sto -- ry To God be the glo -- ry I'm on -- ly a sin -- ner saved by grace!
}