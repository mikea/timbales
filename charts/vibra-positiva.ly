\version "2.24.2"
\include "charts/common.ly"

date = #(strftime "%Y-%m-%d" (localtime (current-time)))

\header {
  title = "Vibra Positiva"
  subsubtitle = "(2-3 Salsa)"
  composer = "Guaguancó Festival"
  instrument = "Timbales"
  tagline = \markup { "Vibra Positiva - https://mikea.github.io/timbales/ - " \date }
}

\newTimbalesStaff <<
    \newDrumVoiceOne \drummode { 
        \tempo 4 = 198
        
        \sect "Intro" "cascara" 
        r8 timl timl cymc4. r4 | r1 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \rs \rs \tuplet 3/2 { timh8 timh timh timh timh timh} | timh^> cymc8 r8 cymc8 r4 r8 cymc8 | \bar "||"

        \sect "A" "Mona (campanas)" 
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \bar ":|][|:"


        \sect "B" "Voz (timba)" 
        bd4. bd4 sn8 sn^> bd8~ | bd8 bd4 bd4 r8 sn4^> | 
        \textMark "simile" \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \bar ":|]"

        \sect "C" "Voz (cascara)" 
        cymc4 \rs \rs \rs | cymc4 \rs \rs \rs | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \rs \rs \rs timl4 | \bar "||"

        \sect "D" "(timba)" 
        cymc4 \rs \rs \rs | \comp #4 | \comp #4 | \rs \rs \rs \flam timh4^> | \bar "||"
        cymc4. cymc4. \textMark "fill" \rs | 
        cymc4. cymc4. \textMark "fill" \rs |
        cymc4. cymc4. \textMark "fill" \rs | 
        cb16 cb8 cb16 cb8 cb16 cb8. r4. | \bar "||"

        \sect "E" "Pregon/Coro (campanas)" 
        r1 | 
        cb4. cb8 r8 cb8 r4 | \bar "||" 
        \bar "[|:-||"
        \only-first cymc4 \rs \rs \rs | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \textEndMark "x8"
        \bar ":|]"

        \sect "F" "Mambo (campanas)" 
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"

        \sect "G" "Bembe" 
        \time 12/8
        \comp #12 | \comp #12 | \comp #12 | \comp #12 | \bar "||"
        \comp #12 | \comp #12 | \comp #12 | \comp #12 | \bar "||"

        \sect "H" "Coro/Pregon (campanas)" 
        \time 4/4
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"

        \sect "I" "Coro/Mambo 2 (campanas)" 
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"

        \sect "J" "Coro/Pregon (campanas)" 
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"

        \sect "K" "Mona (campanas)" 
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"

        \sect "L" "Trumpet/Coro (campanas)" 
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"

        \sect "M" "Ending (campanas)" 
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"

        \bar "|."
    }
>>
 