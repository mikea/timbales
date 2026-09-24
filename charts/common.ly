\include "common/all.ly"

\layout {
  \context {
    \Score
    % centerBarNumbers = ##t
    % barNumberVisibility = #(every-nth-bar-number-visible 2)
    % \override CenteredBarNumberLineSpanner.direction = #DOWN
    \override JumpScript.font-size = #3
    \override JumpScript.font-series = #'bold
    \override Rest.staff-position = #0
    \override BarNumber.break-visibility = ##(#f #f #f)
    \override SegnoMark.font-size = #5
    \override CodaMark.font-size = #5
  }
}
