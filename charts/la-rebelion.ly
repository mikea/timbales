\version "2.24.2"
\include "common/all.ly"

date = #(strftime "%Y-%m-%d" (localtime (current-time)))

\header {
  title = "La Rebelion"
  composer = "Joe Arroyo"
  poet = "Percussion"
  meter = "2-3 clave"
  tagline = \markup { "La Rebelion - https://github.com/mikea/timbales - " \date }
}

rbar = { \set Score.currentBarNumber = 1 }

sect = #(define-music-function (text title) (string? string?)
  #{
    \rbar
    \break
    \sectionLabel \markup { \box { #text } #title }
  #}
)

\score {
    \drums {
        \override Score.BarNumber.break-visibility = ##(#f #t #t)

        % intro
        \bar "[|:" 
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar ":|][|:" 

        \break
        \repeat segno 2 {

          \rbar        
          \repeat volta 2 {
            \comp #4 | \comp #4 | \comp #4 | \comp #4 |
            \comp #4 | \comp #4 |

            \alternative {
              \volta 1 { | \comp #4 | \comp #4 | }
              \volta 2 { 
                { \set Score.currentBarNumber = 7 }
                | r8 timh4^> r8 timh4^> r8 timh8^> | \comp #4 | 
                }
            }
          }
            \comp #4 | \comp #4 | \comp #4 | \comp #4 |


          % A
          \sect "A" ""
          \comp #4 | \comp #4 | \comp #4 | \comp #4 |
          \comp #4 | \comp #4 | \comp #4 | \comp #4 |
          \comp #4 | \comp #4 | \comp #4 | \comp #4 |
          \comp #4 | \comp #4 | \comp #4 |
          \bar "||" 

          % B
          \sect "B" ""
          \comp #4 | \comp #4 | \comp #4 | \comp #4 |
          \comp #4 | \comp #4 | \comp #4 | \comp #4 |
          \comp #4 | \comp #4 | 
          \bar "||" 
          
          \comp #4 | \comp #4 | \comp #4 | \comp #4 |
          \comp #4 | \comp #4 | 
          \bar "||" 

          \alternative {
            \volta 1 {
              \comp #4 | \comp #4 |
              \bar "||" 

              % C
              \sect "C" ""
              \bar "[|:"
              \comp #4 | \comp #4 | \comp #4 | \comp #4 |
              \bar ":|]"
            }

            \volta 2 \volta #'() {
            }
          }
        }

        \break
        \rbar
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar "||" 
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4

        \break
        \sectionLabel "Coro (open)"
        \bar "[|:"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar ":|][|:"

        \sectionLabel "Trumpet (open)"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar ":|][|:"

        \break
        \sectionLabel "Piano (open)"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar ":|][|:"

        \sectionLabel "Coro (open)"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar ":|][|:"

        \break
        \sectionLabel "Coda (on cue)"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar ":|]"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
    }
}
