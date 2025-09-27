\version "2.24.2"
\include "charts/common.ly"

date = #(strftime "%Y-%m-%d" (localtime (current-time)))

\header {
  title = "Puerto Rico"
  subsubtitle = "(Salsa)"
  composer = "Eddie Palmieri"
  instrument = "Timbales"
  tagline = \markup { "Puerto Rico - https://mikea.github.io/timbales/ - " \date }
}

\newTimbalesStaff <<
    \newDrumVoiceOne \drummode { 
        \tempo 4 = 220

        \sect "Intro" "Piano (open)"
        r1 | r1 | r1 | r1 | \bar "||"
        \textMark "cascara 3-2" \comp #4 | \comp #4 | \comp #4 | \comp #4 |

        \sect "A" "cascara 3-2"
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \rs \rs cymc4. cymc8 \textEndMark "2nd time"|
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||" \break
        \comp #4 | cymc2 cymc4. cymc8 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \bar "||"

        \sect "B Voz" "cascara 3-2"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||" \break
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \textMark "2nd time" \tuplet 3/2 { timl4 timl2 } \tuplet 3/2 { timl2 timl4 } |
        \bar ":|]"
        \clave-shift timl4 r8 timh4.^> timh4:16 |


        \sect-segno "C" "campana 2-3 (ride 2nd time)"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |

        \sect "D" "Coro/Solo"
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | \comp #4 | \comp #4 
        \codaMark \default
        \bar ":|][|:"

        \sect "E" "Coro/Pregon"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "open" |
        \bar ":|][|:"

        \sect "F" "Piano Solo (cascara 2-3)"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "open" |
        \bar ":|][|:"
        \jump "D.S. al Coda"

        \sect-coda "Mona" ""
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x6" |
        \bar ":|][|:"

        \sect "Coro/Pregon" ""
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar ":|][|:"

        \sect "Ending" ""
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar ":|]"

        r2 r4 r8 cb8| r8 cb8 r4 r8 cb8 r8 cb8 |

        \bar "|."
    }
>>
