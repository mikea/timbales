\version "2.24.2"
\include "charts/common.ly"

date = #(strftime "%Y-%m-%d" (localtime (current-time)))

\header {
  title = "Muñeca"
  subsubtitle = "(Salsa)"
  composer = "Eddie Palmieri"
  instrument = "Timbales"
  tagline = \markup { "Muñeca - https://mikea.github.io/timbales/ - " \date }
}

\newTimbalesStaff <<
    \newDrumVoiceOne \drummode { 
        \tempo 4 = 200

        \sect "Intro" "cascara 2-3"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar "[|:-||"
        \textMark "horns" \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar ":|]"
        \textMark "clave shift" timh8 timl8 r4 r4 timh4:16 | \bar "||"

        \sect "A" "cascara 3-2"
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar ":|][|:"

        \sect "A2" "3-2"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||" 
        \bar ":|]" \break
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \textMark "clave shift" cb4 r8 cb8 r2 |

        \sect "B" "cascara 2-3"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar "[|:-||"
        \sect-no-break "Coro/Pregon" "campana 2-3"
        \comp #4 | \comp #4 | \bar "||" \comp #4 | \comp #4 \textEndMark "2x" |
        \bar ":|][|:"

        \sect "C" "sonero"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \bar "||" \textMark "Coro" \comp #4 | \comp #4 |
        \bar "||" \textMark "Pregon" \comp #4 | \comp #4 \textEndMark "2x" |
        \bar ":|]"
        \textMark "Last Coro" \comp #4 | \comp #4 |

        \sect "D" "piano solo (cascara 2-3)"
        \bar "[|:-||"
        \comp #4 | \comp #4 |
        \bar ":|]"
        \comp #4 | \textMark "(Piano)" r8 ssh8 ssh ssh ssh4 r4 |

        cb8 8 4 timh8 8 4  | timl8 8 4 r4 timh4:16 |

        \sect "E" "conga solo (cascara 2-3 on the bell)"
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "open (piano cue)" |
        \bar ":|][|:"

        \sect "Mambo" ""
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "4x" |
        \bar ":|]"
        \comp #4 | r4 r8 timh8 timl4 timh4:16 |

        \sect "F" "Coro/Pregon"
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "open" |
        \bar ":|]"

        \sect "Ending" ""
        \comp #4 | cb4 cb4 r4 cb4 | r2 r4 cb4 | r2 r4 cb8 cb8 |

        \fine
    }
>>
