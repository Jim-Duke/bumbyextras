\version "2.19.49"

\include "../common.ly"

global = {
  \key f \major
  \time 3/4
  \aikenHeads
}

title = "Teach Me Lord to Wait"
songNumber = \teach_me_lord_to_wait_number

\header {
  title = "Teach Me Lord to Wait"
  tune = "Teach Me Lord to Wait"
  meter = ""
  composer = "Stuart Hamblen, 1953"
  poet = "Stuart Hamblen, 1953"
  songNumber = \songNumber
  songNumber_lhs = \teach_me_lord_to_wait_number_lhs
  songNumber_rhs = \teach_me_lord_to_wait_number_rhs
  copyright = \markup {
    "Copyright " \char ##x00A9 " 1953.  Renewal 1981 by Hamblen Music Co., Inc."
  }
  license = "CCLI Song #31463, License #2055442"
  arranger = "Gerald Moore, 1992"
  scripture = \markup {
    \override #'(line-width . 60)
    \center-column {
      \vspace #4
      \abs-fontsize #24
      \italic \wordwrap-string #"“But those who wait on the LORD Shall renew their strength;
         They shall mount up with wings like eagles,
         They shall run and not be weary,
         They shall walk and not faint.” (Isaiah 40:31, NKJV)"
    }
  }
  tagline = ##f
}

%
% Rhythms for the sheet music with line break controls
%
sheetMusicBreaks = \relative c {
  \tag #'usePartials' { \partial 4 }
  s4  | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2 \bar "" \break
  
  s4 | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2 \bar "" \break
  
  s4 | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2 \bar "" \break
  
  s4 | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2 \bar "|."
}

slideMusicBreaks = \relative c {
  \tag #'usePartials' { \partial 4 }
  
  \setSystemOffset \defaultTopSystemOffset
  s4  | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2 \bar "" \break
  
  \setSystemOffset \defaultBottomSystemOffset
  s4 | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2 \bar "" \break
  
  \setSystemOffset \defaultTopSystemOffset
  s4 | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2 \bar "" \break
  
  \setSystemOffset \defaultBottomSystemOffset
  s4 | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2 \bar "|."
}
  
slideChorusBreaks = \relative c {
  \tag #'usePartials' { \partial 4 }
  
  % They that wait upon the Lord
  \setSystemOffset \defaultTopSystemOffset
  s4  | \noBreak
  s2. | \noBreak
  s2  \bar "" \break
  
  % shall renew their strength,
  \setSystemOffset \defaultBottomSystemOffset
  s4  | \noBreak
  s2. | \noBreak
  s2  \bar "" \break
  
  % they shall mount up with wings
  \setSystemOffset \defaultTopSystemOffset
  s4  | \noBreak
  s2. | \noBreak
  s2  \bar "" \break
  
  % like eagles.
  \setSystemOffset \defaultBottomSystemOffset
  s4  | \noBreak
  s2. | \noBreak
  s2  \bar "" \break
  
  % They shall run and not be weary.
  \setSystemOffset \defaultTopSystemOffset
  s4  | \noBreak
  s2. | \noBreak
  s2  \bar "" \break
  
  % They shall walk and not faint."
  \setSystemOffset \defaultBottomSystemOffset
  s4  | \noBreak
  s2. | \noBreak
  s2  \bar "" \break
  
  % Teach me Lord, Teach me
  \setSystemOffset \defaultTopSystemOffset
  s4  | \noBreak
  s2. | \noBreak
  
  %  Lord, to wait.
  \setSystemOffset \defaultBottomSystemOffset
  s2. | \noBreak
  s2  \bar "|."
}

%
% Notes for the Soprano part during the verses.
% No break guidance is included.
%
sopranoVerse = \relative c' {
  \tag #'usePartials' { \partial 4 }
  c8. d16 |
  f2 f4 |
  f8.( d16 c4.) f8 |
  a4 a4 a4 |
  a8.( g16 f4) \bar ""
  
  e8. f16 |
  g4 g4 g4 |
  g4( f4) g4 |
  a4 a4 gis4 |
  a8.( g16 f4) \bar ""
  
  g8. a16 |
  bes4( bes4) bes4 |
  bes4( f4) g4 |
  a4( a4) gis4 |
  a8.( g16 f4) \bar ""
  
  e8. f16 |
  g4( g4) g4 |
  g4( a4) a8. g16 |
  f4 f4 f4 |
  f2 \bar "|."
}

altoVerse = \relative c' {
  \tag #'usePartials' { \partial 4 }
  c8. d16 |
  c2 c4 |
  c8.( d16 c4.) c8 |
  f4 f4 f4 |
  f8.( d16 c4) \bar ""
  
  c8. d16 |
  e4 e4 e4 |
  e4( d4) e4 |
  f4 f4 d4 |
  f8.( d16 c4) \bar ""
  
  c8. f16 |
  f4( f4) f4 |
  f2 f4 |
  f4( f4) f4 |
  f8.( d16 c4) \bar ""
  
  c8. d16 |
  e4( e4) e4 |
  e2 e8. e16 |
  f4 c4 d4 |
  c2 \bar "|."
}

tenorVerse = \relative c' {
  \tag #'usePartials' { \partial 4 }
  a8. a16 |
  a2 a4 |
  a8.( bes16 a4.) a8 |
  a4 a4 a4 | c8.( bes16 a4) \bar ""
  
  g8. a16 |
  bes4 bes4 bes4 |
  bes4( a4) bes4 |
  c4 c4 b4 |
  c8.( bes16 a4) \bar ""
  
  ees'8. ees16 |
  d4( d4) d4 |
  d2 des4 |
  c4( c4) b4 |
  c8.( bes16 a4) \bar ""
  
  g8. a16 |
  bes4( bes4) bes4 |
  bes4( c4) c8. bes16 |
  a4 a4 bes4 |
  a2 \bar "|."
}

bassVerse = \relative c {
  \tag #'usePartials' { \partial 4 }
  f8. f16 |
  f2 f4 |
  f4~ f4. f8 |
  f4 f4 f4 |
  f2 \bar ""
  
  c8. c16 |
  c4 c4 c4 |
  c4~ c4 c4 |
  f4 f4 f4 |
  f2 \bar ""
  
  c'8. c16 |
  bes4( bes4) bes4 |
  bes2 bes4 |
  f4( f4) f4 |
  f2 \bar ""
  
  c8. c16 |
  c4( c4) c4 |
  c2 c8. c16 |
  f4 f4 f4 |
  f2 \bar "|."
}

%
% Rhythms to align the first verse
%
verseOneAlign = \relative c {
  \tag #'usePartials' { \partial 4 }
  c8. c16 |
  c2 c4 |
  c8.( c16 c4.) c8 |
  c4 c4 c4 |
  c8.( c16 c4) \bar ""
  
  c8. c16 |
  c4 c4 c4 |
  c4( c4) c4 |
  c4 c4 c4 |
  c8.( c16 c4) \bar ""
  
  c8. c16 |
  c4 c4 c4 |
  c4( c4) c4 |
  c4 c4 c4 |
  c8.( c16 c4) \bar ""
  
  c8. c16 |
  c4( c4) c4 |
  c4( c4) c8. c16 |
  c4 c4 c4 |
  c2 \bar "|."
}


%
% Rhythms to align the second verse
%
verseTwoAlign = \relative c {
  \tag #'usePartials' { \partial 4 }
  c8. c16 |
  c2 c4 |
  c8.( c16 c4.) c8 |
  c4 c4 c4 |
  c8.( c16 c4) \bar ""
  
  c8. c16 |
  c4 c4 c4 |
  c4( c4) c4 |
  c4 c4 c4 |
  c8.( c16 c4) \bar ""
  
  c8. c16 |
  c4~ c4 c4 |
  c4~ c4 c4 |
  c4~ c4 c4 |
  c8.( c16 c4) \bar ""
  
  c8. c16 |
  c4 c4 c4 |
  c4( c4) c8. c16 |
  c4 c4 c4 |
  c2 \bar "|."
}

sopranoChorus = \relative c' {
  \tag #'usePartials' { \partial 4 }
  c8. d16 |
  f4. d8 f8. d16 |
  f8.( d16 c4) \bar ""
  
  f8. g16 |
  a2 a4 |
  a8.( g16 f4) \bar ""
  
  e8. f16 |
  g4 g4. g8 |
  g4( f4) \bar ""
  g4 |
  a4 c2~ |
  c2 f8 e8 |
  d4. d8 d8. d16 |
  d4 bes4 f'8. d16 |
  c4. d8 c8.( a16) |
  f2 c8. d16 |
  f2 f'8. d16 |
  c8( a4.) g4 |
  f2^\fermataMarkup \bar "|."
}

altoChorus = \relative c' {
  \tag #'usePartials' { \partial 4 }
  c8. d16 |
  c4. d8 c8. d16 |
  c8.( d16 c4) \bar ""
  
  c8. e16 |
  f2 f4 |
  f8.( d16 c4) \bar ""
  
  c8. d16 |
  e4 e4. e8 |
  e4( d4) \bar ""
  e4 |
  f4 f2 |
  a4( bes4) c4 |
  bes4. bes8 bes8. bes16 |
  bes4 f4 bes8. bes16 |
  a4. f8 e4 |
  f2 c8. d16 |
  c2 f8. f16 |
  f2 e4 |
  c2 \bar "|."
}

tenorChorus = \relative c' {
  \tag #'usePartials' { \partial 4 }
  a8. bes16 |
  a4. bes8 a8. bes16 |
  a8.( bes16 a4) \bar ""
  
  a8. bes16 |
  c2 c4 |
  c8.( bes16 a4) \bar ""
  
  g8. a16 |
  bes4 bes4. bes8 |
  bes4( a4) \bar ""
  bes4 |
  c4 a2 |
  f'2^"They" f4^"shall" |
  f4. f8 f8. f16 |
  f4 d4 d8. f16 |
  f4. a,8 c4 |
  a2 a8. bes16 |
  a2 d8. bes16 |
  a8( c4.) bes4 |
  a2 \bar "|."
}

bassChorus = \relative c {
  \tag #'usePartials' { \partial 4 }
  f8. f16 |
  f4. f8 f8. f16 |
  f2 \bar ""
  
  a8. g16 |
  f2 f4 |
  f2 \bar ""
  
  c8. c16 |
  c4 c4. c8 |
  c2 \bar ""
  c4 |
  f4 f2 |
  f4( g4) a4 |
  bes4. bes8 bes8. bes16 |
  bes4 bes4 bes8. bes16 |
  f4. f8 c4 |
  d2 f8. f16 |
  f2 bes,8. bes16 |
  c2 c4 |
  f2 \bar "|."
}

verseOne = \lyricmode {
  \set stanza = "1. "
  Teach me Lord, to wait right down on my knees,
  Till in Your own good time You an -- swer my pleas;
  Teach me not to re -- ly on what oth -- ers do,
  But to wait in prayer for an an -- swer from You.
}

verseTwo = \lyricmode {
  \set stanza = "2. "
  Teach me Lord, to wait while hearts are a -- flame,
  Let me hum -- ble my pride and call on Your name.
  Keep my faith re -- newed, my eyes on Thee,
  Let me be on this earth what you want me to be.
}

chorusLyrics = \lyricmode {
  "\"They" that wait up -- on the Lord shall re -- new their strength,
  They shall mount up with wings like ea -- gles.
  They shall run and not be wea -- ry.
  They shall walk and not "faint.\""
  Teach me Lord, Teach me Lord, to wait.
}
