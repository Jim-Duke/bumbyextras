\version "2.19.49"
#(use-modules (guile-user))

#(ly:set-option 'relative-includes #t)
\include "../../../LilypondTemplates/functions.ly"
\include "../../../LilypondTemplates/hymns.ly"
\include "../hymn_settings.ly"

global = {
  \key aes \major
  \time 3/4
  \tempo 4 = 110
}

MajorKey = ##t

%%
%% Hymn Metadata Variables
%%

Title = "Immortal, Invisible, God Only Wise"
SongNumber = \immortal_invisible_god_only_wise_number
RightFirstPage = \immortal_invisible_god_only_wise_number_rhs
FirstPage = #(if RightFirstPage 1 2)

LeaderHints = \markup {
  \fontsize #-4
  \normal-text { "A" \musicglyph #"accidentals.flat" " - 4 - DO" }
}

Scripture = "“Now to the King eternal, immortal, invisible, the only God,
              be honor and glory forever and ever. Amen.” (1 Timothy 1:17 NASB95)"

ShowScriptureOnSheetMusic = ##t

\header {
  title = \Title
  tune = "ST. DEVION"
  meter = "11.11.11.11"
  composer = "Welsh Melody (1839)"
  arranger = "Ralph Vaughan Williams (1906)"
  poet = "Walter Chalmers Smith (1867)"
  songNumber = \SongNumber
  lhs = #(if RightFirstPage LeaderHints SongNumber)
  rhs = #(if RightFirstPage SongNumber LeaderHints)
  copyright = "In the Public Domain"
  license = ##f
  tagline = ##f
}

SopranoVerseMusic = \relative c'' {
  \tag #'usePartials { \partial 4 }
  aes4 |
  f4 des4 bes'4 |
  g4 ees4 aes4 |
  c4 c4 bes4 |
  aes2 \bar ""
  
  aes4 |
  f4 des4 bes'4 |
  g4 ees4 aes4 |
  c4 c4 bes4 |
  aes2 \bar ""
  
  aes4 |
  c4 c4 ees4 |
  c4 aes4 aes4 |
  c4 c4 ees4 |
  bes2 \bar ""
  
  c4 |
  aes4 f4 bes4 |
  g4 ees4 aes4 |
  c4 c4 bes4 |
  aes2 \bar "|."
}

AltoVerseMusic = \relative c' {
  \tag #'usePartials { \partial 4 }
  c4 |
  des4 des4 f4 |
  ees4 ees4 c4 |
  ees4 ees4 ees8[ des8] |
  c2 \bar ""
  
  c4 |
  des4 des4 f4 ees4 ees4 c4 |
  ees4 ees4 ees8[ des8] |
  c2 \bar ""
  
  c4 |
  ees4 ees4 ees4 |
  ees4 ees4 f4 |
  ees4 ees4 ees4 |
  ees2 \bar ""
  
  ees4 |
  f4 des4 f4 |
  ees4 ees4 c4 |
  ees4 ees4 ees8[ des8] |
  c2 \bar "|."
}

TenorVerseMusic = \relative c' {
  \tag #'usePartials { \partial 4 }
  aes4 |
  aes4 f4 des'4 |
  bes4 g4 aes4 |
  aes4 aes4 g4 |
  aes2 \bar ""
  
  aes4 |
  aes4 f4 des'4 |
  bes4 g4 aes4 |
  aes4 aes4 g4 |
  aes2 \bar ""
  
  aes4 |
  aes4 aes4 bes4 |
  c4 c4 c4 |
  c4 c4 aes4 |
  g2 \bar ""
  
  aes4 |
  aes4 aes4 des4 |
  bes4 g4 aes4 |
  aes4 aes4 g4 |
  aes2 \bar "|."
}

BassVerseMusic = \relative c {
  \tag #'usePartials { \partial 4 }
  aes4 |
  des4 des4 bes4 |
  ees4 ees4 f4 |
  ees4 ees4 ees4 |
  aes,2 \bar ""
  
  aes4 |
  des4 des4 bes4 |
  ees4 ees4 f4 |
  ees4 ees4 ees4 |
  aes,2 \bar ""
  
  aes4 |
  aes'4 aes4 g4 |
  aes4 aes4 f4 |
  aes4 aes4 c,8[ des8] |
  ees2 \bar ""
  
  aes,4 |
  des4 des4 bes4 |
  ees4 ees4 f4 |
  ees4 ees4 ees4 |
  aes,2 \bar "|."
}

SheetMusicVerseBreaks = \relative c {
  \tag #'usePartials { \partial 4 }
  
  s4  | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2  \bar "" \break
  
  s4  | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2  \bar "" \break
  
  s4  | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2  \bar "" \break
  
  s4  | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2. | \noBreak
  s2  \bar "|."
}

SlidesVerseBreaks = \relative c {
  \tag #'usePartials { \partial 4 }
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
  s2  \bar "|." \break \pageBreak
}

VerseOne = \lyricmode {
  \set stanza = "1. "
  Im -- mor -- tal, in -- vis -- i -- ble, God on -- ly wise,
  In light in -- ac -- ces -- si -- ble hid from our eyes,
  Most bless -- ed, most glo -- rious, the An -- cient of Days,
  Al -- might -- y, vic -- to -- rious, thy great Name we praise.
}

VerseTwo = \lyricmode {
  \set stanza = "2. "
  Un -- rest -- ing, un -- hast -- ing, and si -- lent as light,
  Nor want -- ing, nor wast -- ing, thou rul -- est in might;
  Thy just -- ice like mount -- ains high soar -- ing a -- bove
  Thy clouds, which are fount -- ains of good -- ness and love.
}

VerseThree = \lyricmode {
  \set stanza = "3. "
  To all life thou giv -- est, to both great and small;
  In all life thou liv -- est, the true life of all;
  We blos -- som and flour -- ish as leaves on the tree,
  And with -- er and per -- ish, but nought chang -- eth thee.
}

VerseFour = \lyricmode {
  \set stanza = "4. "
  Great Fa -- ther of Glor -- y, pure Fa -- ther of Light,
  Thine An -- gels a -- dore thee, all veil -- ing their sight;
  All laud we would rend -- er: O help us to see
  'Tis on -- ly the splend -- or of light hid -- eth thee.
}
