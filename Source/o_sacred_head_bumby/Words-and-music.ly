\version "2.19.49"
#(use-modules (guile-user))

#(ly:set-option 'relative-includes #t)
\include "../../../LilypondTemplates/functions.ly"
\include "../../../LilypondTemplates/hymns.ly"
\include "../hymn_settings.ly"

global = {
  \key c \major
  \time 4/2
  \tempo 2 = 80
}

MajorKey = ##t

%%
%% Hymn Metadata Variables
%%

Title = "O Sacred Head"
SongNumber = \o_sacred_head_bumby_number
RightFirstPage = \o_sacred_head_bumby_number_rhs
FirstPage = #(if RightFirstPage 1 2)

LeaderHints = \markup {
  \fontsize #-4
  \normal-text { "C - 4 - MI" }
}

Scripture = "And after twisting together a crown of thorns, they put it on
 His head, and a reed in His right hand; and they knelt down before Him
 and mocked Him, saying, \"Hail, King of the Jews!\"  They spat on Him,
 and took the reed and began to beat Him on the head.  After they had mocked
 Him, they took the scarlet robe off Him and put His own garments back on
 Him, and led Him away to crucify Him. -- Matthew 27:29-31 NASB95"

ShowScriptureOnSheetMusic = ##t

\header {
  title = \Title
  tune = "PASSION CHORALE"
  meter = "7.6.7.6 D"
  composer = "Hans L. Hassler (1601)"
  arranger = "Johann S. Bach"
  poet = "Annulf, Abbot of Villers-la-Ville"
  translator = "Paul Gerhardt (German), James W. Alexander (English)"
  songNumber = \SongNumber
  lhs = #(if RightFirstPage LeaderHints SongNumber)
  rhs = #(if RightFirstPage SongNumber LeaderHints)
  copyright = "Public Domain"
  license = ##f
  tagline = ##f
}

SopranoVerseMusic = \relative c' {
  \tag #'usePartials { \partial 2 }
  e2 |
  a2 g2 f2 e2 |
  d1 e2 b'2 |
  c2 c2 b4( a4) b2 |
  a1.

  e2 |
  a2 g2 f2 e2 |
  d1 e2 b'2 |
  c2 c2 b4( a4) b2 |
  a1.
  
  c2 |
  b4( a4) g2 a2 b2 |
  c1 c2 g2 |
  a2 g2 f2 f2 |
  e1.
  
  c'2 b4( c4) d2 c2 b2 |
  a1 b2 e,2 |
  f2 e2 d2 g2 |
  e1. \bar "|."
}

AltoVerseMusic = \relative c' {
  \tag #'usePartials { \partial 2 }
  c2 |
  c2 c2 c4( d4) d4( c4) |
  c2( b2) c2 d2 |
  c4( d4) e2 e2 e4( d4) |
  c1.
  
  c2 |
  c2 c2 c4( d4) d4( c4) |
  c2( b2) c2 d2 |
  c4( d4) e2 e2 e4( d4) |
  c1.
  
  a'4( g4) |
  f2 e4( d4) c2 f2 |
  f2( e4 d4) e2 e2 |
  f2 e2 e2 d2 |
  cis1.
  
  d2 |
  d2 d2 e2 d2 |
  e2( d2) d2 c2 |
  c4( b4) c2 c2 b2 |
  c1. \bar "|."
}

TenorVerseMusic = \relative c' {
  \tag #'usePartials { \partial 2 }
  g2 |
  f2 e2 a4( g4) g2 |
  a2( g2) g2 gis2 |
  e2 a2 a2 gis2 |
  a1.
  
  g2 |
  f2 e2 a4( g4) g2 |
  a2( g2) g2 gis2 |
  e2 a2 a2 gis2 |
  a1.

  e'2 |
  d4( c4) b2 a4( g4) f4( g4) |
  a2( g4 f4) g2 c2 |
  c2 c4( b4) a2 a2 |
  a1.
  
  a2 |
  g2 g4( fis4) g4( a4) b4( g4) |
  g4( a4 fis2) g2 g2 |
  f2 g2 a2 d,4( g4) |
  g1. \bar "|."
}

BassVerseMusic = \relative c {
  \tag #'usePartials { \partial 2 }
  c2 |
  f2 e2 a,4( b4) c2 |
  f,2( g2) c2 b2 |
  a4( b4) c4( d4) e2 e2 |
  a,1.
  
  c2 |
  f2 e2 a,4( b4) c2 |
  f,2( g2) c2 b2 |
  a4( b4) c4( d4) e2 e2 |
  a,1.
  
  a'2 |
  d,2 e2 f4( e4) d2 |
  c1 c2 c2 |
  f2 c2 d4( e4) f4( g4) |
  a1.
  
  fis2 |
  g2 b,2 e4( fis4) g2 |
  c,2( d2) g,2 c4( b4) |
  a2 g2 f2 g2 |
  c1. \bar "|."
}

SheetMusicVerseBreaks = \relative c {
  \tag #'usePartials { \partial 2 }
  s2 | \noBreak
  s1 s1 | \noBreak
  s1 s1 | \noBreak
  s1 s1 | \noBreak
  s1. \bar "" \break \noPageBreak
  
  s2 | \noBreak
  s1 s1 | \noBreak
  s1 s1 | \noBreak
  s1 s1 | \noBreak
  s1. \bar "" \break \noPageBreak
  
  s2 | \noBreak
  s1 s1 | \noBreak
  s1 s1 | \noBreak
  s1 s1 | \noBreak
  s1. \bar "" \break \noPageBreak
  
  s2 | \noBreak
  s1 s1 | \noBreak
  s1 s1 | \noBreak
  s1 s1 | \noBreak
  s1. \bar "|." \break
}

SlidesVerseBreaks = \relative c {
  \tag #'usePartials { \partial 2 }
  \setSystemOffset \defaultTopSystemOffset
  s2 | \noBreak
  s\breve | \noBreak
  s1. \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s2 | \noBreak
  s\breve | \noBreak
  s1. \bar "" \pageBreak
  
  %-------------------------------------------
  
  \setSystemOffset \defaultTopSystemOffset
  s2 | \noBreak
  s\breve | \noBreak
  s1. \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s2 | \noBreak
  s\breve | \noBreak
  s1. \bar "" \pageBreak
  
  %-------------------------------------------
  
  \setSystemOffset \defaultTopSystemOffset
  s2 | \noBreak
  s\breve | \noBreak
  s1. \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s2 | \noBreak
  s\breve | \noBreak
  s1. \bar "" \pageBreak
  
  %-------------------------------------------
  
  \setSystemOffset \defaultTopSystemOffset
  s2 | \noBreak
  s\breve | \noBreak
  s1. \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s2 | \noBreak
  s\breve | \noBreak
  s1. \bar "" \pageBreak
  
  %-------------------------------------------
  
}

VerseOne = \lyricmode {
  \set stanza = "1. "
  O sa -- cred head! now wound -- ed,
  With grief and shame weighed down,
  Now scorn -- ful -- ly sur -- round -- ed
  With thorns, thy on -- ly crown;
  O sa -- cred Head! what glo -- ry,
  What bliss, till now was thine!
  Yet, though de -- spised and go -- ry,
  I joy to call thee mine.
}

VerseTwo = \lyricmode {
  \set stanza = "2. "
  O no -- blest brow, and dear -- est!
  In oth -- er days the world
  All feared, when thou ap -- pear -- ed’st,
  What shame on thee is hurled!
  How art thou pale with an -- guish,
  With sore a -- buse and scorn;
  How does that vis -- age lan -- guish,
  Which once was bright as morn.
}

VerseThree = \lyricmode {
  \set stanza = "3. "
  What thou, my Lord, hast suf -- fered,
  Was all for sin -- ners’ gain:
  Mine, mine was the trans -- gres -- sion,
  But thine the dead -- ly pain.
  Lo! here I fall, my Sa -- viour,
  ’Tis I de -- serve thy place;
  Look on me with thy fa -- vor,
  Vouch -- safe to me thy grace.
}

VerseFour = \lyricmode {
  \set stanza = "4. "
  What lan -- guage shall I bor -- row
  To thank thee, dear -- est Friend,
  For this, thy dy -- ing sor -- row,
  Thy pi -- ty with -- out end?
  Oh! make me thine for -- ev -- er,
  And should I faint -- ing be,
  Lord let me nev -- er, nev -- er
  Out -- live my love to thee.
}

VerseFive = \lyricmode {
  \set stanza = "5. "
  Be near me when I'm dy -- ing,
  Oh! show thy cross to me;
  And for my suc -- cor fly -- ing,
  Come, Lord, and set me free!
  These eyes new faith re -- ceiv -- ing.
  From Je -- sus shall not move,
  For he who dies be -- liev -- ing,
  Dies safe -- ly through thy love.
}
