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

\repeat volta 2 {        
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \rs \rs cymc4. cymc8 \textEndMark "2nd time"| \bar "||" 
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||" \break
        \comp #4 | cymc2 cymc4. cymc8 | \comp #4 | \comp #4 | \bar "||" 
        \comp #4 | cymc2 cymc4. cymc8 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \bar "||"

        \sect "B Voz" "cascara 3-2"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||" 
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||" \break
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||" 
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"

        \textMark \markup { \italic "puerto rico" }
        \comp #4 |
        \alternative {
          \volta 1 { \comp #4 \bar ":|]" }
          \volta 2 { \tuplet 3/2 { timl4 timl2 } \tuplet 3/2 { timl2 timl4 } | \bar "||" }
        }
}
        \clave-shift timl4 r8 timh4.^> timh4:16 |

        \sect-segno "C" "(campanas 2-3)"
        \bar "S-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |

        \sect "D" "Coro/Solo (campanas 2-3)"
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x8" | 
        \bar ":|]"

        \inline-coda

        \sect "E" "Coro/Pregon"
        \bar "[|:"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "open" |
        \bar ":|][|:"

        \sect-no-break "F" "Piano Solo (cascara 2-3)"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "open" |
        \bar ":|]"

        \ds-al-coda 

        \sect-coda "Mona" ""
        \bar "[|:"
        \ghost cymc4 \rs \rs \rs | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \rs r8 \ghost cymc4. \rs \textEndMark "x6" |
        \bar ":|][|:"

        \sect "Coro/Pregon" ""
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "open" | \bar "||"
        \bar ":|][|:"

        \sect "Ending" ""
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x4" |
        \bar ":|]"

        r2 r4 r8 cb8| r8 cb8 r4 r8 cb8 r8 cb8 |

        \bar "|."
    }
>>
