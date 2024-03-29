%---------------------------------
%\include "_/AccordsJazzDefs.ly"
%
% on peut enregistrer ces commandes dans un fichier "AccordsJazzDefs.ly" par exemple
% pour bénéficier de ces définition il faut substituer la police de base du \chormode
% par la police spéciale "lilyjazzchord" ou les altérations sont définies par les caractères > = b et < = #
%---------------------------------

% modification de la procedure "chordRootNamer"
%---- définition des altérations dans les accords -------
#(define (chordNamer pitch majmin)	;majmin is un argument nécessaire à "chordNamer" mais inutile ici
	(let* ((alt (ly:pitch-alteration pitch)))
		(make-line-markup
			(list
				(make-simple-markup 
					(vector-ref #("C" "D" "E" "F" "G" "A" "B")
						(ly:pitch-notename pitch)))
				(if (= alt 0)			; alteration ?
					(markup "")		;non
					(if (= alt FLAT)	; b ou #
						(markup ">")
						(markup "<")
					)
				)
			)
		)
	)
)

%----- commandes markup pour simplifier l'ecriture de l'interprétation des accords -----
%----- cette partie peut etre adaptée a vos convenances ( "MI" et "MA" que je n'aime pas par exemple)
% commande accord mineur "acMin" les accords mineurs sont symbolysés par un "m" small
#(define-markup-command (acMin layout props extension) (string?)
	(interpret-markup layout props
		(markup #:small "m" #:super extension)))

% commande accord majeur "acMaj" les accords mineurs sont symbolysés par un "M" small
#(define-markup-command (acMaj layout props extension) (string?)
	(interpret-markup layout props
		(markup #:super "M" #:super extension)))

% commande accord altéré "acAlt" aguments : exposant puis 2 valeurs qui seront supperposées entre parenthèses 
#(define-markup-command (acAlt layout props strA strB strC) (string? string? string?)
	(interpret-markup layout props
	  	(markup 
			#:super strA
			#:fontsize 1.5 "["
			#:fontsize -4 
			#:raise 1.8
			#:column (strB strC) 
			#:fontsize 1.5 "]"
	  	)
	)
)

% modification de la propriété "chordNameExceptions" 
%----- Définition des exceptions pour les accords -----
% 
%	degrés 			markup				% écriture
chJazzMusic = {
% accords 1ere tierce mineure - 3  notes
	< c ees ges >		-\markup \super "dim."		% :dim
	< c ees g >		-\markup \acMin #""		% :m

% accords 1ere tierce mineure - 4  notes
	< c es ges beses >	-\markup \super "7dim" 		% :dim7
	< c ees gis >		-\markup \acMin #"aug"		% :m5+ (Ab/C)	
	< c ees g a >		-\markup \acMin #"6"		% :m6            
	< c ees ges bes >	-\markup \acMin #"7 >5"		% :m7.5-         
	< c ees g bes >		-\markup \acMin #"7"		% :m7            
	< c ees gis bes >	-\markup \acMin #"7 <5"		% :m7.5+         
	< c ees g b >		-\markup \acMin #"M7"	 	% :m7+           
	< c ees g d' >		-\markup \acMin #"add9"		% :m5.9
	
% accords 1ere tierce mineure - 5  notes et +
	< c ees g a d' >	-\markup \acMin #"6/9"		% :m6.9
	< c ees g bes des' >	-\markup \acMin #"7(>9)"	% :m7.9-
	< c ees g bes d' >	-\markup \acMin #"9"		% :m9
	< c ees ges bes d' >	-\markup \acMin #"9(>5)"	% :m9.5-
	< c ees g b d' >	-\markup \acMin #"9(M7)"	% :m9.7+
	< c ees g bes dis' >	-\markup \acMin #"7(<9)"	% :m7.9+
	< c ees g bes f' >	-\markup \acMin #"7(add 11)"	% :m7.11
	< c ees g bes a' >	-\markup \acMin #"7(add 13)"	% :m7.13
	< c ees g bes d' f' >	-\markup \acMin #"11"		% :m11
	< c ees ges bes d' f' >	-\markup \acMin #"11(>5)"	% :m11.5-
	< c ees g bes d' f' a'>	-\markup \acMin #"13"		% :m13

% accords 1ere tierce majeure - 3 notes
	< c e ges>		-\markup \super "5>"		% :5-
	< c e gis>		-\markup \super "aug"	 	% :aug

% accords 1ere tierce majeure - 4 notes
	< c e g a d'>		-\markup {
		\super "6"
		\hspace #-0.5 \raise #0.7 \tiny "/"
		\hspace #-0.5 \tiny "9"
		}	% :6.9
%accord spécial altéré
	<c e g bes c'>		-\markup \super "7(Alt)" 	% :c:8
%	< c e g a d'>		-\markup \acAlt #"" #"6" #"9"	% :6.9
	< c e g b>		-\markup \acMaj #"7"		% :maj
	< c e ges b>		-\markup \acMaj #"7>5"		% :maj.5-
	< c e gis b>		-\markup \acMaj #"7<5"		% :maj.5+
	
	< c e ges bes>		-\markup \super "7(>5)"		% :7.5-
	< c e gis bes>		-\markup \super "7(<5)"		% :7.5+
	< c e g d'>		-\markup \super "add9"		% :5.9

% accords 1ere tierce majeure - 5 notes et +
	<c e g b d'>		-\markup \acMaj #"9"		% :maj9

	<c e g bes des'>	-\markup \super "7(>9)"			% :9-
	<c e ges bes des'>	-\markup \acAlt #"7" #">9" #">5"	% :9-.5-
	<c e gis bes des'>	-\markup \acAlt #"7" #">9" #"<5"	% :9-.5+
	<c e g bes d' fis'>	-\markup \super "9(<11)"		% :9.11+
	<c e g bes dis'>	-\markup \super "7(<9)"			% :9+
	<c e ges bes dis'>	-\markup \acAlt #"7" #"<9" #">5"	% :9+.5-
	<c e gis bes dis'>	-\markup \acAlt #"7" #"<9" #"<5"	% :9+.5+

	<c e g bes fis'>	-\markup \super "7(<11)"		% :7.11+
	<c e g bes aes'>	-\markup \super "7(>13)"		% :7.13-

	<c e g b d' f'>		-\markup \acMaj #"11"		% :maj11

	< c e g b d' a' >	-\markup \acMaj #"13"		% :maj13 
	< c e g bes d' a' >	-\markup \super "13" 		% :13 
	< c e g bes des' a' >	-\markup \super "13(>9)" 		% :13.9-

% accord sus.
	< c d g>		-\markup \super "sus2"	% :sus2
	< c f g>		-\markup \super "sus"	% :sus4
	< c f g bes>		-\markup \super "7sus"	% :sus4.7
	< c f g bes d'>		-\markup \super "9sus"	% :sus4.7.9
}

%variable permettant d'appeler les exceptions
chJazz = #(append (sequential-music-to-chord-exceptions chJazzMusic #t)ignatzekExceptions)	

%modification des propriétés du contexte Chordnames
\layout {
	\context { \ChordNames
		chordRootNamer = #chordNamer	% substitution du nomage des accords	
		chordNameExceptions = #chJazz	% substitution de l'affichage des extensions
		\override ChordName #'font-name = #"lilyjazzchord" 
		\override ChordName #'font-size = #2
	}
	\context { \Score
		markFormatter = #format-mark-box-numbers
		\override RehearsalMark #'self-alignment-X = #CENTER
		\override RehearsalMark #'color = #blue
		}
	\context {
	  \Voice
	  \override BreathingSign #'font-name = #"Helvetica"
	  \override BreathingSign #'font-size = #8
	  \override BreathingSign #'text = \markup { \raise #0.2 "," }
		%\override BreathingSign #'text = \markup {
		%  \line {
		%    \musicglyph #"scripts.caesura.curved"
		%    \translate #'(-1.75 . 1.6)
	  %    %\musicglyph #"scripts.ufermata"
		%	"bok"
	  %  }
	  %}	
	  \override BreathingSign #'color = #blue
		%\Score markFormatter = #format-mark-box-letters
		}
}

breathemoj = {
  \override Score.RehearsalMark #'extra-spacing-width = #'(0 . 0)
  \override Score.RehearsalMark #'extra-spacing-height = #'(-inf.0 . +inf.0) 
  \once \override Score.RehearsalMark #'X-offset = #0.05
  \once \override Score.RehearsalMark #'Y-offset = #-1.5
  \once \override Score.RehearsalMark #'outside-staff-priority = #1 
  %\override Score.RehearsalMark #'break-align-symbols = #'(breathing-sign)
  \mark \default
  \breathe
}
%-------------------------------
% Fin des définitions
%-------------------------------
myBookTitleMarkup = \markup {
  \override #'(baseline-skip . 3.5)
  \column {
    \fill-line { \fromproperty #'header:dedication }
    \override #'(baseline-skip . 3.5)
    \column {
      \fill-line {
        \huge \larger \larger \bold \fontsize #+4
        \fromproperty #'header:title
      }
      \fill-line {
        \large \bold \fontsize #+1
        \fromproperty #'header:subtitle
      }
      \fill-line {
        \smaller \bold \fontsize #+1
        \fromproperty #'header:subsubtitle
      }
      \fill-line {
        \fromproperty #'header:poet
        { \large \bold \fontsize #+1 \fromproperty #'header:instrument }
        \fromproperty #'header:composer
      }
      \fill-line {
        \fromproperty #'header:meter
        \fromproperty #'header:arranger
      }
    }
  }
}

%myStaffSize = #27
#(set-global-staff-size myStaffSize)
#(set-default-paper-size "a4")
\paper {
	bookTitleMarkup = \myBookTitleMarkup
	%annotate-spacing = ##t
 #(define fonts  (make-pango-font-tree "Dom Casual" "DejaVu Sans Condensed" "lilyjazzchord" (/ myStaffSize 20)))

	indent = 0
	%markup-system-spacing #'padding = #7
	%system-system-spacing #'padding = #1
	%top-markup-spacing #'padding = #2
	%markup-system-spacing #'padding = #1
	%markup-system-spacing #'stretchability = #5
	%score-system-spacing #'padding = #5
	last-bottom-spacing #'padding = #3
	%score-markup-spacing #'padding = #0
	%score-markup-spacing #'stretchability = #0
	%system-markup-spacing #'padding = #2
	%system-markup-spacing #'stretchability = #0
	%top-system-spacing #'padding = #17.5
	
	%markup-markup-spacing #'padding = #3
	
	%system-system-spacing #'padding = #1
	%system-system-spacing #'minimum-distance = #1
	%system-system-spacing #'stretchability = #0
	%score-system-spacing #'stretchability = #3
	%markup-system-spacing #'stretchability = #0
	%score-system-spacing #'stretchability = #5
	ragged-last-bottom = ##f
    }
