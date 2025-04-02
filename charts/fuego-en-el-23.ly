\version "2.24.2"
\include "charts/common.ly"

date = #(strftime "%Y-%m-%d" (localtime (current-time)))

\header {
  title = "Fuego en el 23"
  composer = "La Sonora Poncena"
  subsubtitle = "(Cha-Cha-Cha)"
  poet = "Timbales"
  tagline = \markup { "Fuego en el 23 - https://github.com/mikea/timbales - " \date }
}

\newTimbalesStaff <<
    \newDrumVoiceOne \drummode { 
        \override Score.BarNumber.break-visibility = ##(#f #t #t)

        % intro
        \textMark "2-3 cascara"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \rs \rs \rs timl4^> | \comp #4 | \rs \rs \rs timl4^> |
        \bar "||" 


        % A
        \sect "A" ""
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        timl4^> r2 timl4:16~ | 
        \bar "||" 

        % B
        \sect "B" "3-2 cascara"
        timl4^> \rs \rs \rs | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | \rs \rs \rs timl4:16~ |
        \bar "||" 


        % C
        \sect "C" "2-3 cascara"
        timl4^> \rs \rs \rs | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 |  \rs \rs \rs timl4:16~ | 
        \bar "||" 

        % D
        \sect "D" ""
        timl4^> \rs \rs \rs | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | 
        \bar "||" 
        \sectionLabel "Coro"
        \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar "||" 

        % E
        \sect "E" ""
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | 
        \bar "||" 

        % F
        \sect "F" ""
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | cb4^> cb4^> r4 cb4^> | r8 cb4 cb4 cb8 cb4 |
        \bar "||" 

        % G
        \sect "G" ""
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | \comp #4 | r8 cb4 cb4 cb8 cb4 |
        \bar "||" 

        % H
        \sect "H" "Coro"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar "||" 
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |

        \sect "I" "Coro (3x)"
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar ":|]"
        \sectionLabel "Last Coro"
        \set Score.currentBarNumber = 1
        \comp #4 | \comp #4 | \comp #4 | \rs \rs \rs timh4:16~ |

        \break
        \rbar
        \sectionLabel "Mambo (4x)"
        \bar "[|:-||" 
        timh4^> \rs \rs \rs | \comp #4 | timh4^> r4 r2 | timl4 timl8 timl8 r8 timl8 timl4 | 
        \bar ":|][|:"
        \rbar
        timh4^> \rs \rs \rs | \comp #4 | \comp #4 | \comp #4 | \comp #4 | \rs \rs \rs timh4:16^"1st time" | 
        \bar ":|]"

        % J
        \sect "J" "Bass Solo"
        r1 | r1 | r1 | r2 r4 timh4^> |
        \bar "||" 

        % K
        \sect "K" "Mona"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar "||" 


        % L
        \sect "L" "Coro"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar "||" 
        \sectionLabel "Guia / Pregon"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar "||" 

        % M
        \sect "M"  "Coro (3x)"
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar "||" 
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar ":|]"
        \sectionLabel "Last Coro"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        
        \break
        \rbar
        \bar "[|:-||"
        \sectionLabel "Mona + Tr."
        \textMark "ride"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar ":|]"
        \textMark "bell"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar "||" 

        % N
        \sect "N" "Guia"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |

        % O
        \sect "O" "Coro"
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \sectionLabel "Guia"
        \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar ":|]"

        \break
        \rbar
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 |
        
        \fine
    }
>>
