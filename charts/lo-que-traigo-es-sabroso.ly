\version "2.24.2"
\include "charts/common.ly"

date = #(strftime "%Y-%m-%d" (localtime (current-time)))

\header {
  title = "Lo Que Traigo Es Sabroso"
  subsubtitle = "(Salsa)"
  composer = "Eddie Palmieri"
  instrument = "Timbales"
  tagline = \markup { "Lo Que Traigo Es Sabroso - https://mikea.github.io/timbales/ - " \date }
}

\newTimbalesStaff <<
    \newDrumVoiceOne \drummode { 
        \tempo 4 = 220

        timh8^> r8 r4 r2 |

        \sect-no-break "Intro" "(double cascara 2-3)"
    \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
    \bar ":|]"
        \comp #4 | \comp #4 | timl4 timl8 timl8 r8 timl8 r8 timl8 | r4 r8 timh8^> r2 | \bar "||"

        \sect "A" "Coro (cascara 2-3)"
    \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x4" | \bar "||"
    \bar ":|]"
        \clave-shift \rs \rs \rs timh4^>

        \sect "B" "Voz (cascara 3-2)"
        \comp #4 | \comp #4 | \rs r8 timh8^> r8 timh8^> r8 timh8^> | timh8^> timl8 timl8 cymc4. r4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"

        \sect "C" "Voz (cascara 3-2)"
    \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x3" | \bar "||"
    \bar ":|]"

        \comp #4 | \comp #4 | \clave-shift \comp #4 |
        \sect "D" "Coro (cascara 2-3)"
    \bar ":|][|:"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x4" | \bar "||"
    \bar ":|]"

        \sect "E" "Mona Pregon/Coro (campana 2-3)"
    \bar ":|][|:"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x6 (piano cue)" | \bar "||"
    \bar ":|]"

        \sect "F" "12/8"
    \bar ":|][|:"
        \comp #4 | \comp #4 | \comp #4 | \only-last \abanico-long \textEndMark "x6" | \bar "||"
    \bar ":|]"

        \sect "G" "Flute Solo (campana 2-3)"
    \bar ":|][|:"
        \comp #4 | \comp #4 | \rs r8 \only-last  <<timh8 timl>> r8  <<timh8 timl>> <<timh4^> timl>> | \abanico-long \textEndMark "open" | \bar "||"
    \bar ":|]"

        \sect "H" "Mona/Timbal Solo"
    \bar ":|][|:"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "open" | \bar "||"
    \bar ":|]"

        \sect "I" "Mona Pregon/Coro (campana 2-3)"
    \bar ":|][|:"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x5" | \bar "||"
    \bar ":|]"

        \sect "Coda" "(cascara 2-3)"
    \bar ":|][|:"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
    \bar ":|]"
        \comp #4 | \comp #4 |
        r8 timl8 r8 timl8 timl4 timl4 | timh4^> 

        \fine
    }

    \newDrumVoiceThree \drummode { 
        s8 \ghost tomh8 s8 \ghost tomh8 s8 \ghost tomh8 \ghost tomh4
    }

>>
 