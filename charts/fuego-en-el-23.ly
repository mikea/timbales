\version "2.24.2"
\include "charts/common.ly"

date = #(strftime "%Y-%m-%d" (localtime (current-time)))

\header {
  title = "Fuego en el 23"
  composer = "La Sonora Poncena"
  subsubtitle = "(Salsa)"
  instrument = "Timbales"
  tagline = \markup { "Fuego en el 23 - https://github.com/mikea/timbales - " \date }
}

\newTimbalesStaff <<
    \newDrumVoiceOne \drummode { 
        \tempo 4 = 175

        % intro
        \textMark "2-3 cascara"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \rs \rs \rs cymc4^> | \comp #4 | \rs \rs \rs cymc4^> |
        \bar "||" 


        % A
        \sect "A" ""
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        timh4^> r2 timh4:16~ | 
        \bar "||" 

        % B
        \sect "B" "3-2 cascara"
        timl4^> \rs \rs \rs | \comp #4 | \rs r8 cymc8 \rs r8 cymc8 | \comp #4 |
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | \drag timh4 r8 timh8^> r4 timh4:16~ |
        \bar "||" 


        % C
        \sect "C" "2-3 cascara"
        timl4^> \rs \rs \rs | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \rs r8 timh8^> r4 timl4:16~ | 
        \bar "||" 

        % D
        \sect "D" ""
        timl4^> \rs \rs \rs | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | 
        \bar "||" 
        \sectionLabel "Coro"
        \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar "||" 
        \comp #4 | \comp #4 | \comp #4 | \rs \rs r8 cymc8 cymc4 |
        \bar "||" 

        % E
        \sect "E" ""
        cymc4 \rs \rs \rs | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \rs r8 cymc4 cymc4 cymc8~ | cymc4 \rs \rs \rs | \comp #4 |
        \comp #4 | \comp #4 | 
        \bar "||" 

        % F
        \sect "F" "Piano"
        \comp #4 | \comp #4 | \comp #4 | \rs <<timl4 timh4>> r4 timh4^> |
        \sectionLabel "Coro"
        \bar "||" 
        \rs \rs \rs \rs | \comp #4 | cb4^> cb4^> r4 cb4^> | r4 r8 timh8^> r4 timh4:16~ |
        \bar "||" 

        % G
        \sect "G" "Horns"
        \textMark "bell"
        timh4 \rs \rs \rs | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4  | <<timl4 timh4>> r4 r4 <<timl4 timh4>> | | r4 r8 timh8^> r4 timh4:16~ |
        \bar "||" 

        % H
        \sect "H" "Coro"
        timl4^> \rs \rs \rs | \comp #4 | \comp #4 | \comp #4 |
        \bar "||" 
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |

        \sect "I" "Coro (3x)"
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \sectionLabel "Pregon"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar ":|]"
        \sectionLabel "Last Coro"
        \rbar
        \comp #4 | \comp #4 | \comp #4 | \rs \rs \rs timh4:16~ |

        \break
        \rbar
        \sectionLabel "Mambo (4x)"
        \bar "[|:-||" 
        timh4^> \rs \rs \rs | \comp #4 | timh4^> r4 r2 | timl4 timl8 timl8 r8 timl8 timl4 | 
        
        \bar ":|][|:"
        \rbar
        timh4^> \rs \rs \rs | \comp #4 | \comp #4 | \comp #4 | cb8 cb8 cb8 cb8 r4 r4 | r4 r8 timh8^> r4 timh4:16^"1st time only" | 
        \bar ":|]"

        % J
        \sect "J" "Bass Solo"
        \textMark "cascara"
        r1 | r1 | r1 | r4 r8 timh8^> r4 timh4:16~ |
        \bar "||" 

        % K
        \sect "K" "Mona"
        \textMark "cascara"
        timh4^> \rs \rs \rs | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | <<timl4 cb4>> r4 r4 <<timl4 cb4>> | r4 r8 timh8^> r4 timh4:16~ |
        \bar "||" 


        % L
        \sect "L" "Coro"
        \textMark "bell"
        timh4^> \rs \rs \rs | \comp #4 | \comp #4 | \comp #4 |
        \bar "||" 
        \sectionLabel "Pregon"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar "||" 

        % M
        \sect "M"  "Coro (3x)"
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar "||" 
        \sectionLabel "Pregon"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar ":|]"
        \sectionLabel "Last Coro"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        
        \break
        \rbar
        \bar "[|:-||"
        \sectionLabel "Mona + Tr. (open)"
        \textMark "ride"
        cymc4 \rs \rs \rs | \comp #4 | \comp #4 | \comp #4 |
        \bar ":|]"

        % N
        \sect "N" "Guia/Coro"
        \textMark "bell"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |

        % O
        \sect "O" "Pregon"
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \sectionLabel "Coro"
        \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar ":|]"

        % out
        \break
        \rbar
        \sectionLabel "Out"
        \textMark "cascara"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \rs \rs \rs cymc4 | \comp #4 | \rs \rs \rs cymc4 |
        ssh4 ssh4 ssh4 ssh4 | ssh4 r8 timh^8 r4 <<timl4 timh4>> |
        
        \fine
    }
>>
