\version "2.24.2"
\include "charts/common.ly"

date = #(strftime "%Y-%m-%d" (localtime (current-time)))

\header {
  title = "Bilongo"
  subsubtitle = "(Salsa)"
  composer = "perf Tito Rodriguez"
  instrument = "Timbales"
  tagline = \markup { "Bilongo - https://mikea.github.io/timbales/ - " \date }
}

\newTimbalesStaff <<
    \newDrumVoiceOne \drummode { 
        \tempo 4 = 194

        \sect "Intro" "(cascara 3-2)"
    \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4  | \bar "||"
    \bar ":|]"
    
        \comp #4 | \comp #4 | \clave-shift \comp #4 |

        \sect "A" "Voz (cascara 2-3)"

    \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4  \textMark "x4" | \bar "||"
    \bar ":|]"

        \comp #4 | \comp #4 | \comp #4 | timl4 r8 cb8 r8 cb8 r8 cb8 | \bar "||"  \clave-shift r1 |

        \sect "B" "Voz (cascara 3-2)"

        \drag timh4 r8 <<cb8 timl>> r4 <<cb4 timl>> |  \comp #4 | \comp #4 | \comp #4 |  \bar "||"
         \comp #4 | \comp #4 | \clave-shift timh4^> r8 <<timl8 timh>> r2 |

        \sect "C" "Voz (cascara 2-3)"

    \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4  \textMark "x4" | \bar "||"
    \bar ":|]"

        \comp #4 | \comp #4 | \comp #4 | <<cb8 timh>> <<cb8 timl>> r8 <<cb8 timh>> <<cb8 timl>> r8 <<cb8 timh>> <<cb8 timl>> | \bar "||"
        \clave-shift r1 |

        \sect "D" "Voz (cascara 3-2)"
        \drag timh4 r8 <<cb8 timl>> r4 <<cb4 timl>> | \comp #4 | \comp #4 | \comp #4 |  \bar "||"
         \comp #4 | \comp #4 | \clave-shift \comp #4 |

        \sect "E" "Coro/Pregon (campana 2-3)"
    \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4  \textEndMark "x7" | \bar "||"
    \bar ":|]"

        \sect "F" "Mambo (campana 2-3)"

    \bar ":|][|:"
        \comp #4 | \comp #4 | \comp #4 | \comp #4  | \bar "||"
    \bar ":|]"

        \sect "G" "Mambo (campana 2-3)"

    \bar ":|][|:"
        \comp #4 | \comp #4 | \comp #4 | \comp #4  | \bar "||"
    \bar ":|]"

        cb4 r8 cb8 r8 cb8 r8 cb8 | r4 r8 cb8 r2 |

        \sect "E" "Coro/Pregon II (campana 2-3)"
    \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4  \textEndMark "x7" | \bar "||"
    \bar ":|]"

        \sect "H" "Coda (campana 2-3)"

        \comp #4 | \comp #4 | \comp #4 | \comp #4  | \bar "||"
        \comp #4 | \comp #4 |  <<cb4 timl>> r4 <<cb4 timh>> r8 <<cb8 timl>> | r1 \fermata |
        <<cb2 \fermata  timl>> <<cb2 \fermata timl>>  | \textMark "fill" <<cb1 \fermata timl>>  |

        \bar "|."
    }
>>
 