\version "2.19.49"
#(use-modules (guile-user))

#(ly:set-option 'relative-includes #t)
\include "../../../LilypondTemplates/functions.ly"
\include "../../../LilypondTemplates/midi.ly"
\include "../../../LilypondTemplates/hymns.ly"
\include "../hymn_settings.ly"

global = {
  \key bes \major
  \time 4/4
  \tempo 4=100
  \set Staff.autoBeaming = ##f
}

MajorKey = ##t

Title = "Lord, Reign in Me"
SongNumber = \lord_reign_in_me_number

LeaderHints = \markup {
  \fontsize #-4
  \normal-text { "F - 3 - DO" }
}

number_on_rhs = \lord_reign_in_me_number_rhs

FirstPage = #(if lord_reign_in_me_number_rhs 1 2)

Scripture = "We give You thanks, O Lord God, the Almighty, Who are and Who were,
  because You have taken Your great power and have begun to reign.  Revelation 11:17"

ShowScriptureOnSheetMusic = ##t

\header {
  title = \Title
  songNumber = \SongNumber
  lhs = #(if lord_reign_in_me_number_rhs LeaderHints christ_the_lord_is_risen_today_mendelssohn_number)
  rhs = #(if lord_reign_in_me_number_rhs christ_the_lord_is_risen_today_mendelssohn_number LeaderHints)
  meter = "Irregular"
  poet = "Brenton Brown"
  translator = ##f

  tune = "Lord, Reign in Me"
  composer = "Brenton Brown"

  maintainer = "Jim Duke"
  maintainerEmail = "jim@dukeboys.org"
  maintainerWeb = ##f
  
  copyright = \markup {
    "Copyright " \char ##x00A9 " 1998 Vineyard Songs / Vineyard Publishing in N.A."
  }
  license = #(string-append "CCLI Song #2490706, License #" ccli_license)
}

SopranoVerseMusic = \relative c' {
  \autoBeamOff
  r4 bes8 f'8 a8. bes8. g8 |
  r4
  \tag #'sheetMusicRhythms { g8( f8) }
  \tag #'verseOneRhythms { g8( f8) }
  \tag #'verseTwoRhythms { g8 f8 }
  f8. f8. f8 |
  
  r4 bes,8 f'8 a8. bes8. g8 |
  \tag #'sheetMusicRhythms { r8 bes8 }
  \tag #'verseOneRhythms { r4 }
  \tag #'verseTwoRhythms { r8 bes8 }
   bes8 bes8 a8. bes8. bes8 |
  
  \tag #'sheetMusicRhythms { r8 bes,8 }
  \tag #'verseOneRhythms { r4 }
  \tag #'verseTwoRhythms { r8 bes,8 }
  bes'8 bes'8 a8. bes8. g8 |
  \tag #'sheetMusicRhythms { r8 bes8 }
  \tag #'verseOneRhythms { r4 }
  \tag #'verseTwoRhythms { r8 bes8 }
  bes8 bes8 a8. bes8. bes8~ |
  bes2
  
  r8 f8 f8 f8 |
  g4 bes4 c4 bes8 bes8 |
}

AltoVerseMusic = \relative c' {
  \autoBeamOff
  r4 bes8 d8 f8. f8. ees8 |
  r4
  \tag #'sheetMusicRhythms { ees8( ees8) }
  \tag #'verseOneRhythms { ees4 }
  \tag #'verseTwoRhythms { ees8 ees8 }
  ees8. ees8. d8 |
  
  r4 bes8 d8 f8. f8. ees8 |
  \tag #'sheetMusicRhythms { r8 f8 }
  \tag #'verseOneRhythms { r4 }
  \tag #'verseTwoRhythms { r8 f8 }
   f8 f8 f8. f8. f8 |
  
  \tag #'sheetMusicRhythms { r8 bes,8 }
  \tag #'verseOneRhythms { r4 }
  \tag #'verseTwoRhythms { r8 bes,8 }
  bes'8 g'8 f8. f8. ees8 |
  \tag #'sheetMusicRhythms { r8 ees8 }
  \tag #'verseOneRhythms { r4 }
  \tag #'verseTwoRhythms { r8 ees8 }
  ees8 ees8 f8. f8. g8~ |
  g2
  
  r8 ees8 ees8 ees8 |
  ees4 ees4 f4 ees8 d8 |
}

TenorVerseMusic = \relative c {
  \autoBeamOff
  r4 f8 bes8 c8. d8. bes8 |
  r4
  \tag #'sheetMusicRhythms { bes8( bes8) }
  \tag #'verseOneRhythms { bes4 }
  \tag #'verseTwoRhythms { bes8 bes8 }
  bes8. bes8. bes8 |
  
  r4 f8 bes8 c8. d8. bes8 |
  \tag #'sheetMusicRhythms { r8 ees8 }
  \tag #'verseOneRhythms { r4 }
  \tag #'verseTwoRhythms { r8 ees8 }
   ees8 ees8 c8. ees8. d8 |
  
  \tag #'sheetMusicRhythms { r8 d8 }
  \tag #'verseOneRhythms { r4 }
  \tag #'verseTwoRhythms { r8 d8 }
  d8 d8 c8. d8. bes8 |
  \tag #'sheetMusicRhythms { r8 g8 }
  \tag #'verseOneRhythms { r4 }
  \tag #'verseTwoRhythms { r8 g8 }
  g8 bes8 c8. c8. ees8~ |
  ees2
  
  r8 bes8 bes8 bes8 |
  bes4 g4 a4 g8 f8 |
}

BassVerseMusic = \relative c {
  \autoBeamOff
  r4 bes8 bes8 f'8. f8. ees8 |
  r4
  \tag #'sheetMusicRhythms { ees8( ees8) }
  \tag #'verseOneRhythms { ees8( ees8) }
  \tag #'verseTwoRhythms { ees8 ees8 }
  f8. f8. bes,8 |
  
  r4 bes8 bes8 f'8. f8. ees8 |
  \tag #'sheetMusicRhythms { r8 g8 }
  \tag #'verseOneRhythms { r4 }
  \tag #'verseTwoRhythms { r8 g8 }
   g8 g8 f8. f8. g8 |
  
  \tag #'sheetMusicRhythms { r8 g8 }
  \tag #'verseOneRhythms { r4 }
  \tag #'verseTwoRhythms { r8 g8 }
  g8 g8 f8. f8. ees8 |
  \tag #'sheetMusicRhythms { r8 ees8 }
  \tag #'verseOneRhythms { r4 }
  \tag #'verseTwoRhythms { r8 ees8 }
  ees8 ees8 d8. d8. c8~ |
  c2
  
  r8 g'8 g8 g8 |
  ees4 ees4 f4 f8 bes,8 |
}

SheetMusicVerseBreaks = \relative c {
  r1 | \noBreak
  r1 | \break \noPageBreak
  
  r1 | \noBreak
  r1 | \break \noPageBreak
  
  r1 | \noBreak
  r1 | \noBreak
  r2 \bar "" \break \noPageBreak
  
  r2 | \noBreak
  r1 | \pageBreak  
}

SlidesVerseBreaks = \relative c {
}

SopranoChorusMusic = \relative c'' {
  \autoBeamOff
  r4 bes4 a8. bes8. g8 |
  r4 bes4 a8. bes8. bes8 |
  
  r4 bes8 bes8 a8. bes8. g8 |
  r4 bes8 bes8 a8. bes8. bes8 |
  
  r4 bes4 a8. bes8. g8 |
  r4 bes4 a8. bes8. bes8~ |
  bes2
  
  r8 f8 f8 f8 |
  g4 bes4 c4 bes8 bes8~ |
  bes2
  
  r4 f8 f8 |
  g4 bes4 c4 bes8 bes8~ |
  bes2. r4 \bar "|."
}

AltoChorusMusic = \relative c' {
  r4 f4 f8. f8. ees8 |
  r4 g4 f8. f8. f8 |
  
  r4 f8 f8 f8. f8. ees8 |
  r4 g8 g8 f8. f8. f8 |
  
  r4 f4 f8. f8. ees8 |
  r4 g4 f8. f8. g8~ |
  g2
  
  r8 ees8 ees8 ees8 |
  ees4 ees4 f4 ees8 d8~ |
  d2
  
  r4 ees8 ees8 |
  ees4 ees4 f4 ees8 d8~ |
  d2. r4 \bar "|."
}

TenorChorusMusic = \relative c' {
  r4 d4 c8. d8. bes8 |
  r4 d4 c8. ees8. d8 |
  
  r4 d8 d8 c8. d8. bes8 |
  r4 d8 d8 c8. ees8. d8 |
  
  r4 d4 c8. d8. bes8 |
  r4 ees4 c8. d8. ees8~ |
  ees2
  
  r8 bes8 bes8 bes8 |
  bes4 g4 a4 g8 f8~ |
  f2
  
  r4 bes8 bes8 |
  bes4 g4 a4 g8 f8~ |
  f2. r4 \bar "|."
}

BassChorusMusic = \relative c {
  r4 bes4 f'8. f8. ees8 |
  r4 ees4 f8. f8. bes8 |
  
  r4 bes8 g8 f8. f8. ees8 |
  r4 ees8 ees8 f8. f8. g8 |
  
  r4 g4 f8. f8. ees8 |
  r4 ees4 f8. f8. c8~ |
  c2
  
  r8 g'8 g8 g8 |
  ees4 ees4 f4 f8 bes,8~ |
  bes2
  
  r4 g'8 g8 |
  ees4 ees4 f4 f8 bes,8~ |
  bes2. r4 \bar "|."
}

AlignChorusMusic = \relative c'' {
}

SheetMusicChorusBreaks = \relative c {
  r1 | \noBreak
  r1 | \break \noPageBreak
  
  r1 | \noBreak
  r1 | \break \noPageBreak
  
  r1 | \noBreak
  r1 | \noBreak
  r2 \bar "" \break \noPageBreak
  
  r2 | \noBreak
  r1 | \noBreak
  r2 \bar "" \break \noPageBreak
  
  r2 | \noBreak
  r1 | \noBreak
  r1 | \pageBreak
}

SlidesChorusBreaks = \relative c {
}

VerseOne = \lyricmode {
  \set stanza = "1. "
  O -- ver all the earth You reign on high,
  Ev -- 'ry moun -- tain stream ev -- 'ry sun -- set sky,
  But my one re -- quest Lord my on -- ly aim,
  Is that you'd reign in me a -- gain!
}

VerseTwo = \lyricmode {
  \set stanza = "2. "
  O -- ver ev -- 'ry tho't o -- ver ev -- 'ry word,
  May my life re -- flect the beau -- ty of my Lord,
  'Cause you mean more to me than an -- y earth -- ly thing,
  So won't you reign in me a -- gain!
}

ChorusLyrics = \lyricmode {
  Lord reign in me, Reign in your pow'r,
  O -- ver all my dreams, In my dark -- est hour,
  You are the Lord of all I am,
  So won't You reign in me a -- gain!
  Won't You reign in me a -- gain!
}
