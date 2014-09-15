\version "2.14.2"
\include "deutsch.ly"

\header {
    composer = "KATHARINA NEUDECK"
    poet = ""
    title = ""
    subtitle = ""
    arranger = ""
}

\include "config.ly"
\include "jazzChords_grand.ly"

note = \relative c' {
    \tempo 4 = 200
    \key f \major
%    \set Score.markFormatter = #format-mark-box-letters
    
    %dio A
    \mark \default
%    \repeat volta 2 {
%    \partial8

}

akordi = \chordmode {
   \set chordChanges = ##t
 c
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
	\new ChordNames { \semiGermanChords \jazzChords \akordi }
	\new Staff { \note }
%        \addlyrics { \kiticaA \ref }
%        \addlyrics { \kiticaB }
%        \addlyrics { \kiticaC }
	>>
%	\midi {}
	}
