\version "2.18.2"

\include "../common.ly"

global = {
  \key bes \major
  \time 3/4
  \aikenHeads
}

topSystemOffset = \defaultTopSystemOffset
bottomSystemOffset = \defaultBottomSystemOffset

\header {
  title = "Just As I Am - I Come Broken"
  tune = "Just As I Am - I Come Broken"
  meter = ""
  composer = "Charlotte Elliott, David Moffitt, Sue C. Smith, Travis Cottrell, William Batchelder Bradbury"
  poet = "Charlotte Elliott, David Moffitt, Sue C. Smith, Travis Cottrell, William Batchelder Bradbury"
  songNumber = \just_as_I_am_I_come_broken_number
  songNumber_lhs = \just_as_I_am_I_come_broken_number_lhs
  songNumber_rhs = \just_as_I_am_I_come_broken_number_rhs
  copyright = \markup {
    "Copyright " \char ##x00A9 " 2009 CCTB MusicFirst Hand Revelation MusicUniversal Music - Brentwood Benson Publishing"
  }
  license = "CCLI Song #5635850, License #2055442"
  arranger = "Sam Souder"
  scripture = \markup {
    \override #'(line-width . 60)
    \center-column {
      \vspace #4
      \abs-fontsize #24
      \italic \wordwrap-string #"“Your sins shall be as white as snow” - Isaiah 1:18"
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
  s2. | \noBreak
  s2. | \break
  
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \break
  
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2  \bar "|." \break
}

slideMusicBreaks = \relative c {
  \tag #'usePartials' { \partial 4 }
  
  \setSystemOffset \topSystemOffset
  s4  | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2  \bar "" \break
  
  \setSystemOffset \bottomSystemOffset
  s4  | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2  \bar "" \break
  
  \setSystemOffset \topSystemOffset
  s4  | \noBreak
  s2. | \noBreak
  s2. | \break
  s2. | \break
  s2  \bar "" \break
  
  \setSystemOffset \bottomSystemOffset
  s4  | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2  \bar "|."
}
  
slideChorusBreaks = \relative c {
  \tag #'usePartials' { \partial 4 }
  
  % They that wait upon the Lord
  \setSystemOffset \topSystemOffset
  s4  | \noBreak
  s2. | \noBreak
  s2  \bar "" \break
  
  % shall renew their strength,
  \setSystemOffset \bottomSystemOffset
  s4  | \noBreak
  s2. | \noBreak
  s2  \bar "" \break
  
  % they shall mount up with wings
  \setSystemOffset \topSystemOffset
  s4  | \noBreak
  s2. | \noBreak
  s2  \bar "" \break
  
  % like eagles.
  \setSystemOffset \bottomSystemOffset
  s4  | \noBreak
  s2. | \noBreak
  s2  \bar "" \break
  
  % They shall run and not be weary.
  \setSystemOffset \topSystemOffset
  s4  | \noBreak
  s2. | \noBreak
  s2  \bar "" \break
  
  % They shall walk and not faint."
  \setSystemOffset \bottomSystemOffset
  s4  | \noBreak
  s2. | \noBreak
  s2  \bar "" \break
  
  % Teach me Lord, Teach me
  \setSystemOffset \topSystemOffset
  s4  | \noBreak
  s2. | \noBreak
  
  %  Lord, to wait.
  \setSystemOffset \bottomSystemOffset
  s2. | \noBreak
  s2  \bar "|."
}

%
% Notes for the Soprano part during the verses.
% No break guidance is included.
%
sopranoVerse = \relative c' {
  \tag #'usePartials' { \partial 4 }
  bes8( c8) |
  d2 d4 |
  f4( ees4) d4 |
  c4( d4) ees4 |
  d4. r8
  
  f4 |
  f4( c4) d4 |
  ees2 g4 |
  g2 f4 |
  d4. r8
  
  bes8( c8) |
  d2 d4 |
  f4( ees4) d4 |
  g2 g4 |
  bes4( a4)
  
  g4 |
  f2 f4 |
  f4( ees4) d4 |
  c2 r4 |
  f2. |
  d2.~ |
  d4 r4 \bar "|."
}

altoVerse = \relative c' {
  \tag #'usePartials' { \partial 4 }
  bes4 |
  bes2 bes4 |
  d4( c4) bes4 |
  a4( bes4) c4 |
  bes4. r8
  
  d4 |
  c4( c4) bes4 |
  c2 ees4 |
  ees2 d4 |
  bes4. r8
  
  bes4 |
  bes2 bes4 |
  d4( c4) bes4 |
  ees2 ees4 |
  ees2
  
  ees4 |
  d2 d4 |
  d4( c4) bes4 |
  a2 r4 |
  c2. |
  bes2.~ |
  bes4 r4 \bar "|."
}

tenorVerse = \relative c {
  \tag #'usePartials' { \partial 4 }
  d8( ees8) |
  f2 f4 |
  f2 f4 |
  f2 f4 |
  f4. r8
  
  bes4 |
  a4( a4) f4 |
  f2 a4 |
  bes2 bes4 |
  f4. r8
  
  d8( ees8) |
  f2 f4 |
  f2 bes4 |
  bes2 bes4 |
  g4( a4)
  
  bes4 |
  bes2 bes4 |
  bes2 f4 |
  f2 r4 |
  a2. |
  f2.~ |
  f4 r4 \bar "|."
}

bassVerse = \relative c {
  \tag #'usePartials' { \partial 4 }
  bes4 |
  bes2 bes4 |
  bes2 bes4 |
  f'2 f4 |
  bes,4. r8
  
  bes8( d8) |
  f4( f4) f4 |
  f2 f4 |
  bes,2 bes4 |
  bes4. r8
  
  bes4 |
  bes2 bes4 |
  bes4( c4) d4 |
  ees2 ees4 |
  ees2
  
  ees4 |
  bes2 bes4 |
  bes4.( c8) d8( ees8) |
  f2 r4 |
  <f f,>2.
  bes,2.~ |
  bes4 r4 \bar "|."
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
  Just as I am with -- out one plea
  but that Thy blood was shed for me,
  And that Thou bidst me come to Thee,
  O Lamb of God, I come, I Come.
}

verseTwo = \lyricmode {
  \set stanza = "2. "
  Just as I am and wait -- ing not
  to rid my soul of one dark blot.
  To Thee whose blood can cleanse each spot,
  O Lamb of God, I come, I Come.
}

verseThree = \lyricmode {
  \set stanza = "3. "
  Just as I am I would be lost,
  but mer -- cy and grace my free -- dome bought.
  And now to glo -- ry in Your cross,
  O Lamb of God, I come, I Come.
}

chorusLyrics = \lyricmode {
  "\"They" that wait up -- on the Lord shall re -- new their strength,
  They shall mount up with wings like ea -- gles.
  They shall run and not be wea -- ry.
  They shall walk and not "faint.\""
  Teach me Lord, Teach me Lord, to wait.
}