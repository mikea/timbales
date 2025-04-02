\version "2.24.2"
\include "common/all.ly"
\include "charts/common.ly"

date = #(strftime "%Y-%m-%d" (localtime (current-time)))

\header {
  title = "Escucha el Ritmo"
  subsubtitle = "(Cha-Cha-Cha)"
  composer = "Spanish Harlem Orchetra"
  poet = "Timbales"
  meter = "2-3 clave"
  tagline = \markup { "Escucha el Ritmo - https://github.com/mikea/timbales - " \date }
}

sect = #(define-music-function (text) (string?)
  #{
    \rbar
    \break
    \sectionLabel \markup { #text }
  #}
)

\newTimbalesStaff <<
    \newDrumVoiceOne \drummode { 
        \override Score.BarNumber.break-visibility = ##(#f #t #t)

        % intro
        \comp #4 | \comp #4 |
        \bar "||"

        \sectionLabel "Piano"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |


        \sect "Trumpet"
        \bar "[|:-|"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar ":|][|:" 

        \sect "Coro & Horn Solo (open)"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar ":|]"

        \sect "Coro (open)"
        \bar ":|][|:" 
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar ":|]"
        \sectionLabel "on cue"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar "||"
        \comp #4 | \comp #4 |

        \sect "Piano (open)"
        \bar "[|:-|"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar ":|]"
        \sectionLabel "on cue"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar "||"


        \sect "Mambo"
        \bar "[|:-|"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar ":|][|:" 
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar ":|]"
        \comp #4 | \comp #4 |
        \bar "[|:-|"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar ":|][|:" 

        \sect "Perc Solo (open)"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar ":|][|:" 

        \sect "Mona"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar ":|][|:" 

        \sect "Coro (open)"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar ":|][|:" 

        \sect "Coda"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar ":|]"

        \comp #4 | \comp #4 | 
        
        \fine
    }
>>
