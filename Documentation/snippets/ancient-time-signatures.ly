%% DO NOT EDIT this file manually; it is automatically
%% generated from LSR http://lsr.dsi.unimi.it
%% Make any changes in LSR itself, or in Documentation/snippets/new/ ,
%% and then run scripts/auxiliar/makelsr.py
%%
%% This file is in the public domain.
\version "2.14.2"

\header {
  lsrtags = "ancient-notation"

%% Translation of GIT committish: b482c3e5b56c3841a88d957e0ca12964bd3e64fa
  texidoces = "
Las indicaciones de compás también se pueden grabar en estilo antiguo.

"
  doctitlees = "Indicaciones de compás antiguas"

%% Translation of GIT committish: 85394d425536d267ed0cb71d17023849f1611180
  texidocfr = "
La métrique peut s'imprimer dans un style ancien.

"
  doctitlefr = "Métrique ancienne"


  texidoc = "
Time signatures may also be engraved in an old style.



"
  doctitle = "Ancient time signatures"
} % begin verbatim


{
  \override Staff.TimeSignature #'style = #'neomensural
  s1
}

