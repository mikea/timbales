\version "2.24.2"
\include "charts/common.ly"

date = #(strftime "%Y-%m-%d" (localtime (current-time)))

\header {
  title = "Nací Moreno"
  subsubtitle = "(Salsa)"
  composer = "Fania All-Stars"
  instrument = "Timbales"
  tagline = \markup { "Nací Moreno - https://mikea.github.io/timbales/ - " \date }
}

\newTimbalesStaff <<
    \newDrumVoiceOne \drummode { 
        \tempo 4 = 220

        \sect "Intro" "(cascara 3-2)"
        \partial 4 timh4^> |
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"

        \comp #4 | \comp #4 | 
        \tuplet 3/2 {<<timl4 timh>>  <<timl4 timh>>  <<timl4 timh>> } \tuplet 3/2 {r4 <<timl4 timh>>  <<timl4 timh>> } |
        \tuplet 3/2 {<<timl4 timh>>  <<timl4 timh>>  r4} <<timl4 timh>>  r4 | \bar "||"
        \break
        \textMark "piano" r1 | r1 | r1 | r1 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | <<timh4. timl>> <<timh8 timl>> r8 <<timh8 timl>> <<timh4 timl>> | r2 r4 timh4^> | \bar "||"

        \sect "A" "Voz (cascara 3-2)"
        \bar "[|:-||"
    \repeat volta 2 {
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | 
        \alternative {
            \volta 1 { \comp #4 | \bar ":|]" }
            \volta 2 { timl4 timh4 r2 | \bar "||" }
        }
    }
        

        \sect "B" "Voz (cascara 3-2)"
        \bar "[|:-||"
    \repeat volta 2 {
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | 
        \alternative {
            \volta 1 { \comp #4 | \bar ":|]" }
            \volta 2 { timl4 timh4 r8 timh8 timl4 | \bar "||" }
        }
    }

        \sect "C" "Voz (cascara 3-2)"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | timl4 r4 timl4 r4 | \bar "||"
         <<timl4.  timh>> <<timl8 timh>> <<timl4 timh>> <<timl4 timh>>| r2 r4 timh4^> |

        \sect "D" "Coro (campana 3-2)"
    \autoLineBreaksOff
        <<timl4. cb>> <<timl8 cb>> <<timl4 cb>> <<timl4 cb>> | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \rs \rs \rs \textMark"horns" tomh4 \startTextSpan |
        r4 tomh4 8 8 r8 tomh8 |  \bar "||"
        r8 tomh8 r8 tomh8 tomh4 r4 |
        r2 r8 tomh8 r8 tomh8 |
        | r8 tomh8 r8 tomh8 tomh4 tomh4~   | tomh2 \stopTextSpan \rs \rs |\bar "||"
    \autoLineBreaksOn

        \sect "E" "Coro/Pregon (campana 3-2)"
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
         
        \rs r8 \textMark "last pregon only" cb \startTextSpan cb cb cb cb | cb4 \rs \rs \rs | \rs r8 cb cb cb cb cb | cb4 \stopTextSpan \rs \rs \rs | \bar "||"
        \break
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x4" | \bar "||"
        \bar ":|]"
        \textMark "Last Coro"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"

        \sect "F" "Piano Solo (cascara 3-2)"
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "open" | \bar "||"
        \bar ":|]"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | <<timh4. cb>> <<timh8 cb>> <<timh4. cb>> <<timh8 cb>>  | r8 <<timh8 cb>>  r4 r2 | \bar "||"

        \sect "G" "Horns (campana 3-2)"
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x4" | \bar "||"
        \bar ":|]"
        \comp #4 | \comp #4 | \drag timh4 r4 <<timl4 timh>> r4  | <<timl4 timh>> r4 r2 | \bar "||"

        \sect "DS 1" "Coro/Pregon (campana 3-2)"
        \bar "[|:-||"        
        \only-first <<timl4. cb>> <<timl8 cb>> <<timl4 cb>> <<timl4 cb>> | \comp #4 | \comp #4 | \comp #4 \textEndMark "x10" | \bar "||"

        \bar ":|][|:"

        \sect-no-break "Coda 1" "Horns (campana 3-2)"
        \comp #4 | \rs \rs \rs \textMark "1st: transition to ride" timh4^> | \comp #4 | \comp #4 \textEndMark "x8" | \bar "||"

        \bar ":|][|:"

        \sect "DS 2" "Coro/Solos/Pregon (campana 3-2)"
        % \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x10" | \bar "||"

        \bar ":|]"

        \sect "Coda 2" "Horns (cascara 3-2)"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
         \comp #4 | \comp #4 | 
        \tuplet 3/2 {timl4 timl4 timl4^>} \tuplet 3/2 {r4 timl4 timl4} |
        \tuplet 3/2 {timl4 timl4 r4} timh4^> r4 | \bar "||"
        \tuplet 3/2 {timl4 timl4 timl4^>} r2 |
        
        \bar ".."
    }
>>
