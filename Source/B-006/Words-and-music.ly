\version "2.18.2"

global = {
  \key f \major
  \time 3/4
  \aikenHeads
}

\header {
  title = "Hark! I Hear the Harps Eternal"
  songNumber = "B-006"
  scripture = \markup {
    \override #'(line-width . 60)
    \center-column {
      \vspace #4
      \abs-fontsize #24
      \italic \wordwrap-string #"And I heard a voice from heaven, like the
         sound of many waters and like the sound of loud thunder, and the
         voice which I heard was like the sound of harpists playing on
         their harps. - Revelation 14:2"
    }
  }
  meter = "8.7.8.7"
  poet = "F. R. Warren"
  translator = ##f

  tune = "INVITATION NEW"
  composer = ##f
  arranger = "Michael Duke"

  maintainer = "Jim Duke"
  maintainerEmail = "jim@dukeboys.org"
  maintainerWeb = ##f
  
  copyright = "In the Public Domain"
  license = ##f
}

sopranoVerse = \relative c' {
  % Phrase 1
  f8 f \noBreak
  a4 a8. g16 f8 f \noBreak
  g16 f8. d4 \bar ""

  % Phrase 2
  f8 f \noBreak
  a4 c f,8 f16 d \noBreak
  f2 \bar ""

  % Phrase 3
  f8 f \noBreak
  a4 a8. g16 f8 f \noBreak
  g16 f8. d4 \bar ""

  % Phrase 4
  f8 f \noBreak
  a4 c f,8 f16 d \noBreak
  f2 \bar "||"
}

altoVerse = \relative c' {
  % Phrase 1
  c8 c \noBreak
  f4 f c8 c \noBreak
  d4 d \bar ""

  % Phrase 2
  d8 d \noBreak
  f4 f f8 f16 d \noBreak
  c2 \bar ""

  % Phrase 3
  c8 c \noBreak
  f4 f c8 c \noBreak
  d4 d \bar ""

  %Phrase 4
  d8 d \noBreak
  f4 f f8 f16 d \noBreak
  c2 \bar "||"
}

tenorVerse = \relative c' {
  % Phrase 1
  a8 a \noBreak
  c4 c a8 a \noBreak
  d4 a
  \bar ""

  % Phrase 2
  a8 a \noBreak
  c4 a g8 g \noBreak
  a2
  \bar ""

  % Phrase 3
  a8 a \noBreak
  c4 c a8 a \noBreak
  d4 a \bar ""

  % Phrase 4
  a8 a \noBreak
  c4 a g8 g \noBreak
  a2 \bar "||"
}

bassVerse = \relative c {
  % Phrase 1
  f8 f \noBreak
  f4 f f8 f \noBreak
  d4 d \bar ""

  % Phrase 2
  d8 d \noBreak
  c4 c c8 d \noBreak
  f2 \bar ""

  % Phrase 3
  f8 f \noBreak
  f4 f f8 f \noBreak
  d4 d \bar ""

  % Phrase 4
  d8 d \noBreak
  c4 c c8 d \noBreak
  f2 \bar "||"
}

sopranoChorus = \relative c'' {
  % Phrase 1
  c8 d16 f \noBreak
  f4 c d8 c \noBreak
  c4 a \bar ""

  % Phrase 2
  c8 d16 f \noBreak
  f4 c a8 c \noBreak
  d2 \bar ""

  % Phrase 3
  f8 f16 d \noBreak
  c4 a8. g16 f8 f \noBreak
  g16 f8. d4 \bar ""

  % Phrase 4
  f8 f \noBreak
  a4 c f,8 f16 d \noBreak
  f2 \bar "|."
}

altoChorus = \relative c'' {
  % Phrase 1
  c8 d16 c \noBreak
  a4 a a8 a \noBreak
  a4 f \bar ""

  % Phrase 2
  c'8 d16 c \noBreak
  a4 a f8 f \noBreak
  a2 \bar ""

  % Phrase 3
  a8 a \noBreak
  f4 f c8 c \noBreak
  a4 d \bar ""

  % Phrase 4
  d8 d \noBreak
  f4 f f8 f16 d \noBreak
  c2 \bar "|."
}

tenorChorus = \relative c' {
  % Phrase 1
  a8 a \noBreak
  c4 f f8 f \noBreak
  f4 c \bar ""

  % Phrase 2
  a8 a \noBreak
  c4 f c8 c \noBreak
  a2 \bar ""

  % Phrase 3
  c8 c \noBreak
  a4 c a8 a \noBreak
  d4 a \bar ""

  % Phrase 4
  a8 a \noBreak
  c4 a a8 a \noBreak
  a2 \bar ""
}

bassChorus = \relative c {
  % Phrase 1
  f8 f \noBreak
  f4 f f8 f \noBreak
  f4 f \bar ""

  % Phrase 2
  f8 f \noBreak
  f4 f f8 f \noBreak
  d2 \bar ""

  % Phrase 3
  f8 f \noBreak
  f4 f f8 f \noBreak
  d4 d \bar ""

  % Phrase 4
  d8 d \noBreak
  c4 c f8 f \noBreak
  f2 \bar "|."
}

verseOne = \lyricmode {
  \set stanza = "1. "
  Hark!8 I8 hear4 the4 harps8 e8 -- ter4 -- nal4
  Ring8 -- ing8 on4 the4 far8 -- ther8 shore,2
  As8 I8 near4 those4 swoll8 -- en8 wa4 -- ters,4
  With8 their8 deep4 and4 sol8 -- emn8 roar.2
}

verseTwo = \lyricmode {
  \set stanza = "2. "
  And8 my8 soul,4 tho'4 stain'd8 with8 sor4 -- row,4
  fad8 -- ing8 as4 the4 light8 of8 day,2
  Pass8 -- es8 swift4 -- ly4 o'er8 those8 wat4 -- ers,4
  To8 the8 ci4 -- ty4 far8 a8 -- way.2
}

verseThree = \lyricmode {
  \set stanza = "3. "
  Souls8 have8 cross'd4 be4 -- fore8 me,8 saint4 -- ly,4
  To8 that8 land4 of4 per8 -- fect8 rest;2
  And8 I8 hear4 them4 sing8 -- ing8 faint4 -- ly,4
  In8 the8 mans4 -- ions4 of8 the8 blest.2
}

verseFour = \lyricmode {
  \set stanza = "4. "
  Just8 be8 -- yond4 the4 ri8 -- ver8 flash4 -- eth4
  Je8 -- bu8 Sal4 -- em4 of8 my8 God,2
  Where8 the8 white4 wave,4 ris8 -- ing,8 plash4 -- eth4
  On8 the8 shore4 by4 ang8 -- els8 trod.2
}

verseFourText = \markup {
  \line {
    "4. "
    \column {
      "Just beyond the river flasheth"
      \concat { \hspace #2 "Jebu-Salem of my God," }
      "Where the white wave, rising, plasheth"
      \concat { \hspace #2 "On the shore by angels trod." }
    }
  }
}

verseFive = \lyricmode {
  \set stanza = "5. "
  Stop!8 I8 see4 the4 boat8 -- man8 near4 -- ing;4
  See!8 the8 sno4 -- wy4 sail8 is8 set,2
  And8 the8 oars4 are4 float8 -- ing8 id4 -- ly,4
  And8 the8 sail4 is4 drift8 -- ing8 wet.2
}

verseFiveText = \markup {
  \line {
    "5. "
    \column {
      "Stop! I see the boatman nearing;"
      \concat { \hspace #2 "See! the snowy sail is set," }
      "And the oars are floating idly,"
      \concat { \hspace #2 "And the sail is drifting wet." }
    }
  }
}

verseSix = \lyricmode {
  \set stanza = "6. "
  Call8 my8 fath4 -- er!4 call8 my8 mo4 -- ther!4
  Tell8 them8 that4 the4 boat8 -- man's8 here;2
  And8 an8 -- oth4 -- er4 Oh,8 an8 -- oth4 -- er!4
  Un8 -- to8 whom4 my4 soul8 is8 dear.2
}

verseSixText = \markup {
  \line {
    "6. "
    \column {
      "Call my father! call my mother!"
      \concat { \hspace #2 "Tell them that the boatman's here;" }
      "And another - Oh! another!"
      \concat { \hspace #2 "Unto whom my soul is dear." }
    }
  }
}

verseSeven = \lyricmode {
  \set stanza = "7. "
  Call8 them8 quick!4 for4 I8 am8 pass4 -- ing4
  Thro'8 the8 val4 -- ley4 of8 the8 grave;2
  I8 am8 pass4 -- ing,4 with8 the8 boat4 -- man,4
  O'er8 the8 deep4 and4 sol8 -- emn8 wave!2
}

verseSevenText = \markup {
  \line {
    "7. "
    \column {
      "Call them quick! For I am passing"
      \concat { \hspace #2 "Thro' the valley of the grave;" }
      "I am passing, with the boatman,"
      \concat { \hspace #2 "O'er the deep and solumn wave!" }
    }
  }
}

chorus = \lyricmode {
  Hal8 -- le8 -- lu4 -- jah!4 Hal8 -- le8 -- lu4 -- jah!4
  Hal8 -- le8 -- lu4 -- jah!4 Praise8 the8 Lamb!2

  Hal8 -- le8 -- lu4 -- jah!4 Hal8 -- le8 -- lu4 -- jah!4
  Glo8 -- ry8 to4 the4 Great8 I8 Am!2
}