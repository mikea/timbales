\version "2.24.2"
\include "charts/common.ly"

date = #(strftime "%Y-%m-%d" (localtime (current-time)))

\header {
  title = "Buscando Guayaba"
  subsubtitle = "(Salsa)"
  composer = "Willie Colon & Ruben Blades"
  instrument = "Timbales"
  tagline = \markup { "Buscando Guayaba - https://mikea.github.io/timbales/ - " \date }
}

\newTimbalesStaff <<
    \newDrumVoiceOne \drummode { 
        \tempo 4 = 148

        \sect "Intro" "(cascara 2-3)"
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \rs \rs r8 \only-second timh8 timl4 |

        \bar ":|][|:"

        \textMark "horns"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar ":|]"
        \break

        \comp #4 | \comp #4 |
        | \rs \rs \rs r8 <<timh8 timl>> | r8 <<timh8 timl>> r8 <<timh8 timl>> r4 timh4:16 | \bar "||"
        
        \sect "A" "Voz (cascara 2-3)"
        \bar "[|:-||"
    \repeat volta 2 {
        \comp #4 | \comp #4 | 
        \alternative {
            \volta 1 { \comp #4 | \comp #4 | \bar ":|]" }
            \volta 2 { | \rs \rs \rs r8 \ghost timl8 | r8 \ghost cymc8 r8 \ghost cymc8 \rs \rs | \bar "||" }
        }
    }

        \sect "B" "Voz (cascara 2-3)"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \break
        \comp #4 | \comp #4 | \comp #4 | <<timl4. timh>> <<timl4. timh>> <<timl4 timh>> | \bar "||"
        r8 <<timl4. timh>> <<timl4 timh>> <<timl4  timh>> | <<timl4. timh>> <<timl4. timh>> <<timl8 timh>> <<timl8 timh>> | \clave-shift r1 |

        \sect "C" "Coro/Trombone (campanas 3-2)"
        \bar "[|:-||"
        \only-first <<cb4.\startTextSpan timl>>  <<cb4. timl>> <<cb4 timl>> | r4 \stopTextSpan \rs \rs \rs | \comp #4 | \comp #4 \textEndMark "x4" | 
        
        \bar ":|][|:"
        \textMark "Coro/Pregon"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "open" |

        \bar ":|][|:"

        \sect "D" "Piano Solo (cascara 3-2)"

        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "open" |
        \bar ":|]"
        <<timl4. timh>> <<timl4. timh>> <<timl4 timh>> | r1 | \clave-shift r2 r4 timh4:16 | \bar "||"

        \sect "Mambo" "(campana 2-3)"
        \bar "[|:"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "open" |
        \bar ":|]"

        \comp #4 | <<cb4. timl>>  <<cb4. timl>> <<cb4 timl>> | r1 | r2 r4 cymc4 | \bar "||"
        \comp #4 | \comp #4 | \clave-shift \comp #4 |

        \sect "E" "Coros/Mona/Coros (campana 3-2)"
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "open" |
        \bar ":|]"
        
        \comp #4 | <<cb4. timl>>  <<cb4. timl>> <<cb4 timl>> | r2 r4 timh4^> |

        \sect "Ending" "(cascara 3-2)"

        \comp #4 | \comp #4 | \comp #4 | \rs r8 timh8 timl4 <<timl4 timh>>

        \bar ".."

    }
>>
