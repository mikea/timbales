\version "2.24.2"
\include "charts/common.ly"

date = #(strftime "%Y-%m-%d" (localtime (current-time)))

\header {
  title = "Babaila"
  subsubtitle = "(Salsa)"
  composer = "Los Soneros de Barrio"
  instrument = "Timbales"
  tagline = \markup { "Babaila - https://mikea.github.io/timbales/ - " \date }
}

\newTimbalesStaff <<
    \newDrumVoiceOne \drummode { 
        \tempo 4 = 188

        \sect "Intro" "(cascara 2-3)" 
        \bar "[|:-||"
        \comp #4 | \comp #4 | \rs \rs \rs r8 cymc8| r8 cymc r8 cymc8 r8 timh8 timl4  | \bar "||"
        \bar ":|]"

        \comp #4 | \comp #4 | \comp #4 | \rs r8 cymc8^. r2  | \bar "||"

        \sect "A" "Voz (cascara 2-3)" 
    \repeat volta 2 {
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 |
        \alternative {
            \volta 1 { \comp #4 | \rs r8 cymc8 r8 timh8 timl4 | | \bar ":|]"  } 
            \volta 2 { \rs \rs \rs r8 cymc8| r8 cymc r8 cymc8~ cymc4 timh4:16  | \bar "||"  } 
        }
    }

        \sect "B" "Voz (campanas 2-3)" 
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        
        \ssect-no-break "(cascara 2-3)"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"

        \comp #4 | \comp #4 | \rs \rs \rs cymc4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \rs \rs r8 timh8 timl4| \bar "||"
        
        \sect "C" "Voz (cascara 2-3)" 
    \autoLineBreaksOff

        \comp #4 | r8 cymc8 \rs \rs \rs | \comp #4 | r8 cymc8 \rs \rs \rs | \bar "||"
        \bar "[|:-||"
        \comp #4 | \rs \rs r8 cb8 r8 cymc8 | \comp #4 | \comp #4 | \bar "||"
        \bar ":|][|:"

        \sect-no-break "D" "Voz (cascara 2-3)" 
        \comp #4 | \comp #4 | \comp #4 | \rs \rs \rs \only-second timh4:16 | \bar "||"
        \bar ":|]"

        \sect "E" "Voz (campanas 2-3)" 
        \comp #4 | \comp #4 | \comp #4 | \rs r8 cymc8 \rs \rs | \bar "||"
        \comp #4 | \comp #4 | cb4 cb4 cb4 cymc4~ | cymc4 \rs \rs \rs | \bar "||"
        \comp #4 | \comp #4 | \drag timh4 r8 <<cb8 timl8>> r8 <<cb8 timl8>> r8 <<cb8 timl8>> | r8 <<cb8 timl8>> r8 <<cb8 timl8>> r8 <<cb8 timl8>> r4 | \bar "||"
    \autoLineBreaksOn

        \sect "F" "Coro/Horns (campanas 2-3)" 

        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \drag timl4 r4 r2  | r8 <<cb8 \< timl8>> <<cb8 timl8>> <<cb8 timl8>> <<cb8 timl8>> <<cb8 timl8>> <<cb8 timl8>> <<cb8  \! timl8>> | \bar "||"

        \sect "G" "Pregon/Coro (campanas 2-3)" 
        \bar "[|:-||"

        \only-first cymc4 \rs \rs \rs |  \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \rs \rs r8 \only-last timh8 timl8 cymc8 \textEndMark "x3" | \bar "||"


        \sect "H" "Trumpet (ride 2-3)" 
        \bar ":|][|:"
        \comp #4 | \comp #4 | \comp #4 | \rs \rs \rs r8 \only-last cb8 | \bar "||"
        \bar ":|]"

        r4 cb4 cb4 r8 cymc8 | \comp #4 | \comp #4 | \rs \rs \rs \drag timh8 timh8 | \bar "||"
        timh4 timl4 \drag timh8 timh8 timh4 | timl4 \drag timh8 timh8 timh4 r4 |

        \sect "I" "Coro/Pregon (campanas 2-3)" 
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \bar ":|][|:"

        \sect-no-break "J" "Perc Solos"

        \comp #4 | \comp #4 | \comp #4 | r8 \only-last <<cb8 timl>> <<cb8 timl>>  <<cb8 timl>>  <<cb8 timl>> <<cb8 timl>> <<cb4 timl>>  \textEndMark "open" | \bar "||"
        \bar ":|][|:"

        \sect "K" "Mambo"

        r8 <<cb8 timl>> r8 <<cb8 timh>> <<cb4 timl>> <<cb8 timh>> <<cb8 timl>> |
        r8 <<cb8 timh>> <<cb4 timl>> <<cb8 timh>>  <<cb8 timl>> r8 <<cb8 timh>> | cymc4 \rs \rs \rs | \comp #4 | \bar "||"
        \comp #4 | \rs \rs \rs r8 cymc8 | \comp #4 | \comp #4 | \bar "||"
        \bar ":|][|:"

        \sect "L" "Pregon/Coro (campanas 2-3)" 
        \comp #4 | \comp #4 | \comp #4 | \rs \rs \rs r8 \only-last cymc8 \textEndMark "open" | \bar "||"
        \bar ":|]"

        \sect "M" "Coda (ride 2-3)" 
    \autoLineBreaksOff
        \comp #4 | \comp #4 | \comp #4 | \rs \rs \rs r8 cb8 | \bar "||"
        r4 cb4 cb4 r8 cymc8 | \comp #4 | \comp #4 | \rs \rs \rs \drag timh8 timh8 | \bar "||"
         timh4 timl4 \drag timh8 timh8 timh4 | timl4 \drag timh8 timh8 timh4 r4 |
    \autoLineBreaksOn

        \bar "|."
    }
>>
