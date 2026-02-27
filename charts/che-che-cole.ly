\version "2.24.2"
\include "charts/common.ly"

date = #(strftime "%Y-%m-%d" (localtime (current-time)))

\header {
  title = "Ché Ché Colé"
  subsubtitle = "(Cumbia)"
  composer = "Willie Colon & Hector Lavoe"
  instrument = "Timbales"
  tagline = \markup { "Ché Ché Colé - https://mikea.github.io/timbales/ - " \date }
}

\newTimbalesStaff <<
    \newDrumVoiceOne \drummode { 
        \tempo 4 = 205

        \sect "Intro" ""

        \textMark "piano" r1 | r1 | r1 | r1 | \bar "||"
        r1 | r1 | r2 r4 r8 timl8 | timl4 4 4 timh4^> | \bar "||"
        \bar "[|:-||"
        \textMark "horns"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x6 " | \bar "||"
        \bar ":|][|:"

        \sect "A" "Coro/Voz"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x4 " | \bar "||"
        \bar ":|][|:"


        \sect-no-break "B" "Coro/Voz"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x5 " | \bar "||"
        \bar ":|][|:"

        \sect "C" "Horns"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \bar ":|][|:"

        \sect "A2" "Coro/Voz"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x4 " | \bar "||"
        \bar ":|][|:"

        \sect-no-break "B2" "Coro/Voz"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x5 " | \bar "||"
        \bar ":|][|:"

        \sect "D" "Horns"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x4 " | \bar "||"
        \bar ":|][|:"

        \sect-no-break "E" "Horns"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \bar ":|][|:"

        \sect "A3" "Coro/Voz"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x4 " | \bar "||"
        \bar ":|][|:"

        \sect-no-break "B3" "Coro/Voz"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x5 " | \bar "||"
        \bar ":|][|:"

        % \bar ".."
    }
>>
