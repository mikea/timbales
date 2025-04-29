\version "2.24.2"
\include "charts/common.ly"

date = #(strftime "%Y-%m-%d" (localtime (current-time)))

\header {
  title = "Numero 6"
  composer = "Bobby Rodrigues & La Compania"
  subsubtitle = "(Salsa)"
  instrument = "Timbales"
  tagline = \markup { "Numero 6 - https://github.com/mikea/timbales - " \date }
}

\newTimbalesStaff <<
    \newDrumVoiceOne \drummode { 
        % \tempo 4 = 175

        % intro
        \textMark "2-3 cascara"
        \partial 4 { timh4^> }
        \bar "[|:"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar ":|]"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |

        \bar "[|:-||"

        % A
        \sect "A" "Boz"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar "||"

        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar "||"

        % B
        \sect "B" ""
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | 

        \bar ":|]"

        \fine
    }
>>
