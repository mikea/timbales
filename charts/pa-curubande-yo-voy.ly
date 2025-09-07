\version "2.24.2"
\include "charts/common.ly"

date = #(strftime "%Y-%m-%d" (localtime (current-time)))

\header {
  title = "Pa' Curubandé Yo Voy"
  subsubtitle = "(Salsa 2-3)"
  composer = "Ramses Araya"
  instrument = "Timbales"
  tagline = \markup { "Pa' Curubandé Yo Voy - https://mikea.github.io/timbales/ - " \date }
}

\newTimbalesStaff <<
    \newDrumVoiceOne \drummode { 
        \tempo 4 = 200

        \sect "Intro" ""
        r1 | r1 | r1 | r4 cymc r8 cymc4. | 

\repeat segno 2 {
        \sect "Coro" "clave"
        r1 | r1 | r1 | r1 |
        \sectionLabel "double cascara"
        \comp #4 | \comp #4 | \comp #4 | \rs \rs \rs \drag timh8^> timh8^> | \bar "||"

        \sect "Voz" "double cascara"
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar ":|]"

        \sect "Coro 2" "campanas"
        cymc4 \rs \rs \rs | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | \comp #4 | 
        r8 cb r cb r2 | r4 r8 timl timh4 timl8 timh8 | r1 |                                       

}

        r8 cb16 cb16 cb4 r8 cb16 cb cb4 |
        cb4 cb4 r8 cb cymc4

        r2 r4 r8 \flam timh^> | r4 cb8 cb8 r8 cymc4. | r1 | \ruff timh4^> r8 cb8 r4 cymc4 |
        \comp #4 | \comp #4 | \comp #4 | \abanico-long~ |

        \sect "Coro/Pregon" "campanas"  
        \bar "[|:-||"
        timh4^> \rs \rs \rs | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x7" |
        \bar ":|]"

        \sect "Mambo" "campanas"  
        cymc4 \rs \rs \rs | \comp #4  | \comp #4  | \rs \rs r8 timh8 timl4 |
        cymc4 \rs \rs \rs  | \comp #4  | \rs \rs \rs r8 cb  | r8 cb r8 cb r8 cb cb4^> | 
        \break
        cymc2 cymc2  | \comp #4  | \comp #4  | \comp #4
        cymc2 cymc2  | \comp #4  | \comp #4  | r4 r8 cb r4 cymc4 |

        \sect "Timbales solos" ""  
        \bar "[|:-||"
        \comp #4  | \comp #4  | \comp #4  | \comp #4  | 
        \comp #4  | \comp #4  | \comp #4  | \comp #4  | 
        
        \bar ":|][|:"

        \sect "Mona/Coro" "ride"  
        cymc4 \rs \rs cymc4 | \comp #4  | \comp #4  | \comp #4  | \bar "||"
        cymc4 \rs \rs cymc4 | \comp #4  | \textMark "2nd time" cb4 cb cb cb  | cb cb8 cb8^> r4 cb8 cymc8  | 
        \bar ":|][|:"

        \sect "Coro 5" "clave"
        r1 | r1 \textEndMark "x3" | \bar ":|]" | 
        \set Score.currentBarNumber = 7
        r1 | r4 r8 timh8^> timh2:16~ |
        \rbar
        \sectionLabel "campanas"
        \bar "[|:-||"
        \comp #4  | \comp #4  \textEndMark "x3" | \bar ":|]"
        \set Score.currentBarNumber = 7
        | \comp #4  | r8 timh4.:16 timh8^> timh8^> r4  | 

        \sect "Coro/Pregon 2" "campanas"  
        \bar "[|:-||"
        \textMark "1st time" cymc4 \rs \rs \rs | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x3" |
        \bar ":|]"
        \sect "Last Coro" ""
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        
        \comp #4 | \comp #4 | \rs \rs \rs cymc4 | cymc4 r cymc4 cymc |
        r4 r8 cymc8 r4 cymc4 | cymc4 cymc cymc2 | cymc8 cymc8^> r4 r2
        
        \fine
    }
>>
