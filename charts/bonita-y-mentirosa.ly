\version "2.24.2"
\include "charts/common.ly"

date = #(strftime "%Y-%m-%d" (localtime (current-time)))

\header {
  title = "Bonita Y Mentirosa"
  subsubtitle = "(Salsa 2-3)"
  composer = "perf Louie Ramirez"
  instrument = "Timbales"
  tagline = \markup { "Bonita Y Mentirosa - https://mikea.github.io/timbales/ - " \date }
}

\newTimbalesStaff <<
    \newDrumVoiceOne \drummode { 
        \tempo 4 = 180

        \sect "Intro" "Horns (campana)" 
    \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x3" |
    \bar ":|]"
        \comp #4  \rs \rs \rs timh4^> | cb4 cb8 cb8^> r8 cb8 r8 cb8 | r1 | \bar "||"

        \sect "A" "Voz (cascara)" 
    \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x4" | \bar "||"
    \bar ":|]"

        \sect "B" "Horns (platillo)" 
    \bar ":|][|:"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x4" | \bar "||"
    \bar ":|]"

        cb4 r4 cb4 r8 cb8 | r1 | 

        \sect "C" "Voz/Coro (cascara)" 
    \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \rs \rs r8 \only-last timh8 timl4  | \bar "||"
        \textEndMark "x4"
     \bar ":|]"
        <<cb8^> timh>> <<cb8 timl>> r4 <<cb8^> timh>> <<cb8 timl>> r4 | r1 | 

        \sect "D" "Mona, Pregon/Coro (campana)" 
    \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \textEndMark "open"
    \bar ":|]"

        \sect "E" "Bass Break (campana)" 

    \bar ":|][|:"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \textEndMark "x4"
    \bar ":|]"

        \sect "F" "Mambo (platillo)" 
    \bar ":|][|:"
        \tuplet 3/2 { <<cymc4 timh>> <<cymc4 timh>> <<cymc4 timh>> } <<cymc4 timh>> r4 | \comp #4 |
        \tuplet 3/2 { <<cymc4 timh>> <<cymc4 timh>> <<cymc4 timh>> } <<cymc4 timh>> r4 | \comp #4 | \bar "||"
        r8 <<cymc8 timh>> r4 r4 r8 <<cymc8 timh>> | r4 r8 <<cymc8 timh>> r2 | r8 <<cymc8 timh>> r4 r4 r8 <<cymc8 timh>> | r4 r8 <<cymc8 timh>> r4 timh4^> |
    \bar ":|]"
        cb4 cb4 cb8^> cb8 r4 | r1 |

        \sect "G" "Mona, Solos (campana)" 
    \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \only-last cb4 cb8 cb8^> r8 cb8 r8 cb8 | \bar "||"
        \textEndMark "open"
    \bar ":|]"

        \sect "H" "Mambo 2 (platillo)" 
    \bar ":|][|:"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \textEndMark "x4"
    \bar ":|]"

        \sect "I" "Coro/Pregon (campana)" 
    \bar ":|][|:"
        \only-first timh4^> timh4^> \rs \rs | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \textEndMark "open"
    \bar ":|]"

        \sect "J" "Coda (platillo)" 
    \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x3" |
    \bar ":|]"
        \comp #4  \rs \rs \rs timh4^> | cb4 cb8 cb8^> r8 cb8 r8 cb8 | 

        \bar "|."
    }
>>
 