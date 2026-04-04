\version "2.24.2"
\include "charts/common.ly"

date = #(strftime "%Y-%m-%d" (localtime (current-time)))

\header {
  title = "Lamento Borincano"
  subsubtitle = "(Salsa)"
  composer = "Rafael Hernandez"
  instrument = "Timbales"
  tagline = \markup { "Lamento Borincano - https://mikea.github.io/timbales/ - " \date }
}

\newTimbalesStaff <<
    \newDrumVoiceOne \drummode { 
        \tempo 4 = 176

        \sect "Intro" "(clave 2-3)" 
        r1 | r1 | r1 | r2 r4 timh4:16 | \bar "||"
        \comp #4 | \comp #4 | \rs \rs \rs r8 cymc8 | \rs \rs \rs cymc4 | \bar "||"
        \comp #4 | \rs \rs \rs cymc8 cymc8^> | \comp #4 | \rs \rs \rs cymc8 cymc8^>  | \bar "||"
        \comp #4 | \rs \rs \rs cymc8 cymc8^> | \clave-shift r4 r8 cymc8 r2 | 

        \sect "A" "Voz (cascara 3-2)" 
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4  \textEndMark "x4" | \bar "||"

        \bar ":|][|:"

        \sect-no-break "B" "Voz (cascara 3-2)" 
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x2" | \bar "||"
        \bar ":|][|:"

        \sect "C" "Voz (cascara 3-2)" 
    \repeat volta 2 {
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \bar "||"

        \sect-no-break "D" "Voz (cascara 3-2)" 
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \alternative {
            \volta 1 { \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar ":|]"  } 
            \volta 2 { \comp #4 | \comp #4 | \clave-shift \comp #4 | } 
        }
    }

        \sect "E" "Trbs (campana 2-3)" 
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \bar ":|][|:"

        \sect-no-break "F" "Coro/Pregon (campana 2-3)" 
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "open" | \bar "||"
        \bar ":|]"
        \comp #4 | \comp #4 | 

        \sect "G" "Piano (cascara 2-3)" 
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "open" | \bar "||"
        \bar ":|]" 
        <<cb8 timl8>> <<cb8 timl8>> r4 r4 <<cb8 timl8>> <<cb8 timl8>> | r4 r8 cymc8 r2 |

        \sect "H" "Horns (cascara 2-3)" 
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x8" | \bar "||"
        \bar ":|]" 
        \comp #4 | \comp #4 | <<cb8 timl8>> <<cb8 timl8>> r4 r4 <<cb8 timl8>> <<cb8 timl8>> | r4 r8 cymc8 r2 |

        \sect "J" "Coro/Pregon (campana 2-3)" 
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "open" | \bar "||"

        \bar ":|][|:"

        \sect-no-break "K" "Horns (campana 2-3)" 

        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "open" | \bar "||"

        \bar ":|][|:"

        \sect-no-break "L" "Coro/Pregon (campana 2-3)" 
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "open" | \bar "||"
        \bar ":|]" 

        \sect "M" "Coro/Pregon (cascara 2-3)" 
        \comp #4 | \comp #4 | \rs \rs \rs r8 cymc8 | \rs \rs \rs cymc4 | \bar "||"
        \comp #4 | \rs \rs \rs cymc8 cymc8^> | \comp #4 | \rs \rs \rs cymc8 cymc8^>  | \bar "||"
        \comp #4 | \rs \rs \rs cymc8 cymc8^>  | \rs r8 cymc8~ cymc2 |
        \bar "|."
    }
>>
