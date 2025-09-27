\version "2.24.2"
\include "charts/common.ly"

date = #(strftime "%Y-%m-%d" (localtime (current-time)))

\header {
  title = "Puro Veneno"
  subsubtitle = "(Salsa 2-3)"
  composer = "perf. Nathy Peluso"
  instrument = "Timbales"
  tagline = \markup { "Puro Veneno - https://mikea.github.io/timbales/ - " \date }
}

\newTimbalesStaff <<
    \newDrumVoiceOne \drummode { 
        \tempo 4 = 200

        \sect "Intro" " (campanas)"
        r1 | r1 | \bar "||"
        cymc4  \rs \rs \rs | \comp #4 | \comp #4 | \rs \rs \rs cymc4 | \bar "||"
        \comp #4 | \comp #4 | \rs \rs \rs r8 timl8 | timh4 timl8 timh4 cb8 cymc4~ | \bar "||" \break

        cymc4  \rs \rs \rs | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |\bar "||"

        \comp #4 | \comp #4 | timh8 timh8 r2 \drag timh8 timh8 | r1| \bar "||"

        \sect "A" "Voz (cascara)"
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \bar ":|][|:" 
        \comp #4 | \comp #4 | \rs \rs \rs r8 cymc | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"\break
        \bar ":|]" 
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \rs \rs \rs r8 cymc | \comp #4 | \bar "||"\break

        \sect "B" "Voz (campanas)"
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \bar ":|][|:" 
        \sectionLabel "cascara"
        \comp #4 | \comp #4 | \comp #4 | \rs \rs \rs \textMark "out" timh4:16~ | \bar "||"\break
        \bar ":|]" 

        \sect "C" "Coro (campanas)"
        timh4^>  \rs \rs \rs | \comp #4 | \comp #4 | \rs \rs \rs cymc4 | \bar "||"
        \comp #4 | \comp #4 | \rs \rs \rs r8 timl8 | timh4 timl8 timh4 cb8 cymc4~ | \bar "||" \break

        cymc4  \rs \rs \rs | \comp #4 | \rs \rs \rs r8 cymc8 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |\bar "||"

        \comp #4 | \comp #4 | timh8 timh8 r2 \drag timh8 timh8 | r1| \bar "||"


        \sect "D" "Voz (cascara)"
        \bar "[|:-||"

        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"\break
        \bar ":|][|:" 

        \sect "E" "Voz (campanas)"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \bar ":|][|:" 
        \sectionLabel "cascara"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \bar ":|]" 

        \comp #4 | \comp #4 | timh8 timh8 r2 \drag timh8 timh8 | r1| \bar "||"

        \sect "F" "Coro (campanas)"
        \bar "[|:-||"
        cymc4  \rs \rs \rs | \comp #4 | \comp #4 | \rs \rs \rs cymc4 | \bar "||"
        \comp #4 | \comp #4 | \rs \rs \rs r8 timl8 | timh4 timl8 timh4 cb8 cymc4~ | \bar "||" \break

        cymc4  \rs \rs \rs | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |\bar "||"

        \bar ":|]"

        \comp #4 | \comp #4 | timh8 timh8 r2 \drag timh8 timh8 | r1| \bar "||"

        \sect "Mambo" " (campanas)"
        cymc4 \rs \rs \rs | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \rs \rs \rs r8 timl8 | timh4 timl8 timh4 cb8 cymc4 | \bar "||"

        \sect "G" "Coro/Pregon (campanas)"
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x7" | \bar "||"
        \bar ":|]"

        \sectionLabel "campanas"
        \comp #4 | \comp #4 | cb8 cb8 r2 cb8 cb8 | r1 | \bar "||"

        r1 \fermata | cb2:16 \fermata s2 |

        \bar "|."
    }
>>
