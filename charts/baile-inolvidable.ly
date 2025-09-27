\version "2.24.2"
\include "charts/common.ly"

date = #(strftime "%Y-%m-%d" (localtime (current-time)))

\header {
  title = "Baile Inolvidable"
  subsubtitle = "(Salsa 2-3)"
  composer = "Bad Bunny"
  instrument = "Timbales"
  tagline = \markup { "Baile Inolvidable - https://mikea.github.io/timbales/ - " \date }
}

\newTimbalesStaff <<
    \newDrumVoiceOne \drummode { 
        \tempo 4 = 178

        timl4 timh8 timl8 r8 timh8 r8 timl8 | r8 timh8 timh4 \tuplet 3/2 {timh8 timh8 timh8} \tuplet 3/2 {timl8 timl8 timl8} | \bar "||"
        
        \sect-no-break "Intro" "campanas"
        cymc4 \rs \rs \rs | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \rs \rs r8 timh8 timl4 | \bar "||"\break

        cymc4 \rs \rs \rs | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
       
        \ssect-no-break "cascara"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
       
        \sect "A" "Voz (cascara)" 
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x4" | \bar "||"
        \bar ":|]"

        \sect "B" "Mona (cascara)" 
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \rs \rs r8 timh8 timh8 timl8 | \bar "||"

        \sect "C" "Coro/Trumpet (companas)" 
        \bar "[|:-||"
        cymc4 \rs \rs \rs | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x3" | \bar "||"
        \bar ":|][|:"

        \sect "D" "Pregono/Coro (companas)" 
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \textMark "fill out" \comp #4 \textEndMark "x3" | \bar "||"
        \bar ":|][|:"

        \sect "E" "Mambo (companas)" 
        cymc8^> cymc8 \rs \rs \rs \comp #4 | \comp #4 | \comp #4 \textEndMark "x3" | \bar "||"
        \bar ":|]"

        cb4. cb8 r4 r8 cb8 | r4 cb4. cb4. |
        cb8 cymc4. \rs \rs | \comp #4 | \bar "||" \break
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | cb4. cb8 cb4 r4 | \bar "||"

        \sect "F" "Piano Solo (cascara)" 
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \bar ":|]" \break

        r1 | r1 | r1 | r1 | \bar "||"
        r1 | r1 | r1 |  <<timl8 timh8>> <<timl8 timh8>> <<timl8 timh8>> <<timl8 timh8>> <<timl8 timh8>> <<timl8 timh8>> <<timl8 timh8>> <<timl8 timh8>>| \bar "||"

        \sect "G" "Coro/Pregon (campanas)" 
        \bar "[|:-||"
        \textMark "1st" cymc4 \rs \rs \rs | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x4" | \bar "||"
        \bar ":|][|:"

        \sect "H" "Mona (cascara)" 
        cymc4 \rs \rs \rs | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x3" | \bar "||"
        \bar ":|]"\break

        r1 | r1 | r1 | r1 | \bar "||"
        r1 | r1 | r1 | r1 |

        \bar "|."
    }
>>
