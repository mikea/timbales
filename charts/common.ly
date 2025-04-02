rbar = { \set Score.currentBarNumber = 1 }


\layout {
  \context {
    \Score
    centerBarNumbers = ##t
    barNumberVisibility = #(every-nth-bar-number-visible 2)
    \override CenteredBarNumberLineSpanner.direction = #DOWN
  }
}

sect = #(define-music-function (text title) (string? string?)
  #{
    \rbar
    \break
    \sectionLabel \markup { \box { #text } #title }
  #}
)
