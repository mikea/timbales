\version "2.24.2"
\include "charts/common.ly"

date = #(strftime "%Y-%m-%d" (localtime (current-time)))

\header {
  title = "Miserable"
  subsubtitle = "(Salsa)"
  composer = "Grupo Niche"
  instrument = "Timbales"
  tagline = \markup { "Miserable - https://mikea.github.io/timbales/ - " \date }
}

\newTimbalesStaff <<
    \newDrumVoiceOne \drummode { 
        \tempo 4 = 168

        \sect "Intro" "(cascara 2-3)"
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x4" | \bar "||"
        \bar ":|]"
        \comp #4 | \comp #4 | \bar "||"
        
        \sect "A" "Voz (cascara 2-3)"
        \rs \rs \rs r8 cymc8 | \comp #4 | \rs \rs \rs r8 cymc8 | \comp #4 \bar "||"
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x3" | \bar "||"
        \bar ":|]"
        \break
        \comp #4 | \comp #4 | cymc4 cymc4 cymc8 cymc8 r4 | r4 cymc8 cymc8~ cymc4 \rs | \bar "||"
        \comp #4 | \comp #4 | cymc4 r4 r8 cymc8 cymc4 | r4 r8 cymc8~ cymc4 \rs | \bar "||"
        
        \sect "B" "Voz (cascara 2-3)"
        \rs \rs \rs r8 \ghost cymc8 | \comp #4 | \rs \rs \rs r8 cymc8 | \comp #4 \bar "||"
        \comp #4 | cymc2 cymc2| \rs \rs \rs r8 \ghost cymc8 | \comp #4  | \bar "||"
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \bar ":|]"
        \comp #4 | \comp #4 | cymc4 cymc4 cymc8 cymc8 r4 | r4 cymc8 cymc8~ cymc4 \rs | \bar "||"
        \comp #4 | \comp #4 | cymc4 r4 r8 cymc8 cymc4 | r4 r8 cymc8~ cymc4 \rs | \bar "||"
        \comp #4 | \comp #4 | \rs \rs \rs r8 cymc8  | \comp #4 | \bar "||"

        \sect "C" "Rhodes (campana 2-3)"
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||" \comp #4 | \comp #4  \textEndMark "x3" | \bar "||"
        \bar ":|]"
        \tuplet 3/2 { <<timl4 timh>> <<timl4 timh>> <<timl4 timh>> } <<timl4 timh>> <<timl8 timh>> <<timl8 timh>> | r8 <<timl8 timh>> r8 <<timl8 timh>> r8 timh8 timl4 |


        \sect "D" "Coro/Pregon (campana 2-3)"

        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4  \textEndMark "x10" | \bar "||"

        \bar ":|][|:"

        \sect "E" "Rhodes (cascara 2-3)"
        \comp #4 | \comp #4 | \comp #4 | \comp #4  \textEndMark "x5" | \bar "||"
        \bar ":|]"

        <<cb4 timl>> <<cb4 timl>> <<cb8 timl>> <<cb8 timl>> <<cb4 timl>> |
        <<cb4 timl>> <<cb8 timl>> <<cb8 timl>> <<cb8 timl>> <<cb8 timl>> r8 timh8:32 |

        \sect "F" "Mambo (cambana 2-3)"
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \bar ":|]"
        cymc4. cymc4. cymc4 | \comp #4 | \bar "||"
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \bar ":|]"
        cymc4. cymc4. cymc4 | \rs \rs \rs timh8^> timh8:32 | \bar "||"

        \sect "G" "Coro/Pregon (campana 2-3)"
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4  \textEndMark "x6" | \bar "||"
        \bar ":|][|:"

        \sect "H" "Rhodes/Timbales Solo (campana 2-3)"
        \comp #4 | \comp #4 | \comp #4 | \comp #4  \textEndMark "x4" | \bar "||"
        \bar ":|]"
        \comp #4 | \comp #4 |

        \sect "Ending" "(cascara 2-3)"
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4  | \bar "||"
        \bar ":|][|:"
         <<cb4 timl>> <<cb4 timl>> r8  <<cb8 timl>> <<cb4 timl>> |
        \bar ".."
    }
>>
