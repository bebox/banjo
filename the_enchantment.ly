\version "2.16.0"
\include "deutsch.ly"

\header {
    composer = "BELA FLECK"
    poet = ""
    title = "THE ENCHANTMENT"
    subtitle = ""
    arranger = ""
}

\include "config.ly"
%\include "jazzChords_grand.ly"

note = \relative c'' {
    \time 6/4
    \tempo 4 = 98
    \key c \major
%    \set Score.markFormatter = #format-mark-box-letters
    
    %dio A
    \mark \default
    r4 e8 f g d' <f, a c>2.\arpeggio|
    r4 cis8 d f a <cis, g'>2.\arpeggio |
    r4 c8 cis f ais <cis, f gis>2.\arpeggio
    \times 2/4 {a'4. cis, d g} f4 ~ f4. dis8 |
    \grace c( <d-3 d-0>2.) r2. |
    r2. r2. |

    

%    \repeat volta 2 {
%    \partial8

}

%akordi = \chordmode {
%   \set chordChanges = ##t
% c
%}

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
%	\new ChordNames { \semiGermanChords \akordi }
	\new Staff { \note }
%        \addlyrics { \kiticaA \ref }
%        \addlyrics { \kiticaB }
%        \addlyrics { \kiticaC }
	>>
%	\midi {}
	}
