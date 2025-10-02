\version "2.24.2"
\include "charts/common.ly"

date = #(strftime "%Y-%m-%d" (localtime (current-time)))

\header {
  title = "La Tierra De La Belleza"
  subsubtitle = ""
  composer = "Alberto Caicedo"
  instrument = "Timbales"
  tagline = \markup { "La Tierra De La Belleza - https://mikea.github.io/timbales/ - " \date }
}

\newTimbalesStaff <<
    \newDrumVoiceOne \drummode { 
        \tempo 4 = 170

        \sect-segno "Intro" "cumbia"
        \bar "S"
        r4 r8 ssh8 r8 ssh8 cymc4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |

        \sect "Voz" "cumbia"
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar ":|][|:"

        \sect "Voz" "cascara 3-2 "
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar ":|][|:"

        \sect "Coro" "campanas 3-2"
        \textMark "2nd time" cymc4 \rs \rs \rs | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \rs \rs \textMark "2nd time" cymc4 r |
        \bar ":|]"

        \ds

        \sect "Mambo" "campanas 3-2"
        \bar "[|:"
        cymc4 \rs \rs \rs | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \rs \rs \textMark "2nd time" cymc4 r |
        \bar ":|]"

        \sect "Breaks" "cumbia"
        timl4. timl4. timl4 | \rs \rs \rs \rs | timl8 timl4 timl4. timl4 | \rs \rs \rs \rs | \bar "||"
        timl8 timl4 timl4. timl4 | \rs \rs \rs \rs | timl8 timl4 timl4. timl4 | \rs \rs \rs \rs | \bar "||"
        timl4. timl4. timl4 | \rs \rs \rs cymc4 |

        \sect "Coro/Pregon" "campanas 3-2"
        \bar "[|:-||"

        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | 
        \bar ":|][|:"

        \sect "Mambo 2" "campanas 3-2"

        cymc4 \rs \rs \rs | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \rs \rs \rs \textMark "out  4x" cymc4| 
        \bar ":|][|:"

        \sect "Coda" "cumbia"
        timl8 timl4 timl4 timl8 timl4 | \rs \rs \rs \rs
        timl8 timl4 timl4 timl8 timl4 | \rs \rs \rs \rs \bar "||"
        timl8 timl4 timl4 timl8 timl4 | \rs \rs \rs \rs
        timl8 timl4 timl4 timl8 timl4 | \rs \rs \rs \textMark "last" cymc4
        \bar ":|]"
    }
>>
