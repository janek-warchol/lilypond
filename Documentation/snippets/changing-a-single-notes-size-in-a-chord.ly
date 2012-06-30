%% DO NOT EDIT this file manually; it is automatically
%% generated from LSR http://lsr.dsi.unimi.it
%% Make any changes in LSR itself, or in Documentation/snippets/new/ ,
%% and then run scripts/auxiliar/makelsr.py
%%
%% This file is in the public domain.
\version "2.14.2"

\header {
  lsrtags = "really-simple, specific-notation, tweaks-and-overrides, simultaneous-notes, editorial-annotations"

%% Translation of GIT committish: b482c3e5b56c3841a88d957e0ca12964bd3e64fa
  texidoces = "
Se pueden modificar notas individuales de un acorde con la instrucción
@code{\\tweak}, alterando la propiedad @code{font-size}.

Dentro de un acorde (entre ángulos simples @code{< >}), antes de la
nota que queremos alterar, situamos la instrucción @code{\\tweak}
seguida por @code{#'font-size} y definimos el tamaño adecuado como
@code{#-2} (una cabeza pequeña).

"
  doctitlees = "Modificar el tamaño de una nota suelta de un acorde"

%% Translation of GIT committish: f5cfaf8ef4ac347702f554af0944ef0d8396e73a
  texidocfr = "
La commande @code{\\tweak} permet de modifier la propriété
@code{font-size} d'une note particulière d'un accord.

Il s'agit de placer, à l'intérieur même de l'accord (dans la
construction @code{<@tie{}>}) et avant la note considérée,
l'instruction @code{\\tweak} suivie de @code{#'font-size} et de définir
la taille voulue -- comme @code{#-2} pour une petite tête.

"
  doctitlefr = "Modification de la taille d'une note particulière d'un accord"

  texidoc = "
Individual note heads in a chord can be modified with the
@code{\\tweak} command inside a chord, by altering the @code{font-size}
property.


Inside the chord (within the brackets @code{< >}), before the note to
be altered, place the @code{\\tweak} command, followed by
@code{#'font-size} and define the proper size like @code{#-2} (a tiny
note head).



"
  doctitle = "Changing a single note's size in a chord"
} % begin verbatim


\relative c' {
  <\tweak #'font-size #+2 c e g c \tweak #'font-size #-2 e>1^\markup { A tiny e }_\markup { A big c }
}

