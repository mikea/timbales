\version "2.24.2"
\include "charts/common.ly"

date = #(strftime "%Y-%m-%d" (localtime (current-time)))

\header {
  title = "El Dominó"
  subsubtitle = "(Salsa 2-3)"
  composer = "Christian Alicea"
  instrument = "Timbales"
  tagline = \markup { "El Dominó - https://mikea.github.io/timbales/ - " \date }
}

\newTimbalesStaff <<
    \newDrumVoiceOne \drummode { 
        \tempo 4 = 191

        \sect "Intro" "montuno"
        r1 | r1 | r1 | r1 | 
        r1 | r1 | r1 | r1 \bar "||"

        \ssect "cascara 2-3"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | \comp #4 | \abanico-short |

        \sect "Voz" "cascara 2-3"
        \abanico-rs | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||" \break
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | \comp #4 | \rs \rs \rs \rs \textEndMark "ta-cum" | \bar "||" \break
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||" \break
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | r1 | r1 | \break
        r1 | r1 | r2 \tuplet 3/2 { timl8 timh timl timh timl timh } | timl4 r8 timl4.^> cymc4 |

        \sect "Coro/Prego" "campanas 2-3"
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x4" |
        \bar ":|][|:"

        \sect "Mambo" "1 campanas; 2,3 time ride"
        \bar ":|][|:"
        \textMark "1st" cymc4 \rs \rs \rs | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x3" |
        \bar ":|][|:"

        \sect "Pregon/Coro 2" "campanas 2-3"
        \bar ":|][|:"
        \comp #4 | \comp #4 \bar "||" \comp #4 | \comp #4  | \bar "||"
        \comp #4 | \comp #4 \bar "||" \comp #4 | \comp #4  | \bar "||"
        \bar ":|][|:"

        \sect "Trombone Solo" "ride"
        \bar ":|][|:"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar ":|]"

        \sect "Coda" ""
        r1 | r1 | r2 \tuplet 3/2 { timl8 timh timl timh timl timh } | timl4 r8 timl4.^> cymc4 |

        \fine
    }
>>
