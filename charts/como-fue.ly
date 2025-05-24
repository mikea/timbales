\version "2.24.2"
\include "charts/common.ly"

date = #(strftime "%Y-%m-%d" (localtime (current-time)))

\header {
  title = "Como Fue"
  subsubtitle = "(Bolero)"
  composer = "Ernesto Duarte"
  instrument = "Timbales"
  tagline = \markup { "Como Fue - https://github.com/mikea/timbales - " \date }
}

\newTimbalesStaff <<
    \newDrumVoiceOne \drummode { 
        \tempo 4 = 82

        \sect "Intro" ""
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 |

        \bar "[|:-||"

        \sect "A" ""
        \textMark "2nd time" cymc4 \rs \rs \rs | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | \textMark "2nd time swinging" \comp #4 | \comp #4 | \bar "||"

        \bar ":|]"

        \sect "B" ""
        cymc4 \rs \rs \rs  | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | \tuplet 3/2 {timl4 4 4} timh4 16 16 16 16  | \drag cymc2  \drag cymc2  |

        \sect "C" ""
        cymc4 \rs \rs \rs  | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |

        \bar "[|:-||"

        \sect "D" "trumpet"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | \textMark "2nd time swinging" \comp #4 | \comp #4 | \bar "||"

        \bar ":|]"

        \sect "B2" ""
        cymc4 \rs \rs \rs  | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | \tuplet 3/2 {timl4 4 4} timh4 16 16 16 16  | \drag cymc2  \drag cymc2  | \bar "||"
       
        
        \sect "Coda" ""
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        
        \ssect "Cha-Cha-Cha (open)"
        \tempo 4 = 125
        \bar "[|:-||"
        \comp #4 | \comp #4 |
        \bar ":|]"
        \tempo 4 = 82
        r2 timh8 8 8 8 | \tuplet 3/2 {timl4 4 4} \tuplet 3/2 {cymc4 4 4} | cymc1 |

        \fine
    }
>>
