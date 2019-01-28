\version "2.19.49"

\include "../../../LilypondTemplates/functions.ly"
\include "../../../LilypondTemplates/hymns.ly"
\include "../hymn_settings.ly"

global = {
  \key bes \major
  \time 4/4
  \tempo 4 = 70
}

Title = "He Is Wonderful"
SongNumber = \he_is_wonderful_fc_number
LeaderHints = \markup {
  \fontsize #-4
  \normal-text { "B" \musicglyph #"accidentals.flat" " - 4 - MI" }
}
number_on_rhs = \he_is_wonderful_fc_number_rhs

#(if number_on_rhs
     (begin
      (define lhs LeaderHints)
      (define rhs SongNumber))
     (begin
      (define lhs SongNumber)
      (define rhs LeaderHints)))

FirstPage = #(if he_is_wonderful_fc_number_rhs 1 2)
ShowScriptureOnSheetMusic = ##t
SlideStaffStaffSpacing = 12

\header {
  title = \Title
  tune = "He Is Wonderful"
  meter = ""
  composer = "Unknown"
  poet = "Unknown"
  songNumber = \SongNumber
  lhs = \lhs
  rhs = \rhs
  copyright = "In the Public Domain"
  license = ##f
  arranger = ##f
  tagline = ##f
}

Scripture = #""

%
% Rhythms for the sheet music with line break controls
%
sheetMusicBreaks = \relative c {
  \tag #'usePartials' { \partial 4 }
  s4 | \noBreak
  s1 | \noBreak
  s2 \bar "" \break \noPageBreak
  
  s2 | \noBreak
  s1 | \noBreak
  s2. \bar "|." \break
}

%
% Rhythms for the sheet music with line break controls
%
slideMusicFirstBreaks = \relative c {
  \tag #'usePartials' { \partial 4 }
  s4  | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2  \bar "" \break \noPageBreak
  
  s4  | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2  \bar "" \break \noPageBreak
  
  s4  | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2  \bar "" \break \noPageBreak
  
  s4  | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2  \bar "|." \pageBreak
}

slideMusicSecondBreaks = \relative c {
  \tag #'usePartials' { \partial 4 }
  \setSystemOffset \defaultTopSystemOffset
  s4  | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2  \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s4  | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2  \bar "" \pageBreak
  
  \setSystemOffset \defaultTopSystemOffset
  s4  | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2  \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s4  | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2  \bar "|." \pageBreak
}

slideMusicThirdBreaks = \relative c {
  \tag #'usePartials' { \partial 4 }
  \setSystemOffset \defaultTopSystemOffset
  s4  | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2  \bar "" \pageBreak
  
  \setSystemOffset \defaultTopSystemOffset
  s4  | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2  \bar "" \pageBreak
  
  \setSystemOffset \defaultTopSystemOffset
  s4  | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2  \bar "" \pageBreak
  
  \setSystemOffset \defaultTopSystemOffset
  s4  | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2  \bar "|." \pageBreak
}

slideMusicFourthBreaks = \slideMusicThirdBreaks

%
% Notes for the Soprano part during the verses.
% No break guidance is included.
%
sopranoVerse = \relative c'' {
  \tag #'usePartials { \partial 4 }
  \tag #'sheetMusic { r4 }
  \tag #'firstTime { r4^"Altos alone" }
  \tag #'secondTime { r4^"Altos and Sopranos" }
  \tag #'thirdTime { r4^"Altos, Sopranos, and Tenors" }
  \tag #'fourthTime { r4^"All Sing" }
  \tag #'fifthTime { r4^"All Sing" }
  bes4 bes4 bes4 bes8 r16 bes32 bes32 |
  a16 a16 r16 a32 a32 a16 a16 r16 a32 a32
  
  a16 a16 r16 a32 a32 a16 a16 r16 a16 |
  bes4~( bes16 c16) d16( c16) c4 c8 bes8 |
  a4. bes16 bes16~ bes4 \bar "|."
}

altoVerse = \relative c' {
  \tag #'usePartials { \partial 4 }
  d8( c8) |
  bes4 f'8( g8) g8 r8 ees8 d8 |
  c4 f4
  
  f4 d8 c8 |
  bes4 f'8( g8) g4 g8 f8 |
  f4. f16 f16~ f4 \bar "|."
}

tenorVerse = \relative c' {
  \tag #'usePartials { \partial 4 }
  r4 |
  r4 d8 d8 ees8 ees8 r8 d8 |
  c8 c8 c8 d8
  
  d4 r4 |
  bes8 bes8 bes8 d16( c16) c4 ees8 d8 |
  c4. d16 d16~ d4 \bar "|."
}

bassVerse = \relative c {
  \tag #'usePartials { \partial 4 }
  d8 c8 |
  bes8 bes8 d8 d8 ees8 ees4 d8 |
  c8 c8 f8 f8
  
  bes,4 bes8 a8 |
  g4 r8 d'8 c4 ees8 d8 |
  f4. bes,16 bes16~ bes4 \bar "|."
}

silentVerse = \relative c {
  \tag #'usePartials { \partial 4 }
  r4 |
  r1 |
  r1 |
  r1 |
  r2. \bar "|."
}

sopranoLyrics = \lyricmode {
  Ha -- le -- lu -- jah!
  Ha -- le -- lu -- jah,
  ha -- le -- lu -- jah,
  Ha -- le -- lu -- jah,
  Ha -- le -- lu -- jah!
  Ha -- le -- lu -- jah!
  He is won -- der -- ful!
}

altoLyrics = \lyricmode {
  All prais -- es be to the King of kings,
  and the Lord our God,
  He is won -- der -- ful.
}

tenorLyrics = \lyricmode {
  Ha -- le -- lu -- jah,
  sal -- va -- tion and glo -- ry,
  hon -- or and pow -- er,
  He is won -- der -- ful.
}

bassLyrics = \lyricmode {
  For the Lord our God is migh -- ty,
  the Lord our God is om -- ni -- po -- tent,
  our God He is won -- der -- ful.
}
