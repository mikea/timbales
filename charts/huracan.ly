\version "2.24.2"
\include "charts/common.ly"

date = #(strftime "%Y-%m-%d" (localtime (current-time)))

\header {
  title = "Huracan"
  subsubtitle = "(Salsa 2-3)"
  composer = "as pf Bobby Valentin"
  instrument = "Timbales"
  tagline = \markup { "Huracan - https://mikea.github.io/timbales/ - " \date }
}

\newTimbalesStaff <<
    \newDrumVoiceOne \drummode { 
        \tempo 4 = 140
        
        \sectionLabel "cascareo"
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \textEndMark "(x3 on record)"
        \bar ":|]"
        cb4 r8 cb8 cb4 r8 cb8 | \tuplet 3/2 { cb4 cb4 cb4 } cb4 r4  | \bar "||"

        \sect "A" "(cascareo)" 
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \bar ":|]"

        \sect-no-break "B" "(cascareo)" 
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"

        \sect "C" "(cascareo)" 
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"

        \sect "D" "(cascareo)" 
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | cb4 cb4 cb4 r8 cb8  | cb4^> r8 cb8 r8 cb8 cb4^> | \bar "||"

        \sect "E" "(campana)" 
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        
        \break
        \sectionLabel "Pregon/Coro"
    \repeat volta 4 {
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | 
        \alternative {
            \volta 1,2,3 { \comp #4 | \comp #4 | \bar ":|]" }
            \volta 4 { cb4 cb4 cb4 r4| \tuplet 3/2 { cb4 cb4 cb4 } cb4 r4  | \bar "||" }
        }
    }

        \sect "Mambo" "" 
    \repeat volta 3 {
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | 
        \alternative {
            \volta 1,2 {  \comp #4 | \comp #4 | \bar ":|]" }
            \volta 3 { \textMark "(x4 on record)" \rs \rs \rs cb8 cb8^> | r4 r8 cb8 r8 cb8 cb4^> | \bar "||" }
        }
    }

        \sect "Guia/Coro" "(campana)" 
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \textEndMark "x7"
        \bar ":|]"

        \sect "Coda" "(cymbal)" 
        cymc4 cymc4 cymc4 \rs | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 |\rs \rs r8 timh8 timh4 | \bar "||"
        cb4 cb4 cb4 r4 | 

        \bar "|."
    }
>>
 