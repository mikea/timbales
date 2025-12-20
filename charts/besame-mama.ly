\version "2.24.2"
\include "charts/common.ly"

date = #(strftime "%Y-%m-%d" (localtime (current-time)))

\header {
  title = "Bésame mamá"
  subsubtitle = "(Cha-cha-cha)"
  composer = "Poncho Sanchez"
  instrument = "Timbales"
  tagline = \markup { "Bésame mamá - https://mikea.github.io/timbales/ - " \date }
}

\newTimbalesStaff <<
    \newDrumVoiceOne \drummode { 
        \tempo 4 = 110

        \sectionLabel "montuno 2-3, guiro"
        r1 | r1 |r1 | r4 r4 timh4^> timh4:32~~ \bar "||"
        
        timh4^> \rs \rs \rs | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"

        \break

        % 13
        cymc4 \rs \rs \rs | \comp #4 | \comp #4 | cb8 cb8 cb4 r8 timh8^> timh4:32~ | \bar "||"
        timh4^> \rs \rs \rs | \comp #4 | \comp #4 | cb16 cb8 cb16 cb8 cb16 cb8 cb16 cb8 cb16 cb16 cb8 | \bar "||"


        \sect "A" "Voz"
        timh4^> \rs \rs \rs | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        
        \sect "B" "piano"
        cymc4 \rs \rs \rs | \comp #4 | \comp #4 | \comp #4 | \bar "||"

        \sectionLabel "horns"
        \comp #4 | \comp #4 | \comp #4 | \rs \rs timh4^> timh4:32~| \bar "||"
        \sectionLabel "ride"
        timh4^> \rs \rs \rs | \comp #4 | \comp #4 | cb8 cb8 cb4 r8 timh8^> timh4:32~ | \bar "||"

        \sect "C" "Voz"
        timh4^> \rs \rs \rs | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        cymc8 timh8 timh8 timh8^> timh8 timh8 timh8^> cb8  |

        timl8 cb8 cb8 cb8 cb16 cb16 cb16 cb16 cb16 timh8.:32~ | \bar "||"

        \sect "D" "Trumpet"
        timh4^> \rs \rs \rs | \comp #4 | \comp #4 | r8 cymc8~ cymc8 cb8 cb8 cb8 cb16 cb16 cb8 | \bar "||"
        \sectionLabel "ride"
        cymc4 \rs \rs \rs | \comp #4 | \comp #4 | \comp #4 | \bar "||"

        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x7" | \bar "||"
        \bar ":|]"

        \sect "E" "Horns"
        cymc4 \rs \rs \rs | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \rs \rs timh4^> timl4 | \bar "||"

        \sect "F" "Conga (campana)"
        timh4^> \rs \rs \rs | \comp #4 | \comp #4 | \comp #4 | \bar "||"

        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x9" | \bar "||"
        \bar ":|]"

        \comp #4 | \comp #4 | \comp #4 | \rs \rs r8 timl8 timl8 timl8 | \bar "||"

        \sect "G" "Horns + Conga"
        \bar "[|:-||"
        cymc4 \rs \rs \rs | \comp #4 | \comp #4 | \comp #4 \textEndMark "x3" | \bar "||"
        \bar ":|]"

        cymc4 cymc4 \rs r8 cymc8~| cymc4 \rs \rs \rs | cymc4 \rs \rs \rs | \comp #4  | \bar "||"

        \sect "H" "Horns (ride + campana)"

        cymc4 \rs \rs \rs | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        cymc4 \rs \rs \rs | \comp #4 | \comp #4 | cb8 cb8 cb4 r8 timh8^> timh16^> timh8.:32~ | \bar "||"

        \sect "I" "Voz (campana)"
        timh4^> \rs \rs \rs | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \rs \rs \rs timh4^> | \bar "||"

        cymc8 timh8^> timl8 cymc8 timh8^> timl8 cymc8 timl8 |
        cb16 cb8 cb16 cb8 cb16 cb8 cb16 cb8 cb16 cb16 cb8 |
        cb16 cb16 cb16 cb16 cb4 cb2:16 \fermata 

        \bar "|."
    }
>>
