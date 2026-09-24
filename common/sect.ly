
rbar = { \set Score.currentBarNumber = 1 }

rbreak = { \rbar \break }

sect = #(define-music-function (text title) (string? string?)
  #{
    \rbar
    \break
    \sectionLabel \markup { \box { #text } #title }
  #}
)

sect = #(define-music-function (text title) (string? string?)
  #{
    \rbar
    \break
    \sectionLabel \markup { \box { #text } #title }
  #}
)

sect-coda = #(define-music-function (text title) (string? string?)
  #{
    \rbar
    \break
    \inline-coda
    \sectionLabel \markup { \box { #text } #title }
  #}
)

sect-coda-no-break = #(define-music-function (text title) (string? string?)
  #{
    \rbar
    \inline-coda
    \sectionLabel \markup { \box { #text } #title }
  #}
)

sect-segno = #(define-music-function (text title) (string? string?)
  #{
    \rbar
    \break
    \sectionLabel \markup { {\fontsize #5 \segno } \box { #text } #title }
  #}
)

sect-no-break = #(define-music-function (text title) (string? string?)
  #{
    \rbar
    \sectionLabel \markup { \box { #text } #title }
  #}
)

ssect = #(define-music-function (text) (string?)
  #{
    \rbar
    \break
    \sectionLabel \markup { #text }
  #}
)

ssect-no-break = #(define-music-function (text) (string?)
  #{
    \rbar
    \sectionLabel \markup { #text }
  #}
)
