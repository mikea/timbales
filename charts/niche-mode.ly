\version "2.24.2"
\include "charts/common.ly"

date = #(strftime "%Y-%m-%d" (localtime (current-time)))

\header {
  title = "Niche Mode"
  subsubtitle = "(Salsa)"
  composer = "Grupo Niche"
  instrument = "Timbales"
  tagline = \markup { "Niche Mode - https://mikea.github.io/timbales/ - " \date }
}

\newTimbalesStaff <<
    \newDrumVoiceOne \drummode { 
        \tempo 4 = 182
        
        \partial 4 timh4^> |
        \sect-no-break "Intro" "(campanas 3-2)" 
        | r8 cb8 cb cb cb cb cb cb |
        cymc4 \rs \rs \rs | \rs \rs \rs \drag timh4 | r8 cb8 cb8 cb8 cb8 cb8 r8 cb8 | \bar "||"
        cb4 r4 r2 | r1 | r1 | r2 timh2:16 | \bar "||"

        \sect "A" "Horns/Coro (campanas 3-2)" 
        cb4. cb4. cymc4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"

        \sect "B" "Pregon/Coro (campanas 3-2)" 
        \bar "[|:-||"
    \repeat volta 4 {
        \comp #4 | \comp #4 | 
        \alternative {
           \volta 1,2,3  {  \comp #4 | \comp #4 |  \bar ":|]" } 
           \volta 4  {  \drag timh4^> r8 cb8 r8 cb8 r8 cb8  | r8 cb8 cb4 r8 timh^> timl4 | \bar "||" } 
        }
    }

        \sect "C" "Voz (campanas 3-2)" 
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \rs \rs \rs r8 cymc8~ | cymc4 r8 cymc8~ cymc4 r8 cymc8 | \comp #4 | \comp #4 | \bar "||"
        \break
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \rs \rs r8 cymc8 r8 cymc8 |  cymc4^> \rs \rs \rs | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \rs \rs \tuplet 3/2 { timh16_"R" timh16_"R" timh16_"L" } timh8^>_"R" r4    | 

        \sect "D" "Voz (cascara 3-2)" 
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \rs \rs \rs r8 cymc8~ | cymc4 r8 cymc8~ cymc4 r8 cymc8 | \comp #4 | \comp #4 | \bar "||"
        \break
        \comp #4 | \rs \rs \rs r8 cymc8 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \rs \rs r8 timh8 timl4 |  \clave-shift \rs \rs \rs timh4:16 |

        \sect "E" "Voz (campanas 2-3)" 
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 |  \clave-shift  \rs \rs timh2:16 |  

        \sect "F" "Voz (cascara 3-2)" 
        \rs \rs \rs r8 cymc8~ | cymc4 r8 cymc8~ cymc4 r8 cymc8 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \break
        \comp #4 | \sectionLabel "(campanas 3-2)" \drag timl8 cymc8 \rs \rs \rs | \comp #4 | \rs cymc4 cymc8^> cymc8 \rs | \bar "||"
        \comp #4 | \drag timh4 cymc4 \rs \rs | \comp #4 | \rs cymc4 cymc8^> cymc8 \rs | \bar "||"
        \comp #4 | \rs \rs timh8:32 timh8^> r8 timh8 |\bar "||"

        \sect "G" "Mona/Voz (cascara 3-2)" 
        \bar "[|:-||"
        \only-first timl4 \rs \rs \rs | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \bar ":|]" 

        \sect-no-break "H" "Pregon/Coro (campanas 3-2)" 
        
        \rs \rs \drag timh4^> cb4 | cymc4 \rs \rs \rs | \comp #4 | \comp #4 |
        \break
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x4" | \bar "||"
        \bar ":|]" 
        \clave-shift \rs \rs \rs timh4:16 |

        \sect "I" "Mona (campanas 2-3)" 
        cymc4 \rs \rs \rs | \rs \rs \rs cymc4| \rs \rs \rs cymc4 | \comp #4  | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \break
        \comp #4 | \comp #4 | \comp #4 | \rs \rs cymc4 cymc4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \rs \rs cb4 cymc4 | \bar "||"

        \sect "H" "Pregon/Coro (campanas 2-3)" 
        \comp #4 | \drag timh4 \rs \rs \rs | \comp #4 | \comp #4 | \bar "||"
        \rs cymc4 \rs \rs | \rs cymc4 \rs \rs | \comp #4 | \comp #4 | \bar "||"
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar ":|]" 

        \sect "K" "Mona/Coro (clave 2-3)" 
        \bar ":|][|:"
        \only-first cymc4 \rs \rs \rs | \comp #4 | \comp #4 | \comp #4 |
        \bar ":|][|:"
        \sectionLabel "(campanas 2-3)"
        \only-first cymc4 \rs \rs \rs | \comp #4 | \comp #4 | \rs \rs \only-second timh2:16 |
        \bar ":|]" 

        \sect "L" "Ending (campanas 2-3)" 
        timh4^> \rs \rs \rs | \comp #4 | \comp #4 | \rs \rs \rs \tuplet 3/2 { cb8 cb8 cb8 } |

        
        \bar "|."
    }
>>
 