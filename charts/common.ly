\include "common/all.ly"

rbar = { \set Score.currentBarNumber = 1 }

rbreak = { \rbar \break }

\layout {
  \context {
    \Score
    % centerBarNumbers = ##t
    % barNumberVisibility = #(every-nth-bar-number-visible 2)
    % \override CenteredBarNumberLineSpanner.direction = #DOWN
    \override JumpScript.font-size = #3
    \override JumpScript.font-series = #'bold
    \override Rest.staff-position = #0
    % \override BarNumber.break-visibility = ##(#f #t #t)
    \override SegnoMark.font-size = #5
    \override CodaMark.font-size = #5
  }
}


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
    \sectionLabel \markup { {\fontsize #5 \coda } \box { #text } #title }
  #}
)

sect-segno = #(define-music-function (text title) (string? string?)
  #{
    \rbar
    \break
    \sectionLabel \markup { {\fontsize #5 \segno } \box { #text } #title }
  #}
)

big-segno = \textMark \markup {\fontsize #5 \segno}
fine = \textMark \markup {\fontsize #5 Fine}
big-coda = \textEndMark \markup {\fontsize #5 \coda}

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

abanico-long = \drummode { \rs r8 timh4.^> timh4:16~ }
abanico-short = \drummode { \rs \rs \rs timh4:16~ }
abanico-rs = \drummode { timh4:16^> \rs \rs \rs  }

clave-shift = \textMark \markup { \bold "clave shift"}