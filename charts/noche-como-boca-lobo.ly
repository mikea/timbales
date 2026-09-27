\version "2.24.2"
\include "charts/common.ly"

date = #(strftime "%Y-%m-%d" (localtime (current-time)))

\header {
  title = "Noche Coma Boca Lobo"
  subsubtitle = "(Salsa)"
  composer = "Sonora Poncena"
  instrument = "Timbales"
  tagline = \markup { "Noche Coma Boca Lobo - https://mikea.github.io/timbales/ - " \date }
}

\newTimbalesStaff <<
    \newDrumVoiceOne \drummode { 
        \tempo 4 = 185

        r4 r8 \textMark "tutti" timh8 r8 timl8 r8 timh8 | timl4 \textMark "piano" r4 r2 | r1 | \bar "||"
        \sectionLabel "(cascara 2-3 ?)"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        r8 cymc8 \rs \rs \rs| r8 cymc8 \rs \rs \rs | r8 cymc8 \rs \rs \rs | r8 cymc8 \rs \rs \rs | \bar "||"
        \break
        \rs \rs \rs r8 cymc8~ | cymc4 r8 cymc8~ cymc4 r8 cymc8 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \clave-break r8 cymc8 r8 cymc8~ cymc2 |
        
        
        \sect "A" "Voz (cascara 2-3)" 
        \bar "[|:-||"
    \repeat volta 4 {
        \comp #4 | \comp #4 | \comp #4 | 
        \alternative {
            \volta 1 {r8 timl8 timl8 <<cymc8~ timh>> cymc2 | \bar ":|]" }
            \volta 2 {\rs cymc8 <<cymc8~>> cymc2 | \bar ":|]" }
            \volta 3,4 { \comp#4 | \bar ":|]" }
        }
    }
        
        \sect-no-break "B" "Voz (cascara 2-3)" 
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"

        \sect "C" "(cascara 2-3)" 
    \bar "[|:-||"
    \repeat volta 4 {
        \comp #4 | \comp #4 | \comp #4 | 
        \alternative {
            \volta 1 {r8 timl8 timl8 <<cymc8~ timh>> cymc2 | \bar ":|]" }
            \volta 2 {\rs cymc8 <<cymc8~>> cymc2 | \bar ":|]" }
            \volta 3,4 { \comp#4 | \bar ":|]" }
        }
    }
        \sect-no-break "D" "Voz (cascara 2-3)" 
    \bar ":|][|:"
        \comp #4 | \comp #4 | \comp #4 | \rs \rs \rs \only-last timh4:16 | \bar "||"
    \bar ":|]"

        \sect "E" "Horns (campana 2-3)"
        \comp #4 | \comp #4 | \rs \rs \rs r8 cb8 | cb4 cb4 r8 cb8 r8 cb8 | \bar "||"
    \bar "[|:-||"
        \sectionLabel "Pregon/Coro (campana 2-3)"
        \only-first cb4 cb4 \rs \rs | \comp #4 | \comp #4 | \comp #4 \textEndMark "piano cue" | \bar "||"
    \bar ":|]"
        r4 timl r4 timl | r8 timl r8 timl r2 |
        \break
         <<cb4 timh>> <<cb4 timh>> <<cb4 timh>> <<cb4 timh>> | <<cb4 timl>> <<cb4 timl>> <<cb4 timl>> <<cb4 timl>>| \bar "||"

        \sect-no-break "Perc Break" "(mozambique)"
    \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x4" | \bar "||"
    \bar ":|]"
        \clave-shift
        <<cb4 timl>> <<cb4 timl>> <<cb4 timl>> r4 |

        \sect "Mambo" "(campana 3-2)"
    \bar "[|:-||"
        <<cymc4 timh>> \rs \rs \rs | \comp #4 | \comp #4 | \comp #4 \textEndMark "x4" | \bar "||"
    \bar ":|]"
        <<cb4 timh>> r8 <<cb8 timl>> r4 <<cb4 timh>> | r8 <<cb8 timl>> r4 <<cb4 timl>> <<cb8 timl>> <<cb8 timh>> | \clave-shift r1 |

        \sect "F" "Coro (campana 2-3)"
    \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "open" | \bar "||"
    \bar ":|][|:"

        \sect-no-break "Soneo" "(campana 2-3)"
    \bar ":|][|:"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \rs \rs <<cb4 timl>> <<cb4 timl>> | r8 <<cb8 timh>> <<cb4^> timh>> \rs \rs | \comp #4 | \bar "||"
    \bar ":|]"

        \sect "Coro 2" "(campana 2-3)"
    \bar ":|][|:"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "open" | \bar "||"
    \bar ":|]"
        \textMark "last Coro"
        \comp #4 | \comp #4 | <<cb4 timl>> <<cb4 timl>> <<cb4 timh>> <<cb4 timh>> | \textMark "piano" r1 | \bar "||" \clave-break r1 |

        \sect "G" "(cascara 2-3 ?)"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        r8 cymc8 \rs \rs \rs| r8 cymc8 \rs \rs \rs | r8 cymc8 \rs \rs \rs | r8 cymc8 \rs \rs \rs | \bar "||"
        \break
        \rs \rs \rs r8 cymc8~ | cymc4 r8 cymc8~ cymc4 r8 cymc8 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | r8 cymc8 r8 cymc8~ cymc4 r8 cymc8 | r8 cymc8~ cymc4 r8 cymc8 r8 cymc8 | \bar "||"
        \comp #4 | \rs \rs \rs r8 timh16 timh16 | timl4 r4 r2 |


        \bar "|."
    }
>>
 