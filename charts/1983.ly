\version "2.24.2"
\include "charts/common.ly"

date = #(strftime "%Y-%m-%d" (localtime (current-time)))

\header {
  title = "1983"
  subsubtitle = "(Salsa)"
  composer = "Eddie Palmieri    "
  instrument = "Timbales"
  tagline = \markup { "1983 - https://mikea.github.io/timbales/ - " \date }
}

\newTimbalesStaff <<
    \newDrumVoiceOne \drummode { 
        \tempo 4 = 210

        \sect "Intro" "(cascara 3-2)"
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x4" | \bar "||"
        \bar ":|]" 
        cymc8 8 r cymc r cymc r cymc~ | cymc2 cymc4. cymc8| r1 | cymc2 cymc2 | \bar "||"

        \sect "A" "Voz (cascara 3-2)"
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x4" | 

        \bar ":|][|:"
        
        \sect "B" "Voz (cascara 3-2)"

        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x4" | \bar "||"
        \bar ":|]" 
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"

        \dc

        \clave-shift <<timh4. timl>> timh4.^> timh4:16~ | 

        \sect "C" "(ride 2-3)"
        cymc4 \rs \rs \rs | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | r8 timl8  8 8  8 8  cymc4 | \comp #4 | \textMark "fill" \comp #4 | \bar "||"

        \sect "D" "Coro/Solos (campana 2-3)"
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x4" | \bar "||"

        \bar ":|][|:"

        \sectionLabel "Coro/Pregon (campana 2-3)"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x5" | \bar "||"
        \bar ":|]" 
        \textMark "last Coro"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"

        \sect "E" "Piano (ride 2-3)"
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x3" | \bar "||"
    
        \bar ":|][|:"
        \sectionLabel "horns"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | cymc4 \rs \rs cymc4 | r4 r8 cymc4. \rs | \bar "||"
        \bar ":|]" 

        \sect "C" "(ride 2-3)"
        cymc4 \rs \rs \rs | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | r8 timl8  8 8  8 8  cymc4 | \comp #4 | \textMark "fill" \comp #4 | \bar "||"

        \sect "F" "Coro/Solos (campana 2-3)"
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x5" | \bar "||"
        \bar ":|][|:"

        \sectionLabel "(ride 2-3)"
        \comp #4 | \comp #4 | \comp #4 | \only-last r8 \drag timh8 timh8 timh8 timh8 timh8 timh4 \textEndMark "x7" | \bar "||"
        \bar ":|][|:"

        \sect "G" "Coro/Pregon (campana 2-3)"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x7" | \bar "||"
        \bar ":|]"

        \sect "H" "(cascara 2-3)"

        <<timh8 timl>> <<timh8 timl>> r4 <<timh8 timl>> <<timh8 timl>> r4 |
        cymc4 \rs \rs \rs |

        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \bar ":|]"
        \comp #4 | \comp #4 | \comp #4 | 
        <<timh8 timl>> <<timh8 timl>> 
        r8
        <<timh8 timl>> <<timh8 timl>> 
        r8 
        <<timh8 timl>> <<timh8 timl>> |

        \bar ".."

    }
>>
