\version "2.24.2"
\include "charts/common.ly"

date = #(strftime "%Y-%m-%d" (localtime (current-time)))

\header {
  title = "La Tierra De La Belleza"
  subsubtitle = ""
  composer = "Alberto Caicedo"
  instrument = "Timbales"
  tagline = \markup { "La Tierra De La Belleza - https://mikea.github.io/timbales/ - " \date }
}

\newTimbalesStaff <<
    \newDrumVoiceOne \drummode { 
        \tempo 4 = 170

 \repeat segno 2 {

        \sect "Intro" "cumbia"
        r4 r8 ssh8 r8 ssh8 cymc4 | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | \bar "||"
        \break
        \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | 
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |

        \sect "Voz" "cumbia"
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar ":|][|:"

        \sect "Voz" "cascara 3-2 "
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar ":|][|:"

        \sect "Coro" "campanas 3-2"
        \textMark "2nd time" cymc4 \rs \rs \rs | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | \comp #4 | \rs \rs \textMark "2nd time" cymc4 r |
        \bar ":|][|:"
 }

        \sect "Mambo" "campanas 3-2"
        cymc4 \rs \rs \rs | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar ":|][|:"


        \fine
    }
>>
