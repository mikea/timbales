\version "2.24.2"
\include "common/all.ly"

date = #(strftime "%Y-%m-%d" (localtime (current-time)))

\header {
  title = "Fuego en el 23"
  composer = "La Sonora Poncena"
  poet = "Percussion"
  meter = "2-3 clave"
  tagline = \markup { "Fuego en el 23 - https://github.com/mikea/timbales - " \date }
}


sect = #(define-music-function (text title) (string? string?)
  #{
    \set Score.currentBarNumber = 1
    \break
    \sectionLabel \markup { \box { #text } #title }
  #}
)

\score {
    \drums {
        \override Score.BarNumber.break-visibility = ##(#f #t #t)

        % intro
        \textMark "cascara"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \rs \rs \rs timl4^> | \comp #4 | \rs \rs \rs timl4^> |
        \bar "||" 


        % A
        \sect "A" ""
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        timl4^> r2 timl4:16~ | 
        \bar "||" 

        % B
        \sect "B" ""
        timl4^> \rs \rs \rs | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | \rs \rs \rs timl4:16~ |
        \bar "||" 


        % C
        \sect "C" ""
        timl4^> \rs \rs \rs | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 |  \rs \rs \rs timl4:16~ | 
        \bar "||" 

        % D
        \sect "D" ""
        timl4^> \rs \rs \rs | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | \bar "||"  \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar "||" 

        % E
        \sect "E" ""
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | 
        \bar "||" 

        % F
        \sect "F" ""
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar "||" 

        % G
        \sect "G" ""
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar "||" 

        % H
        \sect "H" "Coro"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar "||" 

        \sect "I" "Coro (3x)"
        \bar "[|:"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar ":|]"
        \sectionLabel "Last Coro"
        \set Score.currentBarNumber = 1
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \sectionLabel "Mambo (4x)"
        \set Score.currentBarNumber = 1
        \bar "[|:" \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar ":|][|:"
        \set Score.currentBarNumber = 1
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar ":|]"

        % J
        \sect "J" "Bass Solo"
        r1 | r1 | r1 | r1 |
        \bar "||" 

        % K
        \sect "K" ""
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar "||" 


        % L
        \sect "L" "Coro"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar "||" 
        \sectionLabel "Guia"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar "||" 

        % M
        \sect "M"  "Coro (3x)"
        \bar "[|:"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar "||" 
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar ":|]"
        \sectionLabel "Last Coro"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar "[|:"
        \sectionLabel "Mona + Tr."
        \textMark "ride"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar ":|]"
        \textMark "bell"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar "||" 

        % N
        \sect "N" "Guia"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |

        % O
        \sect "O" "Coro"
        \bar "[|:"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \sectionLabel "Guia"
        \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar ":|]"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 |
        \bar "||" 
    }
}
