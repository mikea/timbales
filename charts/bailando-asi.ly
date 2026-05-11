\version "2.24.2"
\include "charts/common.ly"

date = #(strftime "%Y-%m-%d" (localtime (current-time)))

\header {
  title = "Bailando Asi"
  subsubtitle = "(Salsa)"
  composer = "Irakere"
  instrument = "Timbales"
  tagline = \markup { "Bailando Asi - https://mikea.github.io/timbales/ - " \date }
}

\newTimbalesStaff <<
    \newDrumVoiceOne \drummode { 
        \tempo 4 = 200
        
        r2 r4 timh4^> | \bar "||"

        \sect-no-break "Intro" "(cascara 2-3)" 
        cymc4 \rs \rs \rs | \rs \rs r8 cymc8 r8 cymc8 | \comp #4 | \rs \rs r8 cymc8 r8 cymc8 | \bar "||"
        \comp #4 | \comp #4 | \rs \rs r8 timl8 r8 timl8 | r8 timl8 r8 timl8 r8 timl8 r4 | \bar "||"

        \sect "A" "(cascara 2-3)" 
    \repeat volta 2 {
        \bar "[|:-||"
        cymc4 \rs \rs \rs | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | r8 <<cb8 timl>> <<cb8 timl>> <<cb8 timl>> <<cb8 timl>> <<cb8 timl>> <<cb8 timl>> <<cb8 timl>> | \bar "||"
        \sectionLabel "(campanas 2-3)"
        cymc4 \rs \rs \rs | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | timh4 timl8 timl8 timl4 \drag timh4^> | \bar "||"

        \sect "B" "(cascara 2-3)" 
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 |

        \alternative {
            \volta 1 { 
                \rs \rs \rs r8 cymc8 \laissezVibrer | \bar "||"
                \sectionLabel "(ride 2-3)"
                \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
                \comp #4 | \comp #4 | \tuplet 3/2 {r4 <<timh4 timl>> <<timh4 timl>>} <<timh4 timl>> r8 <<timh8 timl>> | <<timh4 timl>> r4 r4 cymc4 \laissezVibrer | \bar "||"
                \bar ":|]"         
                \break
            }
            \volta 2 { 
                \rs \rs timl8 timl8 timl8 timl8 | \bar "||"
                cymc4. cymc8~ cymc4. cymc8~ | cymc4. cymc8~cymc4 r4 | <<cb8 timl>> <<cb8 timl>> <<cb8 timl>> <<cb8 timl>> <<cb8 timl>> <<cb8 timl>> <<cb8 timl>> <<cb8 timl>> | <<cb4 timl>> r8 cymc4. r4 | \bar "||"
                r1 | r4 r8 timl8 timl4 r4 | cymc2 cymc2 | \comp #4 | \bar "||"
                \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
                \clave-shift \comp #4 | 
            }
        }        
    }

        \sect "C" "Coro Pregon (campanas 3-2)" 
\repeat volta 2 {
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | 
        
    \alternative {
        \volta 1 { \comp #4 | \bar ":|]" }
        \volta 2 { r8 timl8r8 timl8 r8 timl8 timl4 | \bar "||" }
    }
}

        \sect "D" "(campanas 3-2)" 
\repeat volta 3 {
        \bar "[|:-||"
        cymc4 \rs \rs \rs | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        r8 cymc8 r8 cymc8 r8 r4 cymc8 | r8 cymc8 r8 r4 cymc4. | cymc4 \rs \rs r8 \textMark "fill" timl8 |  timl4 timh8 timh8 r8 timl8 timl4 | \bar "||"
        cymc4 \rs \rs \rs | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | 

    \alternative {
        \volta 1,2 {  r8 timl8r8 timl8 r8 timl8 timl4 \textEndMark "x3" | \bar ":|]" }
        \volta 3 { 
            \sect "E" "(campanas 2-3)" 
            \bar ":|][|:"
            \textMark "fill" cymc4 \rs \rs \rs |
            }
    }   
}
        cymc4 \rs \rs \rs | \comp #4 | \rs \rs r8 cymc4 cymc8 | \bar "||"
        \textMark "piano"
        \comp #4 | \comp #4 | \comp #4 | \textMark "fill" \comp #4 | \bar "||"
        
        \bar ":|]" 
        \sect-segno "F" "(campanas 2-3)" 
        cymc4. timl8 r8 timl8 r8 cymc8~ | cymc4 timl8 timl8 timl8 timl8 timl8 cymc8~ | 
        cymc4. timl8 r8 timl8 r8 cymc8~ | cymc4 timl8 timl8 timl8 timl8 timl8 cymc8~ | \bar "||"

        cymc4. timl8 r8 timl8 r8 cymc8~ | cymc4 timl8 timl8 timl8 timl8 timl4 | 
        timl8 timl8 timl8 timl8 timh8 timh8 r8 timl8 | timh8 timh8 r8 timl8 timh4 r4 | \bar "||"
        r1 | r4 r8 timl8 timl4 r4 | \big-coda cymc2 cymc2 | \comp #4 | \bar "||"
        
        \sect "G" "Pregon/Coro (campanas 2-3)" 
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \rs \rs \rs \only-last cymc4 \textEndMark "x3" | \bar "||"

        \bar ":|][|:"

        \sect "H" "(cascara 2-3)" 
        \comp #4 | \comp #4 | \comp #4 | \only-last <<cb8 timl>> <<cb8 timl>> r8 <<cb8 timl>> r8 <<cb8 timl>> <<cb4 timl>> \textEndMark "x4"| \bar "||"
        \bar ":|]" 

         <<cb8 timl>> <<cb8 timl>> r4 r4  <<cb8 timl>> <<cb8 timl>> | r4 r8  <<cb8 timl>>   <<cb4 timl>> r8 cymc8~ | cymc2 r2 | r8  <<cb8 timl>>   <<cb8 timl>>   <<cb8 timl>>   <<cb8 timl>>   <<cb8 timl>>   <<cb8 timl>>   <<cb8 timl>> | \bar "||" 

        \sect "I" "Horns/Coro (campanas 2-3)" 
        \bar ":|][|:"
        cymc4 \rs \rs \rs | \comp #4 | \comp #4 | \rs r8 timl8 r8 timl8 timl4^> | \bar "||"
        cymc4 \rs \rs \rs | \comp #4 | \comp #4 | \rs r8 timl8 r8 timl8 timl4^> | \bar "||"
        \textEndMark "x4"

        \sect "J" "Trumpet (ride 2-3)" 
        \bar ":|][|:"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \textEndMark "open"
        \bar ":|][|:"
        cymc2 cymc4. cymc8~ | cymc4 \rs \rs \rs | \comp #4 | \comp #4 | \bar "||"
        \textEndMark "x4"
        \bar ":|]" 

        \ds-al-coda

        \inline-coda

        <<cb4 timl>> r4 <<cb4 timl>> r4 |

        \bar "|."
    }
>>
 