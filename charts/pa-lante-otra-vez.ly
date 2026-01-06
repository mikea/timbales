\version "2.24.2"
\include "charts/common.ly"

date = #(strftime "%Y-%m-%d" (localtime (current-time)))

\header {
  title = "Pa'Lante Otra Vez"
  subsubtitle = "(Salsa)"
  composer = "Tommy Olivencia"
  instrument = "Timbales"
  tagline = \markup { "Pa'Lante Otra Vez - https://mikea.github.io/timbales/ - " \date }
}

\newTimbalesStaff <<
    \newDrumVoiceOne \drummode { 
        \tempo 4 = 201

        \sectionLabel "(cascara 2-3)"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \rs \rs \rs timh4^> | r8 <<cymc8 timh8>> r8 <<cymc8 timh8>> r8 <<cymc8 timh8>> r8 <<cymc8 timh8>> | \bar "||" 
        \break
        \sectionLabel "(campanas 2-3)"
        <<cymc4 timh>> \rs \rs \rs | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | r8 <<cymc8 timh8>> r8 <<cymc8 timh8>> r8 <<cymc8 timh8>> r8 <<cymc8 timh8>> | \bar "||"
        \break
        <<cymc4 timh>> <<cymc8 timh>> <<cymc8 timh>> r8 <<cymc8 timh>> r8 <<cymc8 timh>> | 
        r8 <<cymc8 timh>> r8 <<cymc8 timh>> r8 <<cymc8 timh>> r8 <<cymc8~ timh>> | 
        \clave-shift cymc2 r2 | 

        \sect "A" "Voz (cascara 3-2)"
        \bar "[|:"
        \rs r8 <<cymc8 timh>> \rs \rs | \comp #4 | r8 timl8 r8 <<cymc8 timh>> \rs \rs  | \comp #4 | \bar "||"
        r8 timl8 r8 <<cymc8 timh>> \rs \rs  | \comp #4 | r8 timh^> r8 timh^> r8 timh^> r8 timh^> | timh4^> r4 \rs \rs | \bar "||"
        \bar ":|][|:"

        \sect "B" "Voz (cascara 3-2)"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \bar ":|]"
        \rs r8 <<cymc8 timh>> \rs \rs  | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 |

        \sect "C" "Voz (cascara 3-2)"
        \rs r8 <<cymc8 timh>> \rs \rs | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x3" | \bar "||"
        \bar ":|]"
        \rs \rs \rs r8 timh8^> |
        timh4^> r4 r4 timh4:16~ |

        \sect "D" "Voz (cascara 3-2)"

    \repeat volta 2 {    
        \bar "[|:-||"
        timh4^> r8 <<cymc8 timh>> \rs \rs | \comp #4 | r8 timl8 r8 <<cymc8 timh>> \rs \rs  | \comp #4 | \bar "||"
        r8 timl8 r8 <<cymc8 timh>> \rs \rs  | \comp #4 |
        \alternative {
            \volta 1 { r8 timh^> r8 timh^> r8 timh^> r8 timh^> | timh4^> r4 \rs \rs | \bar ":|]" }
            \volta 2 { \clave-shift \drag timh4^> r8 cymc4. cymc4| \bar "||" }
        }
    }
        \sectionLabel "(campana 2-3)"
        \comp #4  | \rs \rs \rs \drag timh4^> | 
        r8 cymc8 r8 cymc8 cymc2 | \drag timh4.^> timh4.^> timh4:16 | \bar "||"

        \sect "E" "Pregon/Coro (campana 2-3)"
    \repeat volta 4 {    
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | 
        \alternative {
            \volta 1,2,3 { \comp #4 | \bar ":|]" }
            \volta 4 { \rs \rs \rs timh4:16~ }
        }
    }

        \sect "F" "Mambo (ride 2-3)"
    \repeat volta 2 {    
        \bar "[|:-||"
        cymc4 \rs \rs \rs | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | 
        \alternative {
            \volta 1 { \rs \rs \rs timh4:16  | \bar ":|]" }
            \volta 2 { \rs \rs \rs \drag timh4^> }
        }
    }

        \sect "G" "Pregon/Coro (campana 2-3)"
    \repeat volta 4 {    
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | 
        \alternative {
            \volta 1,2,3 { \comp #4 | \comp #4 | \bar ":|]" }
            \volta 4 { 
                \rs \rs \tuplet 3/2 {timh8 timh timh} \tuplet 3/2 {timh8 timh timh} | 
                timh8 cymc8 r8 cymc8~ cymc2 
            }
        }
    }

        \sect "H" "Mambo 2 (ride 2-3)"
        \bar "[|:-||"
        cymc4 \rs \rs \rs | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \bar ":|]" 

        \bar ":|][|:"
        cymc4 \rs \rs \rs  | \comp #4 | 
        \rs \rs \tuplet 3/2 {timh8 timh timh} \tuplet 3/2 {timh8 timh timh} | 
        timh8 cymc8 r8 cymc8~ cymc2 |
        \bar ":|]" 

        cymc4 r4 r4 r8 cymc8 | r4. cymc4. timh4:16 | \bar "||"
        \sectionLabel "campana 2-3"
        \comp #4 | \rs \rs \rs \drag timh4^> | 
        r8 cymc8 r8 cymc8 cymc4 timh4:16 | timh4.^> cymc4. r4 | 

        \sect "I" "Pregon/Coro (campana 2-3)"
        \bar "[|:-||"
        \textMark "in" cymc4 \rs \rs \rs | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"

        \bar ":|][|:"

        \sect "J" "Solos/Coro (ride 2-3)"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "open" | \bar "||"

        \bar ":|][|:"

        \sect "K" "Pregon/Coro (campana 2-3)"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x2" | \bar "||"
        \bar ":|]"

        \sect "L" "todo"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | 

        \bar ".."
    }
>>
