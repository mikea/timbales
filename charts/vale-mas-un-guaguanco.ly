\version "2.24.2"
\include "charts/common.ly"

date = #(strftime "%Y-%m-%d" (localtime (current-time)))

\header {
  title = "Vale Mas Un Guaguanco"
  subsubtitle = "(Salsa)"
  composer = "Ray Barretto"
  instrument = "Timbales"
  tagline = \markup { "Vale Mas Un Guaguanco - https://mikea.github.io/timbales/ - " \date }
}

\newTimbalesStaff <<
    \newDrumVoiceOne \drummode { 
        \tempo 4 = 184

        \sectionLabel "(cascara 3-2)"
    \repeat volta 4 {    
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | 
        \alternative {
            \volta 1,2,3 { \comp #4 |  \bar ":|]" }
            \volta 4 { 
                \rs \rs \tuplet 3/2 {r8 timl timl} \tuplet 3/2 {timl timl timl}
            }
        }
    }
        timl4 r8 <<timl timh>> r <<timl timh>> r <<timl timh>> | r1 |

        \sect "A" "Voz (cascara 3-2)"
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \bar ":|]"

        \comp #4 | \comp #4 |  \bar "||"

        \sect "B" "Voz (cascara 3-2)"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \rs r8 cymc8~ cymc4 \rs | \comp #4 |
        \rs r8 cymc8~ cymc4 \rs | \comp #4 | \bar "||"
        \rs r8 <<timl timh>> r <<timl timh>> r <<timl timh>> | \comp #4 |

        \sect "C" "Voz (cascara 3-2)"
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \bar ":|]"
        \comp #4 | \comp #4 | \clave-shift \comp #4 |

        \sect "D" "Voz (cascara 2-3)"
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x3" | \bar "||"
        \bar ":|]"
        \rs \rs \rs r8 <<timl timh>> | r4 r8 <<timl timh>> r <<timl timh>> r <<timl timh>> | \clave-shift r1 |


        \sect "E" "Voz (cascara 3-2)"
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x3" | \bar "||"
        \bar ":|]"
        \comp #4 | \comp #4 | \clave-shift <<timl4 timh>> r8 timh4.^> timh4:16 |  \bar "||"

        \sect "F" "(campana 2-3)"

         \comp #4 | \comp #4 | <<cb4 timl>> <<cb timl>> r <<cb timl>> |
         r4 r8 cymc4. timh4:16~ |


        \bar "[|:-||"
        \sectionLabel "Coro/Pregon"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x6" | \bar "||"
        \bar ":|]"

        \break

        <<timl4 timh>> r r r8 <<timl timh>> |
        r2 r4 r8 <<timl timh>> |
        r2 r4 r8 <<timl timh>> |
        r8 <<timl timh>> r8 <<timl timh>> <<timl4 timh>> r4 | \bar "||"

        \sect-no-break "Mambo" "(clave)"
        | r1 | r1 | r1 | r2 r8 timh timl4 | \bar "||"
        \sectionLabel "(ride 2-3)"
        cymc4 \rs \rs \rs | \comp #4 | \comp #4 | \comp #4 | \bar "||"

        \sect "G" "(ride 2-3)"
    \autoLineBreaksOff
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \rs \rs \rs cymc4 | \bar "||"
        \rs \rs \rs cymc4 | \rs \rs \rs cymc4 | \rs \rs cymc2 | cymc4. cymc4. cymc4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \bar ":|]"
        cymc4 cymc8 cymc8 r8 cymc8 r8 cymc8 | r4 r8 cymc4. cymc4 | \bar "||"
    \autoLineBreaksOn

        \sect "H" "(campana 2-3)"

         \comp #4 | \comp #4 | <<cb4 timl>> <<cb timl>> r <<cb timl>> |
         r4 r8 cymc4. timh4:16~ |

        \bar "[|:-||"
        \sectionLabel "Coro/Pregon"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x5" | \bar "||"

        \bar ":|][|:"

        \sectionLabel "Mona"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x5" | \bar "||"

        \bar ":|][|:"

        \sect "Ending" "(cascara 2-3)"

        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x3" | \bar "||"
        \bar ":|]"
        \comp #4 | timl4 r8 <<timl timh>> r <<timl timh>> r <<timl timh>>

        \bar ".."
    }
>>
