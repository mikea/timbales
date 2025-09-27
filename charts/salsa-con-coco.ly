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
        \bar "[|:-||"
        r1 | r1 | r1 | r1 | \bar "||"
        \bar ":|][|:"

        \sectionLabel "campanas 2-3"
        cymc4 \rs \rs \rs | \comp #4 | \comp #4 | \comp #4 |
        \bar ":|][|:"

        \sect "A" "Voz (double cascara 2-3)"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x4"  | 
        \bar ":|]"
        \comp #4 | \comp #4 | \comp #4 | cb4 cb8 cb8 r8 cb8 cb4  | \bar "||"
        \clave-shift r1 | 

        \sect "B" "Voz (campanas 3-2)"
        \bar "[|:-||"
        r1 | r1 | r1 | r1 | \bar "||"
        \textMark "cascara 3-2"
        \comp #4 | \comp #4 | \textMark "2nd time" cb4 r8 cb8 r4 cb4  | cb4 cb r2 | \bar "||"

        \bar ":|]"

        \sect "C" "Coro (cumbia)"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | cb4. cb4. cb4 | r1 | 

        \sect "D" "Voz (double cascara 3-2)"
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x3" | 
        \bar ":|]"
        \comp #4 | cb4 r4 r2 | \clave-shift r1 | \bar "||"

        \sect "E" "Pregon/Coro (campanas 2-3)"
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \textMark "last time" cb8^> cb4 cb8 cb4^> timh4:16 \textEndMark "x4" | \bar "||"
        \bar ":|][|:"

        \sect-no-break "F" "Coro (campanas 2-3)"
        \comp #4 | \comp #4 | \comp #4 | \textMark "last time" cb4 4 4 4 \textEndMark "x4" | \bar "||"
        \bar ":|][|:"

        \sect "Mambo" "(campanas 2-3)"
        cymc4 \rs \rs \rs | \rs \rs \rs \drag timh8 cymc8 | \comp #4 | \comp #4 \textEndMark "x4" | 
        \bar ":|]"
        \comp #4 | cb4^> cb8 cb4^> cb8 cb4^> | r1 | r1 | \bar "||"

        \sect "G" "Coro/Pregon (cumbia)"
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "Open" | 
        \bar ":|][|:"

        \sect "H" "Coro/Trumpet"
        \repeat volta 2 {
          cymc4 \rs \rs \rs | \comp #4 | \comp #4 | \comp #4  | \bar "||"
          \comp #4 | \rs \rs \rs cb4^> | r1 |
          \alternative {
            \volta 1 {r2 r4 cb8 cb8 | \bar ":|]" }
            \volta 2 { r4 timh2.:16 }
          }         
        }
        
        \sect "Mambo" "(campanas 2-3)"
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x4" | 
        \bar ":|][|:"

        \sect-no-break "I" "(campanas 2-3)"
        cymc4 \rs \rs \rs | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 |\comp #4 |\comp #4 | \rs \rs timh2:16 | \bar "||"
        \break
        
        \textMark \markup { \italic "fantasia" }
        bd2 bd2 | bd2 bd2 | bd2 bd2 | bd2 bd2 | \bar "||"
        bd2 bd2 | bd2 bd2 | cb4 4 4 4 | 4 4 4 4 |

        \bar ":|][|:"

        \sect "Piano" "(campanas 2-3)"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x4" | 
        \bar ":|]"

        \sect-no-break "Ending" "(campanas 2-3)"
        \comp #4 | \comp #4 | cb8 cb8 cb8 cb8 cb4 cb4 | r1 | cymc2 r2 |

        \bar "|."
    }
>>
