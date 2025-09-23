\version "2.24.2"
\include "charts/common.ly"

date = #(strftime "%Y-%m-%d" (localtime (current-time)))

\header {
  title = "Salsa Con Coco"
  subsubtitle = "(Salsa 2-3)"
  composer = "Omar Alfanno"
  arranger = "perf. Tropical Fantasia"
  instrument = "Timbales"
  tagline = \markup { "Salsa Con Coco - https://mikea.github.io/timbales/ - " \date }
}

\newTimbalesStaff <<
    \newDrumVoiceOne \drummode { 
        \tempo 4 = 220

        \sect "Intro" "clave 2-3, montuno"
        r1 | r1 | r1 | r1 | \bar "||"
        r1 | r1 | r1 | r1 | \bar "||" 

        \sectionLabel "campanas 2-3"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||" 
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||" 

        \sect "Voz" "double cascara 2-3"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \sect "Coro" "" \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | cb4 cb8 cb8 r8 cb8 cb4 | \bar ".|" \textMark "clave shift" r1 | 

        \sect "Voz 2" "campanas 3-2"
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \textMark "cascara 3-2"
        \comp #4 | \comp #4 | \textMark "2nd time" cb4 r8 cb8 r4 cb4  | cb4 cb r2 | \bar "||"

        \bar ":|]"

        \sect "Coro" ""
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | 
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | 

        \sect "Voz 3" "double cascara 3-2"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \break
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | cb4 r4 r2 | \textMark "clave shift" r1 | \bar "||"

        \sect "Pregon/Coro" "campanas 2-3"
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \bar ":|]"

        \fine
    }
>>
