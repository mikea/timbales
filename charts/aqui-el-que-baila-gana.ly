\version "2.24.2"
\include "charts/common.ly"

date = #(strftime "%Y-%m-%d" (localtime (current-time)))

\header {
  title = "Aquí el Que Baila Gana"
  subsubtitle = "(Timba)"
  composer = "Juan Formell (Los Van Van)"
  instrument = "Timbales"
  tagline = \markup { "Aquí el Que Baila Gana - https://mikea.github.io/timbales/ - " \date }
}

\newTimbalesStaff <<
    \newDrumVoiceOne \drummode { 
        \tempo 4 = 172

        \sect "Intro" "Percussion"
        \bar "[|:-||"
        \comp #4 | \comp #4 | \textMark "fill out" \rs \startTextSpan \rs \rs \rs | \rs \rs \rs cymc4~ \stopTextSpan \textEndMark "x7" |
        \bar ":|]"

        \sect "A" "Horns"
        cymc4 \rs \rs \rs | \comp #4 | \comp #4 | | \comp #4 | \bar "||"
        \comp #4 |\comp #4 |\comp #4 |\rs \rs cymc4 cymc4~ | \bar "||"

        \sect "B" "Verse"
        \bar "[|:-||"
        cymc4 \rs \rs \rs | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \textMark "break 1st: campanas, 2nd: piano"
        \comp #4 |\comp #4 |\comp #4 | \rs \rs cymc4 cymc4~ | \bar "||"
        \bar ":|]"

        \sect "C" "Coro"
        cymc4 \rs \rs \rs | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 |\comp #4 |\comp #4 | \rs \rs \rs cymc4~ | \bar "||"

        \sect "D" "Horns"
        cymc4 \rs \rs \rs | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 |\comp #4 |\comp #4 | \rs \rs cymc4 cymc4~ | \bar "||"

        \sect "E" "Verse"
        cymc4 \rs \rs \rs | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \textMark "bass, campanas"
        \comp #4 |\comp #4 |\comp #4 | \rs \rs cymc4 cymc4~ | \bar "||"
        cymc4 \rs \rs \rs | \comp #4 | \comp #4 | \comp #4 | \bar "||"

        timl4 timl4 timl4 timl8 timl8 | timl4 timl4 timl8 timl8 timl4 |
        cymc8 cymc4 cymc4. cymc4~ | \bar "||"

        \sect "F" "Coro"
        cymc4 \rs \rs \rs | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 |\comp #4 |\comp #4 | \rs \rs \rs cymc4~ | \bar "||"

        \sect "G" "Coro"
        \bar "[|:-||"
        cymc4 r2 cymc4~ | cymc4 r2 cymc4~ | cymc4 r2 cymc4~ | cymc4. cymc4. cymc4~ \textEndMark "x3" | 
        \bar ":|]"
        cymc4 r2 cymc4~ | cymc4. cymc4. cymc4~ | \bar "||"
        cymc4 timl8 timl8 timl4 timl4 | timl8 timl8 timl4 cymc4 cymc4~ | \bar "||"

        \sect "H" "Coro/Pregon"
        \bar "[|:-||"
        \textMark "1" cymc4 \rs \rs \rs | \comp #4 | \comp #4 | \comp #4 \textEndMark "x8" |
        \bar ":|]"
        r1 | r2. cymc4~ | \bar "||"

        \sect "I" "Mona"
        cymc4 r2 cymc4~ | cymc4 r2 cymc4~ | cymc4 r2 cymc4~ | cymc4 r2 cymc4~ |  \bar "||"
        cymc4 r2 cymc4~ | cymc4. cymc4. cymc4~ | cymc4 r2 cymc4~ | cymc4. cymc4. cymc4 |  \bar "||" \break
        r2. cymc4~ | cymc4 r2 cymc4~ | cymc4 r2 cymc4~ | cymc4 r2 cymc4~ |  \bar "||"
        cymc4 r2 cymc4~ | cymc4. cymc4. timh4^> |

        r4 cb8 cb8 cb4 cb4 | cb8 cb8 cb4 cymc4 cymc4 | \bar "||"

        \sect "J" "Coro"
        \bar "[|:-||"
        \rs \rs \rs \rs | \comp #4 | \comp #4 | \comp #4 \textEndMark "open, fade" | \bar "||"
        \bar ":|]"

    }
>>
