\version "2.24.2"
\include "charts/common.ly"

date = #(strftime "%Y-%m-%d" (localtime (current-time)))

\header {
  title = "La Novela"
  subsubtitle = "(2-3 Rumba Clava)"
  composer = "Maraca"
  instrument = "Timbales"
  tagline = \markup { "La Novela - https://mikea.github.io/timbales/ - " \date }
}

\newTimbalesStaff <<
    \newDrumVoiceOne \drummode { 
        \tempo 4 = 200
        
        \sect "Intro" "(campanas 2-3)" 
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \textMark "fill" \rs \rs \rs timl4 | r8 <<cb8 timl>> <<cb4 timl>> r8 cymc4. | \bar "||"

        \sect "A" "(campanas 2-3)" 
        \bar "[|:-||"

        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x3" | \bar "||"
        \bar ":|]"         

        \comp #4 | \comp #4 | r1 | <<cb4 timl>> <<cb4^> timl>> r2 | \bar "||"

        \sect "B" "(cascara 2-3)" 
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"

        \sect "C" "Coro/Pregon (campanas 2-3)" 
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x3" | \bar "||"

        \sect "Mona 1" "(campanas 2-3)" 
        \bar ":|][|:"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \bar ":|]"         

        \sect "Intro" "(campanas 2-3)" 
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \textMark "fill" \rs \rs \rs timl4 | r8 <<cb8 timl>> <<cb4 timl>> r8 cymc4. | \bar "||"

        \sect "D" "Coro/Pregon (campanas 2-3)" 
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x3" | \bar "||"
        
        \sect "Mona 2" "(campanas 2-3)" 
        \bar ":|][|:"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"

        \sect "E" "Sonero (pilon)" 
        \bar ":|][|:"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \only-second r8 <<cb8 timl>> <<cb8 timl>> <<cb8 timl>> <<cb8 timl>> <<cb8 timl>> r8 <<cb8 timl>> | \bar "||"

        \sect "F" "Coro/Pregon (campanas 2-3)" 
        \bar ":|][|:"
        \only-first cymc4 \rs \rs \rs | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x3" | \bar "||"

        \sect "G" "(1,2 - campanas 2-3; 3,4 - timba)" 
        \bar ":|][|:"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x4" | \bar "||"
        \bar ":|]"         

        \sect "H" "Coro/Pregon (campanas 2-3)" 
        \bar ":|][|:"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4  | \bar "||"
        \bar ":|]"         

        \sect "Ending" "(campanas 2-3)" 
        \bar ":|][|:"
    \repeat volta 2 {
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | 
        \alternative {
            \volta 1 { \comp #4 | \comp #4 | \bar ":|]"  } 
            \volta 2 { r8 <<cb8 timl>> <<cb8 timl>> <<cb8 timl>> <<cb8 timl>> <<cb8 timl>> r4 | <<cb8 timl>> <<cb8 timl>> <<cb8 timl>> <<cb8 timl>> r2 |  } 
        }
    }

        \bar "|."
    }
>>
 