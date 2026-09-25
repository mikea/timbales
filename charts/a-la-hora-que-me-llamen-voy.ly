\version "2.24.2"
\include "charts/common.ly"

date = #(strftime "%Y-%m-%d" (localtime (current-time)))

\header {
  title = "A La Hora Que Me Llamen Voy"
  subsubtitle = "(Salsa 2-3)"
  composer = "Jose Alberto \"El Canario\""
  instrument = "Timbales"
  tagline = \markup { "A La Hora Que Me Llamen Voy - https://mikea.github.io/timbales/ - " \date }
}

\newTimbalesStaff <<
    \newDrumVoiceOne \drummode { 
        \tempo 4 = 200
        
        \bar "[|:-||"
        \textMark "1 piano, 2 guiro, 3 bongo"
        r1 | r1 | r1 | r1 | \bar "||"
        \textEndMark "x3"
        \bar ":|]"

        \sect-no-break "A" "horns + congas" 
        r1 | r1 | r1 | r1 | \bar "||"
        r1 | r1 | r1 | <<cb4 timl>> <<cb8 timh>> <<cb4 timl>> <<cb8 timh>> <<cb4 timl>> | \bar "||"

        \sect "B" "(campanas)" 
        \bar "[|:-||"

    \repeat volta 3 {
        cymc4 \rs \rs \rs | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \rs \rs r8 timh8 timl4 | \bar "||"
        \sect "Voz" "(cascara)"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \break
        \comp #4 | \comp #4 | \rs \rs \rs r8 <<cymc8 timh8>> | r8 <<cymc8 timh8>> \rs \rs \rs | \bar "||"
        \comp #4 | \comp #4 |
        \alternative {
            \volta 1,2 { | <<cb4 timl>> r4 <<cb4 timl>> r4 | r2 \drag timh8 timh timl4 | \bar ":|]"}
            \volta 3 { | <<cb8 timl>> <<cb8 timl>> <<cb4 timl>> <<cb4 timl>> r4 | r2 r4 cymc4~ | \bar "||"}
        }
    }

        \sect "C" "(campanas)" 
        cymc4 \rs \rs \rs | \comp #4 | \comp #4 | r8 cymc8 \rs \rs \rs | \bar "||"
        r8 cymc8 \rs \rs \rs | \comp #4 | \comp #4 | \drag timh8 timh8 timh8 <<cymc8~ timh>> <<cymc4 timh>> <<cymc4 timh>> | \bar "||"
        \comp #4 | \comp #4 | \rs \rs <<cymc4 timh>> \rs  | \comp #4 | \bar "||"

        \sect "Coro/Pregon" "(campanas)" 
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \rs \rs r8 \only-last timh8 timh4 | \bar "||"
        \textEndMark "x8"
        \bar ":|]"

        \sect "Mambo" "piano + clave + congas" 
        \ruff timl4 r4 r2 | r1 | r1 | r1 | \bar "||"
        r1 | r1 | r1 | r1 | \bar "||"

        \sect "D" "(campanas)" 
        cymc4 \rs \rs \rs | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"

        \sect "E" "(campanas)" 
        \bar "[|:-||"
        cymc4 \rs \rs \rs  | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \rs \rs \drag timh8^> timh8^> \rs | \comp #4 | \bar "||"
        \bar ":|]"

        \sect "Coro/Pregon" "(campanas)" 
        \bar ":|][|:"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \textEndMark "x6"

        \sect "Mona" "(campanas)" 
        \bar ":|][|:"
        cymc4 \rs \rs \rs | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | timh8 timh8 <<cymc4 timh>> \rs \rs | \comp #4 | \bar "||"
        \bar ":|]"
        \comp #4 | \comp #4 | \textMark "Coro (aqui, aqui)" \rs \rs \rs r8 cymc8 | \comp #4 | \bar "||"

        \sect "Pregon/Coro" "(campanas)" 
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \textEndMark "x8"
        \bar ":|]"

        \sect-no-break "Coda" "(plato)" 
        cymc4 \rs \rs \rs | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \break
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | <<cb4 timh>> <<cb8 timh>> <<cb8 timh>> r8 <<cb8 timh>> <<cb4 timl>> | <<cb4 timl>> <<cb4 timl>> <<cb8 timl>> <<cymc8^. timh>> r4

        \bar "|."
    }
>>
 