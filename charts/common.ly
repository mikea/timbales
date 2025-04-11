\include "common/all.ly"

rbar = { \set Score.currentBarNumber = 1 }


\layout {
  \context {
    \Score
    centerBarNumbers = ##t
    barNumberVisibility = #(every-nth-bar-number-visible 2)
    \override CenteredBarNumberLineSpanner.direction = #DOWN
    \override JumpScript.font-size = #3
    \override JumpScript.font-series = #'bold
    \override Rest.staff-position = #0
    \override BarNumber.break-visibility = ##(#f #t #t)
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
