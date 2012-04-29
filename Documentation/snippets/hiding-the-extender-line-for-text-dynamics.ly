%% DO NOT EDIT this file manually; it is automatically
%% generated from LSR http://lsr.dsi.unimi.it
%% Make any changes in LSR itself, or in Documentation/snippets/new/ ,
%% and then run scripts/auxiliar/makelsr.py
%%
%% This file is in the public domain.
\version "2.14.2"

\header {
  lsrtags = "expressive-marks"

%% Translation of GIT committish: 6977ddc9a3b63ea810eaecb864269c7d847ccf98
  texidoces = "
Los cambios de dinámica con estilo de texto (como cresc. y dim.)
se imprimen con una línea intermitente que muestra su alcance.
Esta línea se puede suprimir de la siguiente manera:

"
  doctitlees = "Ocultar la línea de extensión de las expresiones textuales de dinámica"


%% Translation of GIT committish: 0a868be38a775ecb1ef935b079000cebbc64de40
texidocde = "
Dynamik-Texte (wie cresc. und dim.) werden mit einer gestrichelten Linie
gesetzt, die ihre Dauer anzeigt.  Diese Linie kann auf folgende Weise
unterdrückt werden:

"
  doctitlede = "Crescendo-Linien von Dynamik-Texten unterdrücken"

%% Translation of GIT committish: 3b125956b08d27ef39cd48bfa3a2f1e1bb2ae8b4
  texidocfr = "
Les crescendos et decrescendos indiqués textuellement -- tels que
@emph{cresc.} ou @emph{dim.} -- sont suivis de pointillés qui montrent
leur étendue.  On peut empêcher l'impression de ces pointillés.

"
  doctitlefr = "Masquage de l'extension des nuances textuelles"


  texidoc = "
Text style dynamic changes (such as cresc. and dim.) are printed with a
dashed line showing their extent.  This line can be suppressed in the
following way:

"
  doctitle = "Hiding the extender line for text dynamics"
} % begin verbatim


\relative c'' {
  \override DynamicTextSpanner #'style = #'none
  \crescTextCresc
  c1\< | d | b | c\!
}

