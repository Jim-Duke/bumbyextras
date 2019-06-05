\version "2.19.49"
#(use-modules (guile-user))

#(ly:set-option 'relative-includes #t)
\include "../../../LilypondTemplates/functions.ly"
\include "../../../LilypondTemplates/hymns.ly"
\include "../hymn_settings.ly"

global = {
  \key aes \major
  \time 4/4
  \tempo 4 = 100
}

MajorKey = ##t

%%
%% Hymn Metadata Variables
%%

Title = "I Am Crucified with Christ"
SongNumber = \i_am_crucified_with_christ_fc_number
RightFirstPage = \i_am_crucified_with_christ_fc_number_rhs
FirstPage = #(if RightFirstPage 1 2)

LeaderHints = \markup {
  \fontsize #-4
  \normal-text { "A" \musicglyph #"accidentals.flat" " - 4 - SOL" }
}

Scripture = "Serve the Spirit but not in the old way of the written code -- Romans 7:6"

ShowScriptureOnSheetMusic = ##f

\header {
  title = \Title
  tune = "UNKNOWN"
  meter = "Irregular"
  composer = "American Folk Melody"
  poet = "Galatians 2:20"
  arranger = "Gerald Moore, 1991"
  songNumber = \SongNumber
  lhs = #(if RightFirstPage LeaderHints SongNumber)
  rhs = #(if RightFirstPage SongNumber LeaderHints)
  copyright = "Copyright © 1992 Song Supplements, Inc. in Praise for the Lord.  All rights reserved."
  license = "Used by permission"
  tagline = ##f
}

SopranoVerseMusic = \relative c' {
  \tag #'usePartials { \partial 4 }
  ees8 aes8 |
  c16 c16 c4 bes8 aes4 aes16 aes16 g8 |
  f4 aes4 ees4 aes8 aes8 |
  g4. aes8 bes2 |
  ees8 ees4 des8 c4 ees,8 aes8 |
  c8 c8 c8 bes8 aes8 aes16 aes16 aes8 aes8 |
  des8 des8 des8 des16 c16 bes8 aes8 g8 ees8 |
  ees'8 ees4 des8 c8 des8 bes8 c8 |
  aes2. \bar "|."
}

AltoVerseMusic = \relative c' {
  \tag #'usePartials { \partial 4 }
  c8 ees8 |
  aes16 aes16 aes4 g8 ees4 ees16 ees16 ees8 |
  des4 des4 c4 ees8 ees8 |
  ees4. f8 g2 |
  g8 g4 bes8 aes4 c,8 ees8 |
  aes8 aes8 aes8 g8 ees8 ees16 ees16 ees8 ees8 |
  f8 f8 f8 f16 aes16 g8 f8 ees8 ees8 |
  ees8 aes4 bes8 aes8 aes8 g8 g8 |
  ees2. \bar "|."
}

TenorVerseMusic = \relative c' {
  \tag #'usePartials { \partial 4 }
  aes8 c8 |
  ees16 ees16 ees4 des8 c4 aes16 aes16 aes8 |
  aes4 aes4 aes4 c8 c8 |
  bes4. bes8 ees2 |
  bes8 bes4 ees8 ees4 aes,8 c8 |
  ees8 ees8 ees8 des8 c8 c16 c16 aes8 aes8 |
  aes8 aes8 aes8 aes16 aes16 des8 c8 bes8 g8 |
  aes8 aes4 f'8 ees8 f8 des8 ees8 |
  c2. \bar "|."
}

BassVerseMusic = \relative c' {
  \tag #'usePartials { \partial 4 }
  aes8 aes8 |
  aes16 aes16 aes4 ees8 aes,4 c16 c16 c8 |
  des4 f4 aes4 aes8 aes8 |
  ees4. ees8 ees2 |
  ees8 ees4 g8 aes4 aes8 aes8 |
  aes8 aes8 aes8 ees8 aes,8 aes16 aes16 c8 c8 |
  des8 des8 des8 des16 des16 ees8 ees8 ees8 ees8 |
  c8 c4 des8 ees8 ees8 ees8 ees8 |
  aes,2. \bar "|."
}

SheetMusicVerseBreaks = {
  \tag #'usePartials { \partial 4 }
  s4 | \noBreak
  s1 | \noBreak
  s2. \bar "" \break \noPageBreak
  
  s4 | \noBreak
  s1 | \noBreak
  s2. \bar "" \break \noPageBreak
  
  s4 | \noBreak
  s2 s4. \bar "" \break \noPageBreak
  
  s8 | \noBreak
  s2 s4. \bar "" \break \noPageBreak
  
  s8 | \noBreak
  s1 | \noBreak
  s2. \bar "|."
}

SlidesVerseBreaks = \relative c {
  \setSystemOffset \defaultTopSystemOffset
  \setSystemOffset \defaultBottomSystemOffset
}

VerseOne = \lyricmode {
  I am cru -- ci -- fied with Christ,
  nev -- er -- the -- less I live,
  Yet not I, but Christ, liv -- eth in me,
  And the life that I now live in the flesh
  I live by faith in the son of God
  Who loved me and gave him -- self for me.
}
