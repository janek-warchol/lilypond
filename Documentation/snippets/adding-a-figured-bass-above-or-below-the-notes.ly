%% DO NOT EDIT this file manually; it is automatically
%% generated from LSR http://lsr.dsi.unimi.it
%% Make any changes in LSR itself, or in Documentation/snippets/new/ ,
%% and then run scripts/auxiliar/makelsr.py
%%
%% This file is in the public domain.
\version "2.14.2"

\header {
  lsrtags = "chords, contexts-and-engravers, ancient-notation"

%% Translation of GIT committish: b482c3e5b56c3841a88d957e0ca12964bd3e64fa
  texidoces = "

Al escribir un bajo cifrado, podemos situar las cifras encima o debajo
de las notas del bajo, mediante la definición de la propiedad
@code{BassFigureAlignmentPositioning #'direction} (exclusivamente
dentro de un contexto @code{Staff}). Se puede elegir entre @code{#UP}
(o @code{#1}, arriba), @code{#CENTER} (o @code{#0}, centrado) y
@code{#DOWN} (o @w{@code{#-1}}, abajo).

Esta propiedad se puede cambiar tantas veces como queramos.  Utilice
@code{\\once \\override} si no quiere que la sobreescritura se aplique
a toda la partitura.

"
  doctitlees = "Añadir un bajo cifrado encima o debajo de las notas"


%% Translation of GIT committish: 85394d425536d267ed0cb71d17023849f1611180
  texidocfr = "
Une ligne de basse chiffrée peut se positionner au-dessus ou en dessous
d'une partie de basse, grâce à la propriété
@code{BassFigureAlignmentPositioning #'direction} attachée à un contexte
@code{Staff}.  Les possibilités sont  @code{#UP} (ou @code{#1}) pour
au-dessus, @code{#CENTER} (ou @code{#0}) pour centrée, et @code{#DOWN}
(ou @code{#-1}) pour en dessous.

Cette propriété peut être sujette à modification au cours de la
partition.  Il vous faudra insérer un @code{\\once \\override} si ce
changement devait être temporaire.

"
  doctitlefr = "Ajout d'une basse chiffrée au-dessus ou au-dessous des notes"


  texidoc = "
When writing a figured bass, you can place the figures above or below
the bass notes, by defining the @code{BassFigureAlignmentPositioning
#'direction} property (exclusively in a @code{Staff} context). Choices
are @code{#UP} (or @code{#1}), @code{#CENTER} (or @code{#0}) and
@code{#DOWN} (or @code{#-1}).

This property can be changed as many times as you wish. Use
@code{\\once \\override} if you don't want the override to apply to the
whole score.

"
  doctitle = "Adding a figured bass above or below the notes"
} % begin verbatim


bass = {
  \clef bass
  g4 b, c d
  e d8 c d2
}
continuo = \figuremode {
  <_>4 <6>4 <5/>4
  \override Staff.BassFigureAlignmentPositioning #'direction = #UP
  %\bassFigureStaffAlignmentUp
  < _+ >4 <6>
  \set Staff.useBassFigureExtenders = ##t
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  %\bassFigureStaffAlignmentDown
  <4>4. <4>8 <_+>4
}
\score {
  <<
    \new Staff = bassStaff \bass
    \context Staff = bassStaff \continuo
  >>
}


