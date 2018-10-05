\version "2.19.49"
#(use-modules (guile-user))

#(ly:set-option 'relative-includes #t)
\include "../../../LilypondTemplates/functions.ly"
\include "../../../LilypondTemplates/hymns.ly"
\include "../hymn_settings.ly"

global = {
  \key aes \major
  \time 4/4
  \tempo 4 = 85
}

MajorKey = ##t

%%
%% Hymn Metadata Variables
%%

Title = "Immanuel, God with Us"
SongNumber = \immanuel_god_with_us_number
RightFirstPage = \immanuel_god_with_us_number_rhs
FirstPage = #(if RightFirstPage 1 2)

LeaderHints = \markup {
  \fontsize #-4
  \normal-text { "A" \musicglyph #"accidentals.flat" " - 4 - DO" }
}

Scripture = "\"In the beginning was the Word, and the Word was with God,
 and the Word was God.  He was in the beginning with God.  All things were
 made through Him... And the Word became flesh and dwelt among us, and we
 beheld His glory, the Glory as of the only begotten of the Father, full
 of grace and truth.\" -- John 1:1-3,14"

ShowScriptureOnSheetMusic = ##t

\header {
  title = \Title
  tune = "GOD WITH US"
  meter = "Irregular"
  composer = "C. E. Couchman (1993)"
  poet = "C. E. Couchmand (1993)"
  songNumber = \SongNumber
  lhs = #(if RightFirstPage LeaderHints SongNumber)
  rhs = #(if RightFirstPage SongNumber LeaderHints)
  copyright = \markup {
    \char ##x00A9 " Copyright 1993 C. E. Couchman"
  }
  license = "Used by permission"
  tagline = ##f
}

SopranoVerseBody = \relative c'' {
  aes4 aes4 aes4 aes4 |
  aes4 aes4
  \tag #'(verseOne verseTwo allVerses) { g4( aes4) }
  \tag #'(verseThree) { g4 aes4 } |
  f4. f8 f4 f4 |
  f4. ees8 ees2 |
    
  c4 f4 aes4 g8 aes8 |
  bes4 bes4 g4 aes4 |
  aes4 f4 des4
  \tag #'(verseOne verseThree) { f8 aes8 }
  \tag #'(verseTwo allVerses) { f8[ aes8] } |
  aes4. aes8 aes4
}

SopranoFirstRepeatPart = \relative c'' {
  bes8[ c8] |
  %
  % To get around a problem with partCombine, I'm showing the divisi in one voice
  % but the divisi will be split between Soprano and Alto in the MIDI rendering
  %
  \tag #'notForMIDI {
    <des aes f>4. <des aes f>8 <c aes ees>2 |
    %
    % Don't add a bar check here.  The \repeat gets the measures all confused.
    %
    <bes g ees>4 <g ees>4 <aes ees c>2
  }
  %
  % I'm giving both the Sopranos and the Altos the middle note.
  %
  \tag #'forMIDI {
    <des aes>4. <des aes>8 <c aes>2 |
    %
    % Don't add a bar check here.  The \repeat gets the measures all confused.
    %
    <bes g>4 <g ees>4 <aes ees>2
  }
}

SopranoSecondRepeatPart = \relative c'' {
  \set Timing.measureLength = #(ly:make-moment 1/4)
  bes8[ c8] |
  \tag #'notForMIDI {
    \set Timing.measureLength = #(ly:make-moment 4/4)
    <des aes f>4. <des aes f>8 <c aes ees>2 |
    \set Timing.measureLength = #(ly:make-moment 3/4)
    <bes g ees>4 <g ees>4 <aes ees c>4
  }
  \tag #'forMIDI {
    \set Timing.measureLength = #(ly:make-moment 4/4)
    <des aes>4. <des aes>8 <c aes>2 |
    \set Timing.measureLength = #(ly:make-moment 3/4)
    <bes g>4 <g ees>4 <aes ees>4
  }
}

SopranoEnding = \relative c'' {
  \set Timing.measureLength = #(ly:make-moment 1/4)
  bes8[ c8] |
  \tag #'notForMIDI {
    \set Timing.measureLength = #(ly:make-moment 4/4)
    <des aes f>2 <des g, ees>2 |
    <c aes ees>1
  }
  \tag #'forMIDI {
    \set Timing.measureLength = #(ly:make-moment 4/4)
    <des aes>2 <des g,>2 |
    <c aes>1
  }
  \bar "|."
}

SopranoVerseMusic = \relative c'' {
  \repeat volta 3 {
    \SopranoVerseBody
  }
  \alternative {
    {
      \SopranoFirstRepeatPart
    }
    {
      \SopranoSecondRepeatPart
    }
  }
  
  \SopranoEnding
}

AltoVerseBody = \relative c' {
  ees4 ees4 ees4 ees4 |
  f4 f4
  \tag #'(verseOne verseTwo) { f2 }
  \tag #'(allVerses) { f4( f4) }
  \tag #'(verseThree) { f4 f4 } |
  des4. des8 des4 des4 |
  des4. c8 c2 |
  
  c4 c4 f4 f8 f8 |
  g4 g4 g4 ees4 |
  f4 des4 des4
  \tag #'(verseOne verseThree) { des8 des8 }
  \tag #'(allVerses) { des8[ des8] }
  \tag #'(verseTwo) { des4 } |
  c4. c8 c4
}

AltoFirstRepeatPart = \relative c' {
  aes'4 |
  %
  % To get around a problem with partCombine, I'm showing the divisi in one voice
  % but the divisi will be split between Soprano and Alto in the MIDI rendering
  %
  \tag #'notForMIDI {
    s4. s8 s2 |
    s4 des,4 s2
  }
  \tag #'forMIDI {
    <aes' f>4. <aes f>8 <aes ees>2 |
    <g ees>4 <ees des>4 <ees c>2
  }
}

AltoSecondRepeatPart = \relative c'' {
  aes4 |
  \tag #'notForMIDI {
    s4. s8 s2 |
    s4 des,4 s4
  }
  \tag #'forMIDI {
    <aes' f>4. <aes f>8 <aes ees>2 |
    <g ees>4 <ees des>4 <ees c>4
  }
}

AltoEnding = \relative c' {
  \set Timing.measureLength = #(ly:make-moment 1/4)
  aes'4 |
  \set Timing.measureLength = #(ly:make-moment 4/4)
  \tag #'notForMIDI {
    s2 s2 |
    s1
  }
  \tag #'forMIDI {
    <aes f>2 <g ees>2 |
    <aes ees>1
  }
  \bar "|."
}

AltoVerseMusic = \relative c' {
  \repeat volta 3 {
    \AltoVerseBody
  }
  \alternative {
    {
      \AltoFirstRepeatPart
    }
    {
      \AltoSecondRepeatPart
    }
  }

  \AltoEnding
}

TenorVerseBody = \relative c' {
  c4 c4 c4 c4 |
  c4 c4
  \tag #'(verseOne verseTwo allVerses) { bes4( c4) }
  \tag #'(verseThree) { bes4 c4 } |
  aes4. aes8 aes4 aes4 |
  aes4. aes8 aes2 |
  
  aes4 aes4 c4 c8 c8 |
  ees4 ees4 ees4 aes,4 |
  des4 aes4 aes4
  \tag #'(verseOne verseThree) { aes8 f8 }
  \tag #'(verseTwo allVerses) { aes8[ f8] } |
  ees4. ees8 ees4
}

TenorFirstRepeatPart = \relative c {
  r4 |
  r1 |
  ees4 ees4 aes2
}

TenorSecondRepeatPart = \relative c {
  r4 |
  r1 |
  ees4 ees4 aes4
}

TenorEnding = \relative c' {
  \set Timing.measureLength = #(ly:make-moment 1/4)
  ees4
  \set Timing.measureLength = #(ly:make-moment 4/4)
  des4( c4) bes2 |
  aes1 \bar "|."
}

TenorVerseMusic = \relative c' {
  \repeat volta 3 {
    \TenorVerseBody
  }
  \alternative {
    {
      \TenorFirstRepeatPart
    }
    {
      \TenorSecondRepeatPart
    }
  }

  \TenorEnding
}

BassVerseBody = \relative c {
  aes4 aes4 aes4 aes4 |
  <f' f,>4 <f f,>4
  \tag #'(verseOne verseTwo) { <f f,>2 }
  \tag #'(allVerses) { <f f,>4( <f f,>4) }
  \tag #'(verseThree) { <f f,>4 <f f,>4 } |
  des4. des8 des4 des4 |
  aes4. aes8 aes2 |
  
  f'4 f4 f4 f8 f8 |
  ees4 ees4 ees4 c4 |
  des4 des4 f4
  \tag #'(verseOne verseThree) { des8 des8 }
  \tag #'(allVerses) { des8( des8) }
  \tag #'(verseTwo) { des4 } |
  aes4. aes8 aes4
}

BassFirstRepeatPart = \relative c {
  r4 |
  r1 |
  ees4 ees4 aes,2
}

BassSecondRepeatPart = \relative c {
  r4 |
  r1 |
  ees4 ees4 aes,4
}

BassEnding = \relative c {
  \set Timing.measureLength = #(ly:make-moment 1/4)
  aes4
  \set Timing.measureLength = #(ly:make-moment 4/4)
  des2 ees2 |
  aes,1 \bar "|."
}

BassVerseMusic = \relative c {
  \repeat volta 3 {
    \BassVerseBody
  }
  \alternative {
    {
      \BassFirstRepeatPart
    }
    {
      \BassSecondRepeatPart
    }
  }

  \BassEnding
}

AlignBody = {
  c4 c4 c4 c4 |
  c4 c4
  \tag #'(verseOne verseTwo) { c2 }
  \tag #'(verseThree) { c4 c4 } |
  c4. c8 c4 c4 |
  c4. c8 c2 |
  
  c4 c4 c4 c8 c8 |
  c4 c4 c4 c4 |
  c4 c4 c4
  \tag #'(verseOne verseThree) { c8 c8 }
  \tag #'(verseTwo) { c4 } |
  c4. c8 c4
}

AlignFirstRepeatPart = {
  c4 |
  c4. c8 c2 |
  %
  % Don't add a bar check here.  The \repeat gets the measures all confused.
  %
  c4 c4 c2
}

AlignSecondRepeatPart = {
  \set Timing.measureLength = #(ly:make-moment 1/4)
  c4 |
  \set Timing.measureLength = #(ly:make-moment 4/4)
  c4. c8 c2 |
  \set Timing.measureLength = #(ly:make-moment 3/4)
  c4 c4 c4
}

AlignEnding = {
  \set Timing.measureLength = #(ly:make-moment 1/4)
  c4 |
  \set Timing.measureLength = #(ly:make-moment 4/4)
  c2 c2 |
  c1 \bar "|."
}

AlignMusic = {
  \repeat volta 3 {
    \AlignBody
  }
  \alternative {
    {
      \AlignFirstRepeatPart
    }
    {
      \AlignSecondRepeatPart
    }
  }

  \AlignEnding
}

SheetMusicVerseBreaks = {
  \repeat volta 3 {
    s1 | \noBreak
    s1 | \noBreak
    s1 | \noBreak
    s1 | \break
  
    s1 | \noBreak
    s1 | \noBreak
    s1 | \noBreak
    s2. \bar "" \break
  }
  \alternative {
    {
      s4 | \noBreak
      s1 | \noBreak
      %
      % Don't add a bar check here.  The \repeat gets the measures all confused.
      %
      s1  \noBreak
    }
    {
      \set Timing.measureLength = #(ly:make-moment 1/4)
      s4 | \noBreak
      \set Timing.measureLength = #(ly:make-moment 4/4)
      s1 | \noBreak
      \set Timing.measureLength = #(ly:make-moment 3/4)
      s2. \bar "" \break
    }
  }

  \newSpacingSection
  \override Score.SpacingSpanner.shortest-duration-space = #6.0
  \set Timing.measureLength = #(ly:make-moment 1/4)
  s4 | \noBreak
  \set Timing.measureLength = #(ly:make-moment 4/4)
  s1 | \noBreak
  s1 \bar "|."
}

SlidesVerseBodyBreaks = {
  \setSystemOffset \defaultTopSystemOffset
  s1 | \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s1 | \pageBreak
  
  \setSystemOffset \defaultTopSystemOffset
  s1 | \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s1 | \pageBreak
  
  \setSystemOffset \defaultTopSystemOffset
  s2 s4. \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s8 | \noBreak
  s2. \bar "" \pageBreak
  
  \setSystemOffset \defaultTopSystemOffset
  s4 | \noBreak
  \tag #'(verseOne verseThree) { s2 s4. \bar "" }
  \tag #'(verseTwo) { s1 | }
  \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  \tag #'(verseOne verseThree) { s8 | \noBreak }
  s2. \bar "" \pageBreak
}

SlidesFirstRepeatPartBreaks = {
  \setSystemOffset \defaultTopSystemOffset
  s4 | \noBreak
  s1 | \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s1 | \pageBreak
}

SlidesSecondRepeatPartBreaks = {
  \setSystemOffset \defaultTopSystemOffset
  s4 | \noBreak
  s1 | \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s2. \bar "" \pageBreak
}

SlidesEndingBreaks = {
  \setSystemOffset \defaultTopSystemOffset
  s4 | \noBreak
  s1 | \noBreak
  s1 \bar "|." \pageBreak
}

VerseOne = \lyricmode {
  \set stanza = "1. "
  God in -- car -- nate, can it be?
  Pon -- der now the mys -- ter -- y;
  He, the fount of e -- ter -- nal life,
  Must drink the cup of mor -- tal -- i -- ty.
}

VerseTwo = \lyricmode {
  \set stanza = "2. "
  Shep -- herds won -- der at the scene:
  Swad -- dling robes for de -- i -- ty;
  Heav -- en's throne now a bed of straw
  With -- in these bor -- rowed sta -- ble walls
}

VerseThree = \lyricmode {
  \set stanza = "3. "
  God Cre -- a -- tor, now cre -- at -- ed,
  Lord of all in in -- fan -- cy,
  Hands that light -- ed the eve -- ning stars
  Reach out for com -- fort in Mar -- y's arms.
}

Common = \lyricmode {
  Im -- man -- u -- el, God with us.
}

Close = \lyricmode {
  Our God with us.
}