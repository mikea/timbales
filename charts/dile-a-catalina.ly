\version "2.24.2"
\include "charts/common.ly"

date = #(strftime "%Y-%m-%d" (localtime (current-time)))

\header {
  title = "Dile a Catalina"
  subsubtitle = "(Salsa)"
  composer = "Arsenio Rodriguez"
  instrument = "Timbales"
  tagline = \markup { "Dile a Catalina - https://mikea.github.io/timbales/ - " \date }
}

\newTimbalesStaff <<
    \newDrumVoiceOne \drummode { 
        \tempo 4 = 172

        \sect "Intro" "(clave 2-3, p-no)"
    \autoLineBreaksOff
        r1 | r1 | r1 | r2 r8 timl8 timl cymc | \bar "||"
        r8 timh8 timh cymc r8 timl8 timl cymc | r8 timl8 timl cymc r8 timl8 timl cymc  | r8 timl8 timl cymc r8 timl8 timl cymc   |  
        r8 cymc8 r8 cymc8~ cymc2 | \bar "||"
        timl8 timl8 timl8 timl8 timl8 timl8 timl8 timl8 | 
        timl8 timl8 timl4 r4 timh4^> | \bar "||"
    \autoLineBreaksOn

        \sect-segno "A" "Coro/Trumpet (cascara 2-3)"
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x5" | \bar "||"
        \bar ":|]" 
        \comp #4 |  \rs r8 timh4.^> r4 |
        timl8 timl8 timl8 timl8 timl8 timl8 timl8 timl8 | 
        timl8 timl8 timl4 r4 timh4^> | \bar "||"

        \big-coda
        \ds-al-coda

        \sect "C" " (cascara 2-3)"
        \comp #4 | \comp #4 | \comp #4 | \comp #4  | \bar "||"
        \comp #4 | \comp #4 |
        timl8 timl8 timl8 timl8 timl8 timl8 timl8 timl8 | 
        timl8 timl8 timl4 r4 timh4^> | \bar "||"

        \sect "D" "Coro/Pregon (campana 2-3)"
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x6" | \bar "||"

        \bar ":|][|:"

        \sect "E" "Mambo/Trumpet (campana 2-3)"
    \repeat volta 2 {
        cymc4 \rs \rs \rs | \comp #4 | \comp #4 | \rs \rs r8 timl8 timl cymc | \bar "||"
        r8 timh8 timh cymc r8 timl8 timl cymc | r8 timl8 timl cymc r8 timl8 timl cymc | r8 timl8 timl cymc r8 timl8 timl cymc 
        | r8 <<timl8 cb>> <<timl8 cb>> <<timl8 cb>> <<timl8 cb>> <<timl8 cb>> <<timl8 cb>> <<timl8 cb>>   | \bar "||"
        \break
        cymc4 \rs \rs \rs | \comp #4 | \comp #4 | \comp #4  | \bar "||"
        \comp #4 | \comp #4 |
        \alternative {
            \volta 1 { \comp #4 | timl8 8 8 8 8 8 8 8 | \bar ":|]" }
            \volta 2 { \rs \rs \rs timh4^> | timl8 8 8 8 8 8 4 | \bar "||" }
        }
    }
        \sect "F" "Coro/Pregon (campana 2-3)"
        r1 | timl4. timh4. timl4 | \comp #4 | \comp #4 |
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x4" | \bar "||"
        \bar ":|]"

        \sect "K" "Coro/Pregon (campana 2-3)"
        r1 | timl4. timh4. timl4 | \comp #4 | \comp #4 |
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "open" | \bar "||"
        \bar ":|]"

        \sect "L" "Coro/Pregon (cascara 2-3)"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \rs \rs r8 timl8 timl cymc | 
        r8 timh8 timh cymc r8 timl8 timl cymc | r8 timl8 timl cymc r8 timl8 timl cymc  | r8 timl8 timl cymc r8 timl8 timl cymc   |  
        r8 cymc8 r8 cymc8~ cymc2 |
        timl8 timl8 timl8 timl8 timl8 timl8 timl8 timl8 | 
        timl8 timl8 timl4 r2

        \bar ".."

    }
>>
