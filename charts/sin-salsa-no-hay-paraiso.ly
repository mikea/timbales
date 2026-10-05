\version "2.24.2"
\include "charts/common.ly"

date = #(strftime "%Y-%m-%d" (localtime (current-time)))

\header {
  title = "Sin Salsa No Hay Paraiso"
  subsubtitle = "(Salsa 2-3)"
  composer = "El Gran Combo"
  instrument = "Timbales"
  tagline = \markup { "Sin Salsa No Hay Paraiso - https://mikea.github.io/timbales/ - " \date }
}

\newTimbalesStaff <<
    \newDrumVoiceOne \drummode { 
        \tempo 4 = 190

        \partial 2. r8 \ghost tomh8 r8 \ghost tomh8 \ghost tomh4 | \bar "||"

        \sect-no-break "Intro" "(cascara)"
    \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
    \bar ":|]"

        \sect "A" "Voz (cascara)"
    \bar "[|:-||"
    \repeat volta 4 {
        \comp #4 | \comp #4 | \comp #4 |  
        \alternative {
            \volta 1,2,3 { \comp #4 | \bar ":|]" }
            \volta 4 { \abanico-long }
        }
    }

        \sect "B" "Voz/Coro (campana)"
    \bar "[|:-||"
    \repeat volta 2 {
        \only-first timh4^> \rs \rs \rs | \comp #4 | \comp #4 |  
        \alternative {
            \volta 1 { \comp #4 | \bar ":|]" }
            \volta 2 { \tacum-long }
        }
    }

        \sect "C" "Voz (cascara)"
    \bar "[|:-||"
    \repeat volta 4 {
        \comp #4 | \comp #4 | \comp #4 |  
        \alternative {
            \volta 1,2,3 { \comp #4 | \bar ":|]" }
            \volta 4 { \abanico-long }
        }
    }

        \sect "D" "Voz/Coro (campana)"
    \bar "[|:-||"
        \only-first timh4^> timh4^> \rs \rs | \comp #4 | \comp #4 |  \comp #4 | 
    \bar ":|]" 

        \sect "E" "Mambo (campana)"
    \bar ":|][|:"

    \repeat volta 2 {
        \comp#4 | \comp #4 | \comp #4 |  
        \alternative {
            \volta 1 { \comp #4 | \bar ":|]" }
            \volta 2 { \rs r8 <<cymc4. timh>> \rs }
        }
    }

        \sect "F" "Pregon/Coro (campana)"
    \bar "[|:-||"
        \comp #4  | \comp #4 | \comp #4 |  \comp #4 \textEndMark "x6" | 
    \bar ":|]" 

        \sect "G" "Mambo II (campana)"
    \bar ":|][|:"
        \repeat-text "2nd, 3rd time" <<cymc4 timh>> \rs \rs \rs  | \comp #4 | \comp #4 |  \comp #4  | \bar "||"
        \comp #4  | \comp #4 | \comp #4 |  \comp #4 \textEndMark "x3" | 
    \bar ":|]" 

        \sect "H" "Pregon/Coro (campana)"
    \bar ":|][|:"
        \comp #4  | \comp #4 | \comp #4 |  \comp #4 \textEndMark "x4" | 
    \bar ":|]" 

        \sect "I" "Mona/Coro (campana)"
    \bar ":|][|:"
        \repeat-text "2nd, 3rd time" <<cymc4 timh>> \rs \rs \rs  | \comp #4 | \comp #4 |  \comp #4  | \bar "||"
        \comp #4  | \comp #4 | \comp #4 |  \comp #4 \textEndMark "x3" | 
    \bar ":|]" 

        \sect "J" "Pregon/Coro (campana)"
    \bar ":|][|:"
        \comp #4  | \comp #4 | \comp #4 |  \comp #4 \textEndMark "x4" | 
    \bar ":|]" 

        \sect "J" "Out (campana)"
        \comp #4  | \comp #4 | \comp #4 |  \rs \rs \rs timh4^> | 
        <<cb4 timh>> r8 <<cb8 timh>> r8 <<cb8 timh>> r8 <<cb8 timh>> |
        r8 <<cb8 timh>> r8 <<cb8 timh>> r2 | r1 | r2 cymc2^. |

        \bar "|."
    }
>>
 