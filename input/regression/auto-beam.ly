
\header {

texidoc="Test automatic beamer: the last measure should have a single beam."

}

\version "1.9.2"



\paper  { raggedright = ##t } 

\score {
  \notes \relative c'' {
    a\longa a\breve  
    a1 a2 a4 a8 a16 a32 a64 a64 
  }
  \paper {
    \translator {
      \StaffContext
	\remove "Clef_engraver"
%%	\remove "Staff_symbol_engraver"
    }
  }
}

