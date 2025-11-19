\version "2.24.2"
\include "charts/common.ly"

date = #(strftime "%Y-%m-%d" (localtime (current-time)))

\header {
  title = "Baila Este Son"
  subsubtitle = "(Salsa 2-3)"
  composer = "Conjuto Rumbavana"
  instrument = "Timbales"
  tagline = \markup { "Baila Este Son - https://mikea.github.io/timbales/ - " \date }
}

\newTimbalesStaff <<
    \newDrumVoiceOne \drummode { 
        \tempo 4 = 205

        \sectionLabel "montuno 2-3"
        r1 | r1 |r1 | r4 r8 <<timh8 timl>> r4 timh4:16~ \bar "||"
        
        \sectionLabel "campana 2-3"
        \bar "[|:-||"
        timh4^> \rs \rs \rs | \comp #4 | \comp #4 | \comp #4 \textEndMark "x4" | \bar "||"
        \bar ":|]"

        \break

        \comp #4 | \comp #4 | \comp #4 | cb4 r8 timl8 r4 timh4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | cb4 r8 timh8 r4 timl4 | \bar "||"

        \sect "A" "Voz (cascara 2-3)"
        r1 | timl4 r8 timh8 r4 timh8^> timh8 | \comp #4 | \comp #4 | \bar "||"
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \bar ":|]"
        \comp #4 | \comp #4 | \comp #4 | cb4 r8 timl8 r2 | \bar "||"

        \sect "B" "Voz (cascara 2-3)"
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \bar ":|]"
        \comp #4 | \comp #4 | \comp #4 | cb4 r8 timl8 r4 timh4 | \bar "||"

        \sect "C" "Coro (cascara 2-3)"
        r1 | r4 r8 timl8 r2 | \comp #4 | \comp #4 | \bar "||"
        \bar "[|:-||"
        cb8 cb8 cb4 \rs \rs | \comp #4 | cb8 cb8 cb4 \rs \rs| \comp #4 \textEndMark "x3" | \bar "||"
        \bar ":|]" 
        \break
        cb8 cb8 cb4 \rs \rs | \comp #4 | cb8 cb8 cb4 \rs \rs| r8 cb8 cb8 cb8 cb8 cb8 cb8 cb8 | \bar "||"

        \sect "D" "(campana 2-3)"
        \comp #4 | \comp #4 | \comp #4 | cb4 r8 timl8 r4 timh4 | \bar "||"
         r1 | timl4 r8 timh8 r4 timh8^> timh8 | 
        \bar "[|:-||"
        \sectionLabel "Coro/Pregon"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x4" | \bar "||"
        \bar ":|][|:"  

        \sect "E" "Mambo (campana 2-3)"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x3" | \bar "||"
        \bar ":|]"  
        \comp #4 | \comp #4 | \comp #4 | cb4 r8 timl8 r4 timh4 | \bar "||"
         r1 | timl4 r8 timh8 r4 timh8^> timh8 | 

        \sect "F" "Montuno (campana 2-3)"
        r1 | r1 |
        \comp #4 | \comp #4 |
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x3" | \bar "||"
        \bar ":|][|:" 

        \break
        \rs cymc4 cymc4 \rs | \comp #4 | \comp #4 | \comp #4 \textEndMark "x3" | \bar "||"
        \bar ":|]"
        \comp #4 | \comp #4 | \comp #4 | cb4 r8 timl8 r4 timh4 | \bar "||"
         r1 | timl4 r8 timh8 r4 timh8^> timh8 | 

        \sect "G" "Coro/Solos (campana 2-3)"
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x5" | \bar "||"
        \bar ":|]"

        \sect-no-break "H" "(campana 2-3)"
        \comp #4 | \comp #4 |
        \bar "[|:-||"
        \sectionLabel "Pregon/Coro"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x4" | \bar "||"
        \bar ":|]"

        \sect "Ending" "(campana 2-3)"
        \comp #4 | \comp #4 | \comp #4 | cb4 r8 timl8 r4 timh4 | \bar "||"
         r1 | timl4 r8 timh8 r4 timl4 | 

        \bar "|."
    }
>>
