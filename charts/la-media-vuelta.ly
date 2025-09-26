\version "2.24.2"
\include "charts/common.ly"

date = #(strftime "%Y-%m-%d" (localtime (current-time)))

\header {
  title = "La Media Vuelta"
  subsubtitle = "(Salsa)"
  composer = "Spanish Harlem Orchestra"
  instrument = "Timbales"
  tagline = \markup { "La Media Vuelta - https://mikea.github.io/timbales/ - " \date }
}

\newTimbalesStaff <<
    \newDrumVoiceOne \drummode { 
      \tempo 4 = 200
      \partial 4. timh8 timl8 timh8 |
      \sectionLabel "cascara 3-2"

      \comp #4 | \comp #4 | \comp #4 | \comp #4  | \bar "||"
      \comp #4 | \comp #4 | \comp #4 | \comp #4  | \bar "||" \break
      cymc4 \rs \rs \rs| \comp #4 | \comp #4 | \comp #4  | \bar "||"
      <<timl4. timh4.>> <<timl8 timh8>> r8 <<timl8 timh8>> r8 <<timl8 timh8>> | \textMark "fill" \comp #4  \bar "||"

      \sect "A" "Voz (cascara 3-2)"
      \bar "[|:-||"
      \comp #4 | \comp #4 | \comp #4 | \comp #4  | \bar "||"
      \comp #4 | \comp #4 | \comp #4 | \textMark "2nd time" r8 timh8 timh8 cymc8 \rs \rs | \bar "||" \break
      \bar ":|]"

      \sect "B" "Voz (cascara 3-2)"
      \comp #4 | \comp #4 | \comp #4 | \rs \rs cymc2  | \bar "||"
      \comp #4 | \comp #4 | \comp #4 | r4 r8 timh8 timh8 cymc8 r4 | \bar "||"
      \comp #4 | \comp #4 | \comp #4 | \comp #4  | \bar "||"
      \comp #4 | \comp #4 | \comp #4 | \rs \rs timh8 timh8 r8 timh8  | \bar "||"

      \sect "C" "Voz (cascara 3-2)"
      cymc4 \rs \rs \rs | \comp #4 | \comp #4 | \comp #4  | \bar "||"
      \comp #4 | \comp #4 | \comp #4 | timh4 timh8 cymc8 \rs \rs  | \bar "||"
      \bar "[|:-||"
      \comp #4 | \comp #4 | \comp #4 | \comp #4  | \bar "||"
      \bar ":|]"

      \sect "D" "Coro (cascara 3-2)"
      \comp #4 | \comp #4 | \comp #4 | \comp #4  | \bar "||"
      <<timl4. timh4.>> <<timl4. timh4.>> cymc4| \comp #4 | <<timl4. timh4.>> <<timl4. timh4.>> cymc4 | \comp #4  | \bar "||" 
      \clave-shift <<timl4. timh4.>> <<timl8 timh8>> timh2:16 | 

      \sect "E" "campanas 2-3"
      \bar "[|:-||"
      \comp #4 | \comp #4 | \comp #4 | \textMark "2nd time" \abanico-long  | \bar "||"
      \bar ":|][|:"

      \sect-no-break "F" "Coro/Pregon (campanas 2-3)"
      \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "open" |       
      \bar ":|]"

      \sect "G" "Horns"
      cymc4 \rs \rs \rs | \comp #4 | \rs \rs \tuplet 3/2 { timh8 8 8 } \tuplet 3/2 { timh8 8 8 } | timh4.^> timh4.^> timh4:16  |       

      \sect "Mambo" ""
      \bar "[|:-||"
      \textMark "fill through" r1 | r1 | r1 | r1  | \bar "||"      
      \sectionLabel "campanas 2-3" cymc4 \rs \rs r8 cymc8~ | cymc4 r8 timh8 timh8 timh4 cymc8| 
      r8 cymc8 cymc4 cymc8 cymc4 cymc8 | r8 cymc8 r8 cymc8 \rs \rs  |       
      \bar ":|]"
      timh4 cymc4 r8 timh8 r8 timh8 | <<timh4. timl4.>> cb4. timh4:16 | 

      \sect "G" "Coro/Pregon"
      \bar "[|:-||"
      \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "open" |       
      \bar ":|][|:"

      \sect-no-break "Mona" "campana - ride"
      \ghost cymc4 \rs \rs \rs | \comp #4 | \comp #4 | \comp #4 \textEndMark "x6" |       
      \bar ":|][|:"

      \sect-no-break "G" "Pregon/Coro"
      \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "open" |       
      \bar ":|]"

      \sect "Ending" ""
      \rs \rs \rs r8 cb8 | r8 cb8 r8 cb8 r8 cb8 r8 cb8 | \abanico-long | \bar "||"
      \sectionLabel "cascara 3-2"
      cymc4 \rs \rs \rs  | \comp #4 | \comp #4 | \comp #4 | \bar "||"
      cb4. cb4 cb4 cymc8  |       
      r1 | 
      \sectionLabel "Coro"
      r1| r1| 
      r8 cb4 cb4. cb8 cymc8 |       

      \fine
    }
>>
