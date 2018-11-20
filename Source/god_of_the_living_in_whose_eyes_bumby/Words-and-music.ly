\version "2.19.49"
#(use-modules (guile-user))

#(ly:set-option 'relative-includes #t)
\include "../../../LilypondTemplates/functions.ly"
\include "../../../LilypondTemplates/hymns.ly"
\include "../hymn_settings.ly"

global = {
  \key ees \major
  \time 3/4
  \tempo 4 = 110
}

MajorKey = ##t

%%
%% Hymn Metadata Variables
%%

Title = "God of the Living, In Whose Eyes"
SongNumber = \god_of_the_living_in_whose_eyes_bumby_number
RightFirstPage = \god_of_the_living_in_whose_eyes_bumby_number_rhs
FirstPage = #(if RightFirstPage 1 2)

LeaderHints = \markup {
  \fontsize #-4
  \normal-text { "E" \musicglyph #"accidentals.flat" " - 3 - SOL" }
}

Scripture = "“But regarding the resurrection of the dead, have you not read what was spoken to you by God:
              \'I am the God of Abraham, and the God of Isaac, and the God of Jacob\'?  He is not the God of
              the dead but of the living.” (Matthew 22:31-32 NASB95)"

ShowScriptureOnSheetMusic = ##t

\header {
  title = \Title
  tune = "ALDIE"
  meter = "8.8.8.8.8.8"
  composer = "C. E. Couchman (2011)"
  poet = "John Ellerton (1858, expanded 1867)"
  songNumber = \SongNumber
  lhs = #(if RightFirstPage LeaderHints SongNumber)
  rhs = #(if RightFirstPage SongNumber LeaderHints)
  copyright = "Music Copyright © 2011 C. E. Couchman.  All rights reserved."
  license = "Used by permission"
  tagline = ##f
}

SopranoVerseMusic = \relative c'' {
  bes4 bes4 ees,4 |
  bes'2 bes4 |
  aes2 aes8[ g8] |
  g2. |
  g4 g4 g4 |
  g4( aes4) g4 |
  g2 f4 |
  f2 \bar ""
  
  ees8[ d8] |
  c2 ees4 |
  ees2 ees4 |
  f2 g4 |
  g2 ees8[ d8] |
  c2 ees4 |
  ees4( f4) g4 |
  g2 f4 |
  f2. |
  
  bes4 bes4 ees,4 |
  bes'2 bes4 |
  aes4( c4) bes4 |
  bes2 ees8[ d8] |
  c2 bes4 |
  bes4( aes4) g4 |
  f2 ees4 |
  ees2. \bar "|."
}

AltoVerseMusic = \relative c' {
  ees4 ees4 ees4 |
  f2 g4 |
  ees2 ees4 |
  ees2. |
  ees4 ees4 ees4 |
  ees2 ees4 |
  ees2 d4 |
  d2 \bar ""
  
  ees8[ d8] |
  c2 ees4 |
  ees2 ees4 |
  d2 ees4 |
  ees2 ees8[ d8] |
  c2 ees4 |
  ees2 ees4 |
  d2 d4 |
  d2. |
  
  ees4 ees4 ees4 |
  f2 g4 |
  aes2 aes4 |
  g2 g4 |
  ees2 ees4 |
  ees2 ees4 |
  ees4( d4) ees4 |
  bes2. \bar "|."
}

TenorVerseMusic = \relative c' {
  g4 g4 g4 |
  bes2 ees4 |
  c2 c8[ bes8] |
  bes2. |
  bes4 bes4 bes4 |
  c2 bes4 |
  bes2 bes4 |
  bes2 \bar ""
  
  bes4 |
  aes2 aes4 |
  g2 g4 |
  bes2 bes4 |
  bes2 g4 |
  aes2 aes4 |
  g4( bes4) bes4 |
  bes2 bes4 |
  bes2. |
  
  g4 g4 g4 |
  bes2 ees4 |
  c2 c4 |
  ees2 bes4 |
  aes2 aes4 |
  g4( aes4) bes4 |
  bes4( f4) aes4 |
  g2. \bar "|."
}

BassVerseMusic = \relative c {
  ees4 ees4 ees4 |
  d2 ees4 |
  ees2 ees4 |
  ees2. |
  ees4 ees4 ees4 |
  c2 ees4 |
  ees2 bes4 |
  bes2 \bar ""
  
  bes'4 |
  aes2 aes4 |
  g2 g4 |
  bes2 bes4 |
  bes2 g4 |
  aes2 aes4 |
  g4( f4) ees4 |
  bes2 bes4 |
  bes2. |
  
  ees4 ees4 ees4 |
  d2 ees4 |
  ees2 ees4 |
  ees2 ees4 |
  aes,2 aes4 |
  ees'2 ees4 |
  bes2 bes4 |
  ees2. \bar "|."
}

AlignVerseMusic = \relative c {
  c4 c4 c4 |
  c2 c4 |
  c2 c4 |
  c2. |
  c4 c4 c4 |
  c2 c4 |
  c2 c4 |
  c2 \bar "" \break
  
  c4 |
  c2 c4 |
  c2 c4 |
  c2 c4 |
  c2 c4 |
  c2 c4 |
  c2 c4 |
  c2 c4 |
  c2. | \break
  
  c4 c4 c4 |
  c2 c4 |
  c2 c4 |
  c2 c4 |
  c2 c4 |
  c2 c4 |
  c2 c4 |
  c2. \bar "|."
}

SheetMusicVerseBreaks = \relative c {
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2  \bar "" \break
  
  s4  | \noBreak
  s2. | \noBreak
  s2. | \noBreak
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
  s2. | \noBreak
  s2. | \pageBreak
}

SlidesVerseBreaks = \relative c {
  \setSystemOffset \defaultTopSystemOffset
  s2. | \noBreak
  s2  \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s4  | \noBreak
  s2. | \noBreak
  s2. | \break \pageBreak
  
  \setSystemOffset \defaultTopSystemOffset
  s2. | \noBreak
  s2  \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s4  |
  s2. | \noBreak
  s2  \bar "" \break \pageBreak

  \setSystemOffset \defaultTopSystemOffset
  s4  | \noBreak
  s2. | \noBreak
  s2  \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s4  | \noBreak
  s2. | \noBreak
  s2  \bar "" \break \pageBreak

  \setSystemOffset \defaultTopSystemOffset
  s4  | \noBreak
  s2. | \noBreak
  s2  \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s4  | \noBreak
  s2. | \noBreak
  s2. | \break \pageBreak

  \setSystemOffset \defaultTopSystemOffset
  s2. | \noBreak
  s2  \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s4  | \noBreak
  s2. | \noBreak
  s2  \bar "" \break \pageBreak

  \setSystemOffset \defaultTopSystemOffset
  s4  | \noBreak
  s2. | \noBreak
  s2  \bar "" \break \noPageBreak
  
  \setSystemOffset \defaultBottomSystemOffset
  s4  | \noBreak
  s2. | \noBreak
  s2. \bar "|." \pageBreak
}

VerseOne = \lyricmode {
  \set stanza = "1. "
    God of the liv -- ing, in whose eyes,
    Un -- veiled thy whole cre -- a -- tion lies,
    All souls are thine; we must not say
    That those are dead who pass aw -- ay,
    From this our world of flesh set free;
    We know them liv -- ing un -- to thee.
}

VerseTwo = \lyricmode {
  \set stanza = "2. "
    Re -- leased from earth -- ly toil and strife,
    With thee is hid -- den still their life;
    Thine are their tho'ts, their works, their pow'rs,
    All thine, and yet most tru -- ly ours,
    For well we know, wher -- e'er they be,
    Our dead are liv -- ing un -- to thee.
}

VerseThree = \lyricmode {
  \set stanza = "3. "
    Not spilt like wa -- ter on the ground,
    Not wrapped in dream -- less sleep pro -- found,
    Not wan -- d'ring in un -- known de -- spair,
    Be -- yond thy voice, thine arm, thy care;
    Not left to lie like fal -- len tree;
    Not dead, but liv -- ing un -- to thee.
}

VerseFour = \lyricmode {
  \set stanza = "4. "
    Thy word is true, thy will is just;
    To thee we leave them, Lord, in trust;
    And bless thee for the love which gave
    Thy Son to fill a hu -- man grave,
    That none might fear that world to see
    Where all are liv -- ing un -- to thee.
}

VerseFive = \lyricmode {
  \set stanza = "5. "
    O Breath -- er in -- to man of breath,
    O Hold -- er of the keys of death,
    O Giv -- er of the life with -- in,
    Save us from death, the death of sin;
    That bod -- y, soul, and spir -- it be
    For -- ev -- er liv -- ing un -- to thee!
}
