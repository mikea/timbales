% https://lilypond.org/doc/v2.24/Documentation/snippets/rhythms

% Macro to print single slash
rs = {
  \once \override Rest.stencil = #ly:percent-repeat-interface::beat-slash
  \once \override Rest.thickness = #0.3
  \once \override Rest.slope = #1.7
  \once \override Rest.staff-position = #0
  r4
}

% Function to print a specified number of slashes
comp = #(define-music-function (count) (integer?)
  #{
    \override Rest.stencil = #ly:percent-repeat-interface::beat-slash
    \override Rest.thickness = #0.3
    \override Rest.slope = #1.7
    \override Rest.staff-position = #0
    \repeat unfold $count { r4 }
    \revert Rest.stencil
  #}
)
