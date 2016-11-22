\version "2.19.49"

\include "../common.ly"

global = {
  \key e \major
  \time 4/4
  \aikenHeads
}

title = "Just For Today"
songNumber = \just_for_today_number

\header {
  title = \title
  tune = "FATHER GOD"
  meter = "7.8.7.8 Chorus"
  composer = "Marc Schelske (1995)"
  poet = "Marc Schelske (1995)"
  altered = ##t
  songNumber = \songNumber
  songNumber_lhs = \just_for_today_number_lhs
  songNumber_rhs = \just_for_today_number_rhs
  copyright = \markup { \char ##x00A9 " Copyright 1995 Marc Schelske Music." }
  license = "CCLI Song #1984677, License #2055442"
  arranger = "Jim Duke"
  tagline = ##f
  scripture = \markup {
    \override #'(line-width . 70)
    \center-column {
      \vspace #2
      \abs-fontsize #24
      \italic \wordwrap-string #"TBD"
    }
  }
}

sheetMusicVerseBreaks = \relative c {
  \tag #'usePartials { \partial 4 }
  s4    | \noBreak
  s1    | \noBreak
  s2 s8 \bar "" \break
  
  s4. | \noBreak
  s1  | \noBreak
  s2. \bar "" \break

  s4  | \noBreak
  s1  | \noBreak
  s2 s8 \bar "" \break
  
  s4. | \noBreak
  s1  | \noBreak
  s2. \bar "|."
}

sheetMusicRefrainBreaks = \relative c {
  \tag #'usePartials { \partial 4 }
  c4  | \noBreak
  c2. \bar "" \break
  
  c4  | \noBreak
  c2. \bar "" \break
  
  c4  | \noBreak
  c1  | \noBreak
  c2. \bar "" \break

  c4  | \noBreak
  c2. \bar "" \break
  
  c4  | \noBreak
  c2. \bar "" \break
  
  c4  | \noBreak
  c1  | \noBreak
  c2. \bar "" \break
}

%{
slideMusicVerseBreaks = \relative c {
  \setSystemOffset \defaultTopSystemOffset
  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 | \break

  \setSystemOffset \defaultBottomSystemOffset
  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 | \break

  \setSystemOffset \defaultTopSystemOffset
  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 | \break

  \setSystemOffset \defaultBottomSystemOffset
  s1 | \noBreak
  s1 | \noBreak
  s1 | \noBreak
  s1 \bar "|."
}
%}

sopranoVerse = \relative c' {
  \tag #'usePartials { \partial 4 }
  \autoBeamOff
  e8 fis8 |
  gis2~ gis8 gis8 a8. gis16 |
  gis4( fis4.)
  
  gis8 gis8 fis8 |
  e2~ e8 cis8 e8 fis8 |
  \autoBeamOn
  gis4~( gis16 a16 gis8 fis4)
  \autoBeamOff
  
  e8 fis8 |
  gis2~ gis8 gis8 a8 b8 |
  \autoBeamOn
  b8.( gis16 fis4.)
  \autoBeamOff

  b8 b8 a8 |
  a2~ a8 cis,8 e8 fis8 |
  \autoBeamOn
  gis4~( gis16 a16 gis8 fis4) \bar "|."
  \autoBeamOff
}

altoVerse = \relative c' {
  \tag #'usePartials { \partial 4 }
  \autoBeamOff
  b8 dis8 |
  e2~ e8 e8 e8. e16 |
  dis2~ dis8
  
  e8 e8 dis8 |
  cis2~ cis8 cis8 cis8 dis8 |
  \autoBeamOn
  e4~( e16 fis16 e8 dis4)
  \autoBeamOff
%  e2( dis4)
  
  cis8 dis8 |
  e2~ e8 e8 e8 gis8 |
  fis2~ fis8

  gis8 gis8 fis8 |
  fis2~ fis8 cis8 cis8 dis8 |
  e2( dis4) \bar "|."
}

tenorVerse = \relative c' {
  \tag #'usePartials { \partial 4 }
  \autoBeamOff
  gis8 b8 |
  b2~ b8 b8 cis8. b16 |
  b2~ b8
  
  b8 b8 b8 |
  a2~ a8 a8 a8 b8 |
  b2.
  
  gis8 b8 |
  b2~ b8 b8 cis8 e8 |
  dis2~ dis8
  
  dis8 dis8 cis8 |
  cis2~ cis8 a8 a8 b8 |
  b2. \bar "|."
}

bassVerse = \relative c {
  \tag #'usePartials { \partial 4 }
  \autoBeamOff
  e8 b8 |
  e2~ e8 e8 e8. e16 |
  b2~ b8
  
  b8 b8 b8 |
  a2~ a8 a8 a8 b8 |
  e2( b4)
  
  b8 b8 |
  e2~ e8 e8 e8 e8 |
  b2~ b8
  
  b8 b8 b8 |
  a2~ a8 a8 a8 b8 |
  e2( b4) \bar "|."
}

sopranoRefrain = \relative c' {
  \tag #'usePartials { \partial 4 }
  % May my
  \autoBeamOff
  e8 fis8 |
  \repeat volta 2 {
    % steps be wor -- ship,
    gis8 gis8\rest gis4 gis8 e8 \bar "" \break
    % may my
    a8 gis8 |
    % thoughts be praise
    fis8 fis8\rest fis4 gis8( fis8) \bar "" \break
    % may my
    gis8 fis8 |
  }
  \alternative {
    {
      % words bring ho -- nor to Your
      e4. e8 fis8 fis16 fis8. gis8 |
      %name.
      \autoBeamOn
      gis4~( gis16 a16 gis8 fis4)
      \autoBeamOff
      % may my
      b8 a8 |
    }
    {
      % words bring ho -- nor to Your
      e4. e8 fis8 fis16 fis8. fis8 |
      % name.
      e2 r4
    }
  }
  \bar "|."
}

descant = \relative c'' {
  \tag #'usePartials { \partial 4 }
  \hide r4 |
  \repeat volta 2 {
    \autoBeamOff
    r8^\markup { "Descant" } gis16 gis16 gis8 gis8 gis8 e8
    r4 |
    r8 fis16 fis16 fis8 fis8 gis8( fis8)
    \hide r4 |
    \hide r1 |
    \hide r1 |
  }
}

altoRefrain = \relative c' {
  \tag #'usePartials { \partial 4 }
  % May my
  \autoBeamOff
  b8 dis8 |
  \repeat volta 2 {
    % steps be wor -- ship,
    e8 \hide r8 e4 e8 b8
    % may my
    fis'8 e8 |
    % thoughts be praise
    dis8 \hide r8 dis4 e8( dis8)
    % may my
    e8 dis8 |
  }
  \alternative {
    {
      % words bring ho -- nor to Your
      cis4. cis8 dis8 dis16 dis8. dis8 |
      %name.
      \autoBeamOn
      e4~( e16 fis16 e8 dis4)
      \autoBeamOff
      % may my
      gis8 fis8 |
    }
    {
      % words bring ho -- nor to
      cis4. cis8 dis8 dis16 dis8. dis8 |
      % name.
      b2 r4
    }
  }
  \bar "|."
}

tenorRefrain = \relative c' {
  \tag #'usePartials { \partial 4 }
  % May my
  \autoBeamOff
  gis8 b8 |
  \repeat volta 2 {
    % steps be wor -- ship,
    b8 b8\rest b4 b8 gis8
    % may my
    cis8 b8 |
    % thoughts be praise
    b8 b8\rest b4 b4
    % may my
    b8 b8 |
  }
  \alternative {
    {
      % words bring ho -- nor to Your
      a4. a8 fis8 fis16 fis8. b8 |
      %name.
      b2.
      % may my
      dis8 cis8 |
    }
    {
      % words bring ho -- nor to Your
      a4. a8 fis8 fis16 fis8. a8 |
      % name.
      gis2 r4
    }
  }
  \bar "|."
}

bassRefrain = \relative c {
  \tag #'usePartials { \partial 4 }
  % May my
  \autoBeamOff
  b8 b8 |
  \repeat volta 2 {
    % steps be wor -- ship,
    e8 \hide r8 e4 e8 e8
    % may my
    e8 e8 |
    % thoughts be praise
    b8 \hide r8 b4 b4
    % may my
    b8 b8 |
  }
  \alternative {
    {
      % words bring ho -- nor to Your
      a4. a8 b8 b16 b8. b8 |
      %name.
      e2( b4)
      % may my
      b8 b8 |
    }
    {
      % words bring ho -- nor to Your
      a4. a8 b8 b16 b8. b8 |
      % name.
      <e e,>2 r4
    }
  }
  \bar "|."
}

verseOneLyrics = \lyricmode {
  \set stanza = "1. "
  Fa -- ther God, just for to -- day,
  Help me to walk Your nar -- row way.
  Help me stand when I could fall,
  Give me the strength to hear Your call.
}

verseTwoLyrics = \lyricmode {
  \set stanza = "2. "
  Here I am, just for to -- day,
  Come live in me, and have Your way.
  My de -- sire when all is done,
  Is just to hear You say, "\"Well" "done!\""
}

refrainLyrics = \lyricmode {
  May my steps be wor -- ship,
  May my thoughts be praise,
  May my words bring ho -- nor to Your name.
  May my
  words bring ho -- nor to Your name.
}

descantLyrics = \lyricmode {
  May my steps be wor -- ship,
  May my thoughts be praise.
  May my steps be wor -- ship,
  May my thoughts be praise.
}