\version "2.24.2"
\include "charts/common.ly"

date = #(strftime "%Y-%m-%d" (localtime (current-time)))

\header {
  title = "Tirandote Flores II"
  subsubtitle = "(Salsa)"
  composer = "Eddie Palmieri"
  instrument = "Timbales"
  tagline = \markup { "Tirandote Flores II - https://mikea.github.io/timbales/ - " \date }
}

\newTimbalesStaff <<
    \newDrumVoiceOne \drummode { 
      \tempo 4 = 120

      \partial 4 \ruff timh4^> | \bar "||"
      \sect-no-break "Intro" "(campana 2-3)"

      \comp #4 | \comp #4 | \comp #4 | \comp #4  |\bar "||"
      \comp #4 | \comp #4 | \comp #4 | \rs \rs \rs \drag timh4^> |\bar "||"
      \sect "A" "Horns (campana 2-3)"
      \comp #4 | \comp #4 | \comp #4 | \comp #4 \bar "||"
      \comp #4 | \comp #4 | \rs \rs \rs \drag timh4^> | r8 <<cb8 timl8>> <<cb8 timl8>> <<cb8 timl8>> <<cb8 timl8>> <<cb8 timl8>> <<cb4^> timl4>> | \bar "||"
      
      \sect "B" "Coro (cascara 2-3)"
      \bar "[|:-||"
      \comp #4 | \comp #4 | \comp #4 | \comp #4 \bar "||"
      \comp #4 | \comp #4 | \rs \rs \rs r8 timh8^> |  | r8 <<cb8 timl8>> <<cb8 timl8>> <<cb8 timl8>> <<cb8 timl8>> <<cb8 timl8>> <<cb4^> timl4>> | \bar "||"
      \ssect "Voz (campana 2-3)"
      \ruff timh4^> \rs \rs \rs | \comp #4 | \comp #4 | \comp #4 \bar "||"
      \comp #4 | \comp #4 | \comp #4 | r4. <<cb8 timl>> <<cb4 timl>> \drag timh4^> \bar "||"
      \bar ":|]"

      \sect "C" "Coro (cascara 2-3)"
      \comp #4 | \comp #4 | \comp #4 | \comp #4 \bar "||"
      \comp #4 | \comp #4 | \comp #4 | <<cb4 timl>> r8 <<cb4.^> timl>> timh4:16 \bar "||"

      \sect "D" "Coro/Horns (campana 2-3)"
      timh4^> <<cb4 timl>> r8 <<cb8 timl>> <<cb4 timl>> | \comp #4 | \comp #4 | \comp #4 \bar "||"
      \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"

      \sect "E" "Coro/Pregon (campana 2-3)"
      \bar "[|:-||"
      \textMark "in" \ruff timh4^> \rs \rs \rs | | \comp #4 | \comp #4 | \rs \rs \rs \textMark "out" <<timl8 timh>> <<timl8 timh>> \textEndMark "x6" | \bar "||"
      \bar ":|][|:"

      \sect "F" "Piano Solo, open (cascara 2-3)"
      \comp #4 | \comp #4 | \comp #4 | \rs \rs \textMark "out" r8 timh8 timl4  | \bar "||"
      \bar ":|][|:"

      \sect-no-break "G" "Conga Solo (cascara 2-3)"
      \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "open" | \bar "||"
      \bar ":|]"

      \sect "H" "Horns (campana 2-3)"
      \comp #4 | \comp #4 | \rs \rs \rs timl4 | cb16 cb8 cb16 cb8 cb8 r8 <<cb8^> timl>> <<cb4^> timl>> | \bar "||"

      \sect-no-break "I" "Horns (campana 2-3)"
      \bar "[|:-||"
      \comp #4 | \comp #4 | \rs \rs \rs timl4 | cb16 cb8 cb16 cb8 cb8 r8 <<cb8^> timl>> <<cb4^> timl>> | \bar "||"

      \bar ":|][|:"

      \sect "J" "Coro (campana 2-3)"
      \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x4" | \bar "||"
      \bar ":|][|:"
      \sect-no-break "K" "Coro/Pregon (campana 2-3)"
      \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x4" | \bar "||"
      \bar ":|]"

      \sect "L" ""
      \comp #4 |  \rs \rs  \rs \textEndMark "piano send-off" \rs|  
      \bar "||" \textMark "Ending (campana 2-3)" \comp #4 | \comp #4 | 
      \comp #4 | \comp #4 |  \break
      \bar "||" \comp #4 | \comp #4 |
      \rs \rs \tuplet 3/2 { timh4 timh4 timh4 } | <<timh4 timl>> r8 <<timh8 timl>> r8 <<timh8 timl>> <<timh8 timl>> <<timh8 timl>> |

      \bar "|."
    }
>>
