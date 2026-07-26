\version "2.24.2"
\include "charts/common.ly"

date = #(strftime "%Y-%m-%d" (localtime (current-time)))

\header {
  title = "¡Quieren Salsa!"
  subsubtitle = "(Salsa)"
  composer = "La Dimensión Latina"
  instrument = "Timbales"
  tagline = \markup { "¡Quieren Salsa! - https://mikea.github.io/timbales/ - " \date }
}

\newTimbalesStaff <<
    \newDrumVoiceOne \drummode { 
        \tempo 4 = 204
        
    \autoLineBreaksOff
        \partial 8 timh16 timh16 |
        \sect-no-break "Intro" "" 
        timl4 timh8 timl8 r8 timh16 timh16 timl4 | 
        \sectionLabel "(piano + guiro)" r1 | r1 | r2 r4 <<cb4^>~ timl4>> | \bar "||"
        \sectionLabel "(campanas 2-3)"
        \bar "[|:-||"
    \repeat volta 3 {
        cb4^> cb4 cb8 cb8^> r8 cb8 | cb4^> cb8 cb8 cb4^> cb8 cb8 \textMark "simile..." | \comp #4 
        \alternative {
            \volta 1,2 { \comp #4 | \bar ":|]"}
            \volta 3 { <<cb4 timl>> r8 <<cb8 timl>> r8 <<cb8 timl>> r4 | \bar "||" }
        }
    }
        <<cb4^> timl>>  <<cb4^> timl>> <<cb4^> timl>> <<cb8 timl>> <<cb8 timl>>  | <<cb4^> timl>>  r4 r2 |
    \autoLineBreaksOn

        \sect "A" "Coro (campanas 2-3)" 
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \rs \rs \only-last r8 timh8 timl4 | \bar "||"

        \sect-no-break "B" "Voz (cascara 2-3)" 
        \bar ":|][|:"        
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x6" | \bar "||"
        \bar ":|]"        
        \comp #4 | \rs \rs \rs <<cb4^> timl>> |

        \sect "C" "(campanas 2-3)" 
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \rs \rs \rs \only-first cymc4^. | \bar "||"
        \bar ":|]"        
        <<cb4^> timl>>  <<cb4^> timl>> <<cb4^> timl>> <<cb8 timl>> <<cb8 timl>>  | <<cb4^> timl>>  r4 r2 |

        \sect-no-break "D" "Coro (campanas 2-3)" 
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \rs \rs \only-last r8 timh8 timl4 | \bar "||"
        \bar ":|]"        

        \sect "E" "Voz (cascara 2-3)" 
        \bar ":|][|:"        
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x6" | \bar "||"
        \bar ":|]"        
         \comp #4 | <<cb4^> timl>> r8 <<cb8^> timl>> r4 <<cb4^> timl>> |  
         r8 <<cb8^> timl>> r4  <<cb2^> timl>> | 
         <<cb4^> timl>> <<cb8 timl>> <<cb8^> timl>> r2 | \bar "||"

        \sect "F" "Mambo (campanas 2-3)" 
        \bar ":|][|:"        
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        timl4 cymc4 \rs \rs | \comp #4 | \comp #4 | \comp #4 | \bar "||"

        \sect "G" "Pregon/Coro (campanas 2-3)" 
        \bar ":|][|:"        
        \comp #4 | \rs \rs \only-first  r8 cymc8 r8 cymc8 | \comp #4 | \comp #4 \textEndMark "x5" | \bar "||"
        \bar ":|]"        

        \sect-no-break "H" "Mambo II (campanas 2-3)" 
        \bar ":|][|:"        
        \only-first cymc4 \rs \rs \rs | \comp #4 | \comp #4 | \comp #4 \textEndMark "x4" | \bar "||"
        \bar ":|]"        

        \sect "I" "Coro/Pregon (campanas 2-3)" 
        \bar ":|][|:"        
        \comp #4 | \comp #4 | \comp #4 | \comp #4  \textEndMark "x5" | \bar "||"
        \bar ":|]"        

        \sect "J" "Mona/Pregon (campanas 2-3)" 
        \bar ":|][|:"        
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \rs \rs r8 cymc8 r8 cymc8~ | cymc4 r8 cymc8~ cymc4 r8 cymc8~ | cymc4 r8 cymc8~ cymc4 <<cb4^> timl>> | \bar "||"
        \bar ":|]"        

        \sect "K" "Pregon/Coro (campanas 2-3)" 
        \bar ":|][|:"        
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \bar ":|]"        

        \sect-no-break "L" "Ending (campanas 2-3)" 
        \bar ":|][|:"        
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \bar ":|]"        
        cymc4 cymc4~ cymc2 |

        \bar "|."
    }
>>
 