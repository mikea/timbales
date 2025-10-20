\version "2.24.2"
\include "charts/common.ly"

date = #(strftime "%Y-%m-%d" (localtime (current-time)))

\header {
  title = "Disco Azúcar"
  subsubtitle = "(Salsa, 3-2 Rumba Clave)"
  composer = "Los Van Van"
  instrument = "Timbales"
  tagline = \markup { "Disco Azúcar - https://mikea.github.io/timbales/ - " \date }
}

\newTimbalesStaff <<
    \newDrumVoiceOne \drummode { 
        \tempo 4 = 215

      \partial 2 \textMark "fill" \rs \rs |

      \sect-no-break "Intro" ""
      \bar "[|:-||"
      \textMark "1st" cymc4 \rs \rs \rs | \comp #4 | \comp #4 |  \comp #4 \textEndMark "x4" |       
      \bar ":|][|:"

      \sect "A" "Voz"
      \comp #4 | \comp #4 | \comp #4 |  \comp #4 \textEndMark "x4" |
      \bar ":|][|:"

      \sect "B" "Mona"
      \comp #4 | \comp #4 | \comp #4 |  \comp #4 \textEndMark "x2" |
      \bar ":|][|:"

      \sect "C" "Voz"
      \comp #4 | \comp #4 | \comp #4 |  \comp #4 \textEndMark "x4" |
      \bar ":|][|:"

      \sect "D" "Pregon/Coro"
      \textMark "1st" cymc4 \rs \rs \rs  | \comp #4 | \comp #4 |  \comp #4 \textEndMark "x8" |
      \bar ":|]"

      \sect "E" ""
      \comp #4 | \comp #4 | \comp #4 |  \comp #4 | \bar "||"
      \comp #4 | \rs \rs \rs r8 cb8 | \clave-break r8 timl8 timl8 timh8^> r4 cymc4 |  

      \sect "F" "Pregon/Coro"
      \bar "[|:-||"
      \comp #4 | \comp #4 | \comp #4 |  \comp #4 \textEndMark "x11" |       
      \bar ":|][|:"

      \sect "G" "Pregon/Trumpet"
      \comp #4 | \comp #4 | \comp #4 |  \comp #4 \textEndMark "x20" |       
      \bar ":|][|:"

      \sect "H" "Mambo"
      \comp #4 | \comp #4 | \comp #4 |  \comp #4 \textEndMark "x8" |       
      \bar ":|][|:"

      \sect "I" "Solos/Coro"
      \comp #4 | \comp #4 | \comp #4 |  \comp #4 \textEndMark "open" |       
      \bar ":|]"
    }
>>
