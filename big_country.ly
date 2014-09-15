\version "2.16.0"
\include "deutsch.ly"

\header {
    composer = "BELA FLECK"
    poet = ""
    title = "BIG COUNTRY"
    subtitle = ""
    arranger = ""
}

\include "config.ly"
%\include "jazzChords_grand.ly"

note = \relative c'' {
    \time 4/4
    \tempo 4 = 98
    \key g \major
%    \set Score.markFormatter = #format-mark-box-letters
    
    %dio A
    \mark \default
    g'8 g, d4 e <g d'> |
    e8( <g) g> d' g g, d' |   

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

<<
  \new Staff \with { \omit StringNumber }
    { \clef "treble_8"  \note }
      \new TabStaff \with {
          tablatureFormat = #fret-number-tablature-format-banjo
	      stringTunings = #banjo-open-g-tuning
	        }
		  { \note }
		  >>
