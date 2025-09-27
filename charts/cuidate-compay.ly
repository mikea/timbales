\version "2.24.2"
\include "charts/common.ly"

date = #(strftime "%Y-%m-%d" (localtime (current-time)))

\header {
  title = "Cuidate Compay"
  subsubtitle = "(Cha-Cha-Cha)"
  composer = "Eddie Palmieri"
  instrument = "Timbales"
  tagline = \markup { "Cuidate Compay - https://mikea.github.io/timbales/ - " \date }
}

\newTimbalesStaff <<
    \newDrumVoiceOne \drummode { 
        \tempo 4 = 112

        cb4 r4 r2 | \bar "||"
        \big-segno
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | r8 cb8 cb cb cb4 r4 | \tuplet 3/2 { toml4 toml4  toml4 } \tuplet 3/2 { toml4 toml4  toml4 } 
        | \tuplet 3/2 { toml4 toml4  toml4 } timh8^> timh8^> \fine timh4:16 | \bar "||"

        \sect "A" ""
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | timh16 timh r timh16 8 8 r timh^> timh4^> |
        \bar ":|]"

        \sect "B" ""
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | \comp #4 | \abanico-long | \bar "||"

        \sect "C" ""
        \comp #4 | \comp #4 | \comp #4 | timh16 timh r timh16 8 8 r timh^> timh4^> |
        \comp #4 | \comp #4 | cb4 cb4 \rs \rs | r8 cb cb cb r4 timh4:16 | \break

        \bar "[|:-||"
        \sectionLabel "Coro"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        
        \bar ":|][|:"

        \sect "D" "flute solo"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar ":|][|:"
        \sectionLabel "Coro"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar ":|][|:"

        \sect "E" "flute solo"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar ":|][|:"
        \sectionLabel "Coro"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar ":|][|:"

        \sect "F" "piano solo (cascareo)"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "open" |
        \bar ":|]"
        \comp #4 | \comp #4 | \comp #4 | r2 r4 timl16 16 16 16 | \bar "||" \break
        timl4 \flam timh4^> \flam timh4^> r4 | 
        r8 timl 8 8 \flam timh4^> timl8 \flam timh4^> |
        r8 timl 8 8 \flam timh4^> timl8 \flam timh4^> |
        r8 \flam timh8^> \flam timh4^> timh16^> timh^> r timh16^> 8^> 8^> |

        \bar "[|:-||"

        \sect "G" ""
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar ":|][|:"

        \sect "H" ""
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar ":|][|:"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar ":|][|:" \break
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar ":|][|:"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar ":|][|:"

        \sect "I" "Coro"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar ":|]"
        \jump "D.S. al Fine"
    }
>>
