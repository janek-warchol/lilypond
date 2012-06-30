% DO NOT EDIT this file manually; it is automatically
% generated from Documentation/snippets/new
% Make any changes in Documentation/snippets/new/
% and then run scripts/auxiliar/makelsr.py
%
% This file is in the public domain.
%% Note: this file works from version 2.15.27
\version "2.15.27"

\header {
%% Translation of GIT committish: b482c3e5b56c3841a88d957e0ca12964bd3e64fa
  texidoces = "
En una música que tenga muchas apariciones de la
misma secuencia de notas a distintas alturas, podría ser de
utilidad la siguiente función musical.  Admite una nota, de la que
sólo se utiliza su altura.  Las funciones de apoyo en Scheme se
han tomado prestadas del documento de \"Consejos y trucos\" de la
versión 2.10 del manual.  Este ejemplo crea las duraciones
rítmicas que se usan a todo lo largo de «Marte», de «Los Planetas»
de Gustav Holst.

"
  doctitlees = "Crear una secuencia de notas a distintas alturas"

%% Translation of GIT committish: f5cfaf8ef4ac347702f554af0944ef0d8396e73a
  texidocfr = "
Lorsque la musique comporte à de nombreuses reprises une même séquence
sur des hauteurs différentes, la fonction musicale ci-dessous peut
s'avérer fort utile.  Elle considère une note dont seule la hauteur est
utilisée.  Cet exemple reproduit le rythme utilisé tout au long de
@qq{Mars}, l'une des pièces de l'œuvre de Gustav Holst @qq{Les planètes}.

"
  doctitlefr = "Création d'une séquence de notes de même hauteur"

  lsrtags = "pitches"

  texidoc = "
In music that contains many occurrences of the same sequence of notes
at different pitches, the following music function may prove useful.
It takes a note, of which only the pitch is used.   This example
creates the rhythm used throughout Mars, from Gustav Holst's The
Planets.

"
  doctitle = "Creating a sequence of notes on various pitches"
} % begin verbatim


rhythm =
#(define-music-function (parser location p) (ly:pitch?)
   "Make the rhythm in Mars (the Planets) at the given pitch"
  #{ \times 2/3 { $p 8 $p $p } $p 4 $p $p 8 $p $p 4 #})

\new Staff {
  \time 5/4
  \rhythm c'
  \rhythm c''
  \rhythm g
}
