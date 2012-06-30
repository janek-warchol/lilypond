% DO NOT EDIT this file manually; it is automatically
% generated from Documentation/snippets/new
% Make any changes in Documentation/snippets/new/
% and then run scripts/auxiliar/makelsr.py
%
% This file is in the public domain.
%% Note: this file works from version 2.15.19
\version "2.15.19"

\header {
%% Translation of GIT committish: b482c3e5b56c3841a88d957e0ca12964bd3e64fa
  texidoces = "
La agrupación de pulsos dentro de un compás está controlada por la
propiedad de contexto @code{beatStructure}.  Hay establecidos valores
de @code{beatStructure} para muchos tipos de compases en
@file{scm/time-signature-settings.scm}.  Los valores de
@code{beatStructure} se pueden cambiar o establecer con @code{\\set}.
Como alternativa, se puede usar @code{\\time} para establecer tanto el
compás como la estructura de pulsos.  Para ello, especificamos la
agrupación interna de los pulsos del compás como una lista de números
(en la sintaxis de Scheme) antes de la indicación de compás.

@code{\\time} se aplica al contexto @code{Timing}, por lo que no
restablece los valores de @code{beatStructure} ni de @code{baseMoment}
que se establezcan en otros contextos de nivel inferior, como
@code{Voice}.

Si el grabador @code{Measure_grouping_engraver} está incluido en uno
de los contextos de presentación, se imprimirán signos de agrupación
de pulsos.  Estos símbolos facilitan la lectura de música moderna
rítmicamente compleja.  En este ejemplo, el compás de 9/8 se agrupa
según dos patrones distintos utilizando los dos métodos, mientras que
el compás de 5/8 se agrupa de acuerdo con el ajuste predeterminado que
está en @file{scm/time-signature-settings.scm}:

"
doctitlees = "Símbolos de dirección y símbolos de agrupación de compás"


%% Translation of GIT committish: 0a868be38a775ecb1ef935b079000cebbc64de40
  texidocde = "
Optionen, mit denen die Balken in einem Takt gruppiert werden, sind
durch die Scheme-Funktion @code{set-time-signature} erhältlich, die
drei Argumente braucht:  Die Zahl der Taktschläge, die Länge des
Schlages und die interne gruppieren von Balken in dem Takt.  Wenn der
@code{Measure_grouping_engraver} hinzugefügt worden ist, erstellt
diese Funktion auch @code{MeasureGrouping}-(Taktgruppen)-Zeichen.  Derartige
Zeichen erleichtern das Lesen von rhythmisch komplexer Musik.  In dem
Beispiel ist der 9/8-Takt in 2, 2, 2 und 3 aufgeteilt.  Das wird
der @code{set-time-signature}-Funktion als das dritte Argument mitgegeben:
@code{'(2 2 2 3)}:

"
  doctitlede = "Dirigierzeichen Taktgruppenzeichen"



%% Translation of GIT committish: f5cfaf8ef4ac347702f554af0944ef0d8396e73a
  texidocfr = "
Les règles de ligature par mesure sont gérées par la propriété
@code{beatStructure}.  Ses valeurs par défaut sont répertoriées, par
métrique, dans le fichier @code{scm/time-signature-settings.scm}.  Elles
sont modifiables grâce à la commande @code{\\set}.
La fonction Scheme @code{set-time-signature} permet quant à elle de
définir à la fois la métrique et la pulsation.  Celle-ci prend trois
arguments@tie{}: le nombre de pulsations, la durée de la pulsation et le
regroupement des pulsations dans la mesure.   @code{\\time} et
@code{set-time-signature} s'appliquent tous deux au contexte
@code{Timing}@tie{}; ils ne redéfiniront donc pas les valeurs de
@code{beatStructure} ou @code{baseMoment} lorsqu'elles sont
modifiées dans un contexte de niveau inférieur comme @code{Voice} par
exemple.

Si l'on fait appel au @code{Measure_grouping_engraver}, la fonction
@code{set-time-signature} créera aussi des symboles
@code{MeasureGrouping}.  Ces symboles aident à la lecture des œuvres
modernes à la rythmique complexe.  Dans l'exemple qui suit, la mesure à
9/8 est divisée en 2, 2, 2 et 3, alors que la mesure à 5/8 répond aux
règles par défaut contenues dans le fichier
@w{@code{scm/beam-settings.scm}}.

"
  doctitlefr = "Signes de direction signes de sous-groupe"

  lsrtags = "rhythms"
  texidoc = "
Beat grouping within a measure is controlled by the context property
@code{beatStructure}.  Values of @code{beatStructure} are
established for many time signatures in
@file{scm/time-signature-settings.scm}.  Values of @code{beatStructure}
can be changed or set with @code{\\set}.
Alternatively, @code{\\time} can be used to both
set the time signature and establish the beat structure.
For this, you specify the internal grouping of beats in a measure
as a list of numbers (in Scheme syntax) before the time signature.

@code{\\time} applies to the @code{Timing} context, so it will not
reset values of @code{beatStructure} or @code{baseMoment} that are set
in other lower-level contexts, such as @code{Voice}.

If the @code{Measure_grouping_engraver} is included
in one of the display contexts, measure grouping signs will be
created.  Such signs ease reading rhythmically complex modern music.
In the example, the 9/8 measure is grouped in two different
patterns using the two different methods, while the 5/8 measure
is grouped according to the default setting in
@file{scm/time-signature-settings.scm}:
"
  doctitle = "Conducting signs measure grouping signs"
} % begin verbatim



\score {
  \new Voice \relative c'' {
    \time 9/8
    g8 g d d g g a( bes g) |
    \set Timing.beatStructure = #'(2 2 2 3)
    g8 g d d g g a( bes g) |
    \time #'(4 5) 9/8
    g8 g d d g g a( bes g) |
    \time 5/8
    a4. g4 |
  }
  \layout {
    \context {
      \Staff
      \consists "Measure_grouping_engraver"
    }
  }
}
