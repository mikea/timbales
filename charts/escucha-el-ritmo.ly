\version "2.24.2"
\include "charts/common.ly"

date = #(strftime "%Y-%m-%d" (localtime (current-time)))

\header {
  title = "Escucha el Ritmo"
  subsubtitle = "(Cha-Cha-Cha)"
  composer = "Spanish Harlem Orchetra"
  instrument = "Timbales"
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
        timl4 timl8 timh8 r8 timl8 timl8 timh8 | r4 r8 timl8 timh8 timh8 r4 |
        \bar "||"

        \sectionLabel "Piano"
        r2 r2 | r2 r2 | r2 r2 | r2. timh4:16 |
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |


        \sect "Trumpet"
        \bar "[|:-|"
        \comp #4 | \comp #4 | \comp #4 | \rs \rs \rs timh4:16~ ^"2nd time" |
        \bar ":|][|:" 

        \sect "Coro & Horn Solo (open)"
        timh4^> \rs \rs \rs | \comp #4 | \comp #4 | \rs \rs \rs timh4:16~ ^"2nd time" |

        \bar ":|][|:" 

        \sect "Coro/Pregon (open)"
        timh4^> \rs \rs \rs | \comp #4 | \comp #4 | \comp #4 |
        \bar ":|]"
        \sectionLabel "Last Coro (on cue)"
        \comp #4 | \comp #4 | \comp #4 | r2 r8 timl8 timl8 timh8 |
        \bar "||"
        timl8 timl8 timh4 r2 | r8 timl4 timl8 r4 timh8 timh8 |

        \sect "Piano (open)"
        \bar "[|:-|"
        \textMark "cascara"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar ":|]"
        \sectionLabel "on cue"
        \comp #4 | \comp #4 | \rs \rs \rs timh4^> | r8 timh4 timh8 r4 timh8 timh8 |
        \bar "||"


        \sect "Mambo"
        \bar "[|:-|"
        \textMark "bell"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar ":|][|:" 
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar ":|]"
        \break
        r4 r8 timl8 r4 r8 timh8  | r8 timh4 timh8 r4 \tuplet 3/2 { cb8 cb8 cb8 }  |
        \bar "[|:-|"
        cb4 r4 r2 | r1 | r8 cb8 cb4 r2 | r2 r8 cb8 cb4 |
        \bar ":|][|:" 

        \sect "Perc Solo / Coro (open)"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar ":|][|:" 

        \sect "Mona"
        \comp #4 | \comp #4 | \comp #4 | \rs \rs \rs timh4:16~ ^"2nd time" |
        \bar ":|][|:" 

        \sect "Coro / Pregon (open)"
        timh4^> \rs \rs \rs | \comp #4 | \comp #4 | \comp #4 |
        \bar ":|][|:" 

        \sect "Coda"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar ":|]"

        cb8 cb8 cb4 r2 | r8 cb8 r4 r4 cb8^> cb8^> | 
        
        \fine
    }
>>
