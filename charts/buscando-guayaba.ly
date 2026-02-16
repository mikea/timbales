\version "2.24.2"
\include "charts/common.ly"

date = #(strftime "%Y-%m-%d" (localtime (current-time)))

\header {
  title = "Buscando Guayaba"
  subsubtitle = "(Salsa)"
  composer = "Willie Colon & Ruben Blades"
  instrument = "Timbales"
  tagline = \markup { "Buscando Guayaba - https://mikea.github.io/timbales/ - " \date }
}

\newTimbalesStaff <<
    \newDrumVoiceOne \drummode { 
        \tempo 4 = 999

        \sect "Intro" "(cascara 2-3)"
        \bar "[|:-||"
    \repeat volta 2 {
        \comp #4 | \comp #4 | \comp #4 | 
        \alternative {
            \volta 1 { \comp #4 | \bar ":|]" }
            \volta 2 { \rs \rs r8 \only-second timh8 timl4 | }
        }
    }

        \bar "[|:-||"
        \textMark "horns"
    \repeat volta 3 {
        \comp #4 | \comp #4 | 
        \alternative {
            \volta 1,2 { \comp #4 | \comp #4 | \bar ":|]" }
            \volta 3 { | \rs \rs \rs r8 <<timh8 timl>> | r8 <<timh8 timl>> r8 <<timh8 timl>> r2 | \bar "||" }
        }
    }

        \sect "A" "Voz (cascara 2-3)"
        \bar "[|:-||"
    \repeat volta 2 {
        \comp #4 | \comp #4 | 
        \alternative {
            \volta 1 { \comp #4 | \comp #4 | \bar ":|]" }
            \volta 2 { | \rs \rs \rs r8 <<timh8 timl>> | r8 <<timh8 timl>> r8 <<timh8 timl>> r2 | \bar "||" }
        }
    }

        \sect "B" "Voz (cascara 2-3)"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \clave-shift \comp #4 |

        \sect "C" "(campanas 2-3)"
        \bar "[|:-||"
        \only-first <<timh4. timl>> <<timh4. timl>> <<timh4 timl>> | \comp #4 | \comp #4 | \comp #4 \textEndMark "x4" | 
        
        \bar ":|][|:"
        \textMark "Coro/Pregon"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "open" |
        \bar ":|]"

        \bar ".."

    }
>>
