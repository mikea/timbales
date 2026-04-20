\version "2.24.2"
\include "charts/common.ly"

date = #(strftime "%Y-%m-%d" (localtime (current-time)))

\header {
  title = "Lo Tuyo y Lo Mio"
  subsubtitle = "(Salsa)"
  composer = "Ray Barretto"
  instrument = "Timbales"
  tagline = \markup { "Lo Tuyo y Lo Mio - https://mikea.github.io/timbales/ - " \date }
}

\newTimbalesStaff <<
    \newDrumVoiceOne \drummode { 
        \tempo 4 = 187
        
        timh4^> r4 r2 ||

        \sect-no-break "Intro" "(cascara 3-2)" 
    \repeat volta 2 {
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \alternative {
            \volta 1 { \comp #4 | \comp #4 | \comp #4 | \rs \rs r8 timh8 timl4| | \bar ":|]"  } 
            \volta 2 { \comp #4 | \rs \rs \rs timh4^> | <<cb8 timl>> <<cb8 timl>> r8 <<cb8 timl>> r4 <<cb8 timh>> <<cb8^> timh>> | r1  | \bar "||"  } 
        }
    }

        \drag timh8^> timh8^> timh8^> timh8^> r8 timh8^> timh4 | 
        \drag timl8 timl8 r8 timl8 timl4 r8 timl8  |
        r8 timh8^> timh8^> timl8 r8 timh8 timl4 | 
        timh4^. timh4^. r4 timl4^.| \bar "||"


        \sect-segno "A" "Voz (cascara 3-2)" 
        \comp #4 | \comp #4 | \comp #4 | \rs \rs r8 timh8 timl8 timh8 | \bar "||"
        cymc4. cymc4. cymc4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \rs r8 cymc8 cymc4 r4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \rs \rs \rs r8 timl8| \clave-shift r8 timl8 r8 <<cb8 timh8>> <<cb8 timl8>> <<cb8 timh8>> timh4:16 | 

        \sect "B" "Voz (campanas 2-3)" 
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \bar ":|]"         
        \clave-shift \comp #4 | \inline-coda

        \sect "C" "Horns (cascara 3-2)" 
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \bar ":|]"         
        \comp #4 | \rs \rs \rs timh4^> | <<cb8 timl>> <<cb8 timl>> r8 <<cb8 timl>> r4 <<cb8 timh>> <<cb8^> timh>> | r2 r4 \flam timh4^> | \bar "||"

        \ds-al-coda 

        \sect-coda "D" "Horns (campanas 3-2)" 
        
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \rs \rs \rs <<cb8 timh>> <<cb8 timl>> |
        r4 r8 <<cb8 timl>> <<cb4 timh4>> <<cb4 timh4>> | <<cb4 timl4>> <<cb4 timh4>> <<cb4 timh4>> timh4:16 | \bar "||"

        \sect "E" "Coro 8/Pregon 4 (campanas 3-2)" 
    \autoLineBreaksOff
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x9" | \bar "||"
        \bar ":|]"         
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
         \comp #4 | \comp #4 | 
        \drag timh4 r8 <<cb8 timh>> <<cb4 timl>> <<cb4 timh>>| r8 <<cb8 timh>> <<cb4 timl>> <<cb4 timh>> r4 |\bar "||"
        \clave-shift \drag timh8^> timh8 timl8 cymc8~ cymc4 timh4:16 |
    \autoLineBreaksOn

        \sect "Mambo 1" "(campanas 2-3)" 
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \rs \rs  r8 \only-second timh8 timl timh | \bar "||"

        \sect-no-break "F" "Horns (campanas 2-3)" 
        \bar ":|][|:"
        \only-first cymc4 \rs \rs \rs | \comp #4 | \comp #4 | \rs \rs r8 cymc4. | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \bar ":|]"         
        \clave-shift <<cb4 timl>> r8 <<cb8 timh>> <<cb4 timl>> r4 |
        
        \sect "G" "Horns (campanas 3-2)" 
        \bar "[|:-||"
        \textMark "first time only" r2 r4 cymc4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x4" | \bar "||"
        \bar ":|]"         
        \comp #4 | \rs \rs \rs timh8^. timl8^. | 
        r4 r8 <<cb8 timl>> <<cb4 timh>> <<cb4 timh>> | 
        <<cb4 timl>> <<cb4 timh>> <<cb2 timh>> | \bar "||"

        \sect "H" "(campanas 3-2)" 
        <<cb4. timl>> <<cb8 timl>> r4 r8 <<cb8 timl>> |
        r4 <<cb4 timl>> <<cb4 timl>> r4 | 
        \comp #4 | \comp #4 | \bar "||"

        \bar "[|:-||"
        \sectionLabel "Coro/Pregon"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x7" | \bar "||"

    \autoLineBreaksOff

        \sect "Mambo 2" "(campanas 3-2)" 
        \bar ":|][|:"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x4" | \bar "||"
        \bar ":|]"         

        \sect-no-break "I" "Coro (campanas 3-2)" 
        \comp #4 | \comp #4 | \drag timh4 r8 <<cb8 timl>> <<cb4 timl>> timh4:16 | \comp #4 | \bar "||"
        \bar "[|:-||"
        \sectionLabel "Pregon/Coro"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x5" | \bar "||"
        \bar ":|]"         
    \autoLineBreaksOn

        \sect "E" "Ending (cascara 3-2)" 
        \comp #4 | \comp #4 | \comp #4 | \comp #4  | \bar "||"

        \comp #4 | \comp #4 | | \rs \rs \rs timh4^> | <<cb8 timl>> <<cb8 timl>> r8 <<cb8 timl>> r4 <<cb8 timh>> <<cb8^> timh>> |

        \bar "|."
    }
>>
 