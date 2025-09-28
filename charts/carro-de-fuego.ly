\version "2.24.2"
\include "charts/common.ly"

date = #(strftime "%Y-%m-%d" (localtime (current-time)))

\header {
  title = "Carro de Fuego"
  subsubtitle = "(Salsa)"
  composer = "Guayacán Orquesta"
  instrument = "Timbales"
  tagline = \markup { "Carro de Fuego - https://mikea.github.io/timbales/ - " \date }
}

\newTimbalesStaff <<
    \newDrumVoiceOne \drummode { 
        \tempo 4 = 178

        \sect "Intro" "(cascara 2-3)"
        \textMark "perc. only" \comp #4 | \comp #4 |
        \bar "[|:-||"
        \textMark "bass, horns"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \bar ":|][|:"

        \sect "A" "Voz (cascara 2-3)"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x3" | \bar "||"
        \bar ":|]"
        \comp #4 | \comp #4 | r8 cb8 r8 cb8 r8 cb8 r8 cb8 | r2 cb8 cb8 cb8 cb8 | \bar "||"

        \sect "B" "Voz (cascara 2-3)"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \clave-shift \comp #4 | \bar "||"

        \sect "C" "Voz (cascara 3-2)"
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \textMark "fill out" \comp #4 | \bar "||"
        \bar ":|][|:"

        \sect "D" "Voz (campanas 3-2)"
        \repeat volta 4 {
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | 
          \alternative {
            \volta 1, 2, 3 { \comp #4 | \comp #4 |  \bar ":|]" }
            \volta 4 { \clave-shift \rs r8 cymc8 r2  }
          }
        }
        
        \sect "E" "Piano+Guiro"
        r1 | r1 |r1 | r8 cb8 cb8 cb8 r8 cb8 r8 cb8 \bar "||"
        cb4 r4 r2 | r1 |r1 | r4 r8 cb8 r8 cb8 r8 cb8 \bar "||"

        \sect "F" "Mambo (campanas 2-3)"
        \bar "[|:-||"
        \textMark "1st" cb4 \rs \rs \rs | \comp #4 | \comp #4 | \comp #4 | \bar "||"

        \sect-no-break "G" "Coro/Pregon (campanas 2-3)"
        \bar ":|][|:"
        \comp #4 | \comp #4 | \comp #4 | \textMark "fill out" \comp #4 \textEndMark "x8" | \bar "||"
        \bar ":|]"

        \sect "H" "Mona (campanas 2-3)"
        cymc4 \rs \rs \rs | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \rs \rs r8 timh8 timl4 | \drag timl4 r4 r2 | cb4 cb8 cb8 r8 cb8 r8 cb8 | \bar "||"

        \sect "I" "Mambo 2 (campanas 2-3)"
        cymc4 \rs \rs \rs | \comp #4 | \comp #4 | \rs \rs r8 cymc8 r8 cymc8~ | \bar "||"
        cymc4 \rs \rs \rs | \comp #4 | \comp #4 | \rs r8 cymc8 r8 cymc8 r8 cymc8~ | \bar "||"
        cymc4 \rs \rs \rs | \comp #4 | \comp #4 | \comp #4 | \bar "||"

        \sect "J" "Perc. Breaks"
        cb4 cb4 r8 cb8 r8 cb8 | r1 | r1 | r1 | \bar "||"
        cb4 cb4 r8 cb8 r8 cb8 | r4 r8 cb8 cb4 r4 | r2 r4 timh4^> | r8 cb8 cb8 cb8 cb8 cb8 cb8 cb8  |

        \sect "K" "Mambo 3 (campanas 2-3)"
        cymc4 \rs \rs \rs | \comp #4 | \comp #4 | \rs \rs r8 cymc8 r8 cymc8~ | \bar "||"
        cymc4 \rs \rs \rs | \comp #4 | \comp #4 | \rs r8 cymc8 r8 cymc8 r8 cymc8~ | \bar "||"
        cymc4 \rs \rs \rs | \comp #4 | \comp #4 | \rs \rs \rs timh4:16 | \bar "||"

        \sect "L" "Coro/Pregon (campanas 2-3)"
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x3" | \bar "||"
        \bar ":|]"

        \sect "Coda" "(campanas 2-3)"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \drag timl4 r4 r8 cb8 r8 cb8 |r1 |

        \bar "|."
    }
>>
