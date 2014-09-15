\version "2.14.2"

myStaffSize = #25

\include "AccordsJazzDefs.ly"
\include "deutsch.ly"

\header	{
  title = "ANTHROPOLOGY"
  poet = "Banjo"	
  composer = "C.Parker, D.Gillespie"
}

note = \relative c'' {
%    \tempo 4 = 300
    \key c \major
%    \set Score.markFormatter = #format-mark-box-letters
    
    %dio A
    \mark \default
    \repeat volta 2 {
%    \partial8
\bar "|:"
b8-1 d-1 c-3 b-1 es-1 cis-3 d-4 f-3 |
r4 r8 es8-2^\markup{\circle \abs-fontsize #9 "VIII"} r8 f8-4 es4-2 |
r8 d-1 es-2 d-1 c-4 a-1 b-2 d-1 |
c8-4 g-0 b-2 a-1 r4 r8  b8-1^\markup{\circle "III"} ~ |
b4 g8-3 b-1 d-1 b-1 r8 e8-4 ~ |
e8 es-3 ~ es ges,-2 ~ ges b-1 c-3 d-1 |}
\alternative{
{f4-3 r8 h,8-1 r8 as'4-4 fis8-3^\markup{\circle \abs-fontsize #11 "VII"} |
g8-4 c,-1 b-4 g-1 d'-3 f-2 r4
\bar ":|"}
{
\times 2/3 {es8-2 f-3 es-2} d8-1 f-1 r8 d8-1 es-2 g,-3 |}
}
c8-4 g-3 b-1 c-3 r4 r8 \breathemoj fis8-1^\markup{\circle \abs-fontsize #10 "VII"} ~ |
fis4 g8-2 gis-3 a-4 fis-1 g-2 a-4 |
fis8-1 d-1 r4 r4 r8 e8-3 |
f8-4 e-3 d-1 h-3 e-3 d-1 h-3 a-1 |
r4 r8 a'8-4^\markup{\circle"X"} ~ a a4-4 a8-4 ~ |
a8-4 g-2 e-3 d-1 ~ d4. a8-1 |
\times 2/3 {c16-1 d-3 c-1} g8-1 b-4 c-1 r4 r8 es8-4 ~ |
es4 d8-3 c-1 h-4 d-3 c-1 g-1 |
c4-1 b8-4 a-3 r4 r8 \breathemoj f8-1 |
b8-1 d-1 c-3 b-1 es-1 cis-3 d-4 f-3 |
r4 r8 es8-2^\markup{\circle \abs-fontsize #8 {"VIII"}} r8 f8-4 es4-2 |
r8 d8-1 es-2 d-1 c-4 a-1 b-2 d-1 |
c8-4 g-0 b-2 a-1 r4 r8 b8-1^\markup{\circle "III"} ~ |
b4 g8-3 b-1 d-1 b-1 r8 e8-4 ~ |
e8 es-3 ~ es ges,-2 ~ ges b-1 c-3 d-1 |
\times 2/3 {es8-2 f-3 es-2} d-1 f-1 r8 d8-1 es-2 g,-3 |
c8-4 b-2 a-1 b-2 r2 |
\bar "|."

%r4 f'8 g16 a \times 2/3 {b8 c cis} d8 b |
%c8 b a b c f, r4 |
%r4 r8 cis8 \times 2/3 {d8 f a} b8 g |
%es8 c \times 2/3 {b'8 c b} a8 g d es |

%f8 g as g f es d c |
%b8 a as c b' g es c |
%b'8 ges es a, b es c cis |
%d2 r4 r8 f8 |
%b8 f d b f b d f |
%b8 ges d b ges b d ges |
%b8 g es c d es f4 |
%r4 r8 f8 g16 b d f es4 |
%r2 \times 2/3 {d8 dis e} f8 es |
%d8 c b as g b c d |
%f8 es d c \times 2/3 {a8 ais h} c8 a |
%b8 f ~ f4 r2 |
%\times 2/3 {e'8 d c} h8 a g fis e h |
%\times 2/3 {c8 es ges} b8 ges es c a' g |
%f8 e \times 2/3 {d8 des c} h4 es'8 h |
%as8 f es h es e g a |
%b8 c d gis, a c b a |
%g8 f e d as' e des h |
%g'4 es16 d c h ~ h8 g' es h |
%b8 as a ges' es e f4 |
%r8 es8 c cis d b g a |
%c8 b a16 c es ges f8 cis \times 2/3 {d8 f a} |
%b4 f g2 |
%r2 r4 \times 2/3 {f8 g a} |
%\times 2/3 {b8 c cis} d4 b f |
%g2 r2 |
%r1 |
%r4 d'2. |
%f,8 b d g f4. es8 ~ |
%es4 d r4 r8 d,8 |
%e8 g b d c c c a ~ |
%a4 g4 r4 g'8 ges |
}



akordi = \chordmode {
   \set chordChanges = ##t
b2:6 g:7 | c2:m7 f:7 |
b2:6 g:m7 | c:7 f:7 | b1:7 | es2:6 es:m6 |
d2:m7 g:7 | c:m7 f:7 | d2:m7 g:7 | c4:m7 f:7 b2:6 |
d1:7 | d:7 | g:7 | g:7 |
c1:7 | c:7 | f:7 | f:7 |
b2:6 g:7 | c2:m7 f:7 | b2:6 g:m7 | c:7 f:7 |
b1:7 | es2:6 es:m6 | d:m7 g:7 | c4:m7 f:7 b2:6 | 
%b1 | c2:m f:7 | d:m g:7 | c:m f:7 |

%b1:7 | es:7 | b2:7 g:7 | c:m f:7 |
%b1 | c2:m f:7 | d:m g:7 | c:m f:7 |
%b1:7 | es1 | b1 | b1 |
%d1:7 | d:7 | g:7 | g:7 |
%c1:7 | c:7 | f:7 | f:7 |
%b1 | c2:m f:7 | b g:7 | c:m f:7 |
%b1:7 | es:7 | b2 g:7 | c:m f:7 |
%b1 | c2:m f:7 | d:m g:7 | c:m f:7 |
}

%kiticaA = \lyricmode {
%\set stanza = #"1. "
%\skip4 \skip4
%}

%ref = \lyricmode {
%}

%kiticaB = \lyricmode {
%\set stanza = #"2. "
%}

%kiticaC = \lyricmode {
%\set stanza = #"3. "
%\skip4 \skip4
%}

\score {
	<<
	\new ChordNames { \semiGermanChords \akordi }
	\new Staff { \note }
%        \addlyrics { \kiticaA \ref }
%        \addlyrics { \kiticaB }
%        \addlyrics { \kiticaC }
	>>
%	\midi {}
	}
