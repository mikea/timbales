\version "2.24.2"
\include "charts/common.ly"

date = #(strftime "%Y-%m-%d" (localtime (current-time)))

\header {
  title = "Timbalero"
  subsubtitle = "(Salsa)"
  composer = "El Gran Combo de Purto Rico"
  instrument = "Timbales"
  tagline = \markup { "Timbalero - https://mikea.github.io/timbales/ - " \date }
}

\newTimbalesStaff <<
    \newDrumVoiceOne \drummode { 
        \tempo 4 = 220

        \sectionLabel "(cascara 3-2)"
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \bar ":|]"

        timl4 timh8 timh8 timl4 timh4 | \textMark "fill" r1 |

        \sect "A" "Voz (cascara 3-2)"
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x3" | \bar "||"
        \bar ":|]"
        \comp #4 | \comp #4 | \bar "||" \clave-shift timh4. timh8^> r2 \textEndMark "fill" | 

        \sect "C" "Voz (cascara 2-3)"
    
    \repeat volta 2 {
        \bar "[|:-||"
        \comp #4 | \rs r8 timh8^> \rs \rs | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | 
        \alternative {
          \volta 1 { \comp #4 | \bar ":|]" }
          \volta 2 { timl4 timh8 timh8 r8 timh8 r8 timh8 | \bar "||" }
        }
    }
        r8 timh8 timh4 timh4 timh4 | timl4. timh8^> r2 | \bar "||"

        \sect "D" "Coro/Pregon (campana 2-3)"
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x3" | \bar "||"
        \bar ":|]"
        \sectionLabel "Coro"
        \comp #4 | \comp #4 | \comp #4 | timh4.^> <<cb8~ timl8>> <<cb4 timl4>> <<cb4 timl4>>| \bar "||"

        \sect "E" "Timbal Solo (47 bars)"
        \override Score.BarNumber.break-visibility = ##(#f #f #t)

        % 1
        r2 timh4^> r4 | r8 timh8^> r4 r4 r8 timh8^>  | r2 timl4 r4 | r8 timh8^> r4 r2 | 
        % 5
        \tuplet 3/2 { timl4 timl4 timl4 } \tuplet 3/2 { timl4 timl4 timl4 } | r8 timh8^> r4 r2 | 
        \drag timh8^> timh8^> timh8^> timh8^> timl4 timl8 timl8  | r8 timh8^> r4 timl8 timl8 r8 timl8 | 
        % 9
        r8 timl8 timh4^> timh8^> timh8^> r8 timh8^> | r8 timh8^> timh4^> r8 timl8 r8 timl8 | 
        r8 timh8^> timh4^> r8 timl8 r8 timl8 | r8 timh8^> timh4^> r8 timl8 r8 timl8 | 
        % 13
        timh4^> r8 timh8^> r8 timl8 timl4 | r8 timl8 r8 timh8^> r8 timl8 r8 timh8^> | 
        timh4^> r8 timl8 r8 timh8^> timh4^> | r8 timl8 timl8 timl8 timl8 timl8 r8 timl8 | 
        % 17
        timl4 timl4 timl8 timl8 r4 | \drag timh8^> timh8^> timh8^> timh8^> timh4^> timl4  |
        timl4 timl4 timl8 timl8 r4 | r8 timl8 r4 r4 r8 timl8 | 
        %21
        r2 timl4 r4 | r8 \flam-art timh8^> r4 r4 r8 \flam-art timh8^>  | 
        r4 \flam-art timh4^> \flam-art timh4^> r4 | timl4 r8 timl8 r4 r8 \flam-art timh8^> | 
        % 25
        r4 \flam-art timh4^> \flam-art timh4^> r8 timl8 | timl4 r8 timl8 r4 r8 \flam-art timh8^>  | 
        timh4^> timh4^> timh4^> r8 timh8^> | timh4^> timh8^> timh8^> r8 timh8^> r8 timh8^> | 
        %29
        timh4^> timh4^> timh8^> timh8^> r8 timh8^> | r8 timh8^> timh4^> timh4^> timh4^> | 
        r8 timh8^> timh4^> timh4^> r8 timh8^>  | \tuplet 3/2 { cb8 cb8 cb8 } cb4 r8 timh8^> \tuplet 3/2 { cb8 cb8 cb8 }  | 
        % 33
        cb4 r8 timh8^> \tuplet 3/2 { timl8 8 8 } timl4| \tuplet 3/2 { timh8 8 8 } \tuplet 3/2 { timh8 8 8 } r8 timh8^> \tuplet 3/2 { timl8 8 8 } | 
        timl4 r8 timh8^> \tuplet 3/2 { timh8 8 8 } timh8 8 | \tuplet 3/2 { timh8 8 8 } timh8 8 \tuplet 3/2 { timl8 8 8 } timl8 8 | 
        % 37
        \tuplet 3/2 { timl8 8 8 } timl8 8 \tuplet 3/2 { timh8 8 8 } timh8 8 | \tuplet 3/2 { timh8 8 8 } \tuplet 3/2 { timh8 8 8 } \tuplet 3/2 { timh8 8 8 } \tuplet 3/2 { timh8 8 8 } | 
        timh4^> timh4^> timh8^> timh8^> r8 timh8^> | r8 timl8 r8 timh8^> timl4 timl8 timh8^>  | 
        % 41
        r8 timh8^> timl4 timh8^> timl8 r8 timh8^> | timl4 timh8^> timl8 r8 timh8^> r8 timl8 | 
        r8 timh8^> timl4 timl8 timl8 r4 | \drag timh8^> timh8^> timh8^> timh8^> \tuplet 3/2 { timl4 4 4 } | 
        % 45
        \tuplet 3/2 { timl4 4 4 } \tuplet 3/2 { \flam-art timh4^> timl4 4 } | 
        \tuplet 3/2 { \flam-art timh4^> timl4 4 } \tuplet 3/2 { \flam-art timh4^> timl4 4 } | 
        \clave-shift \tuplet 3/2 { \flam-art timh4^> timl4 4 }  \flam-art timh4^>  r4 | 

        \sect-segno "F" "Mambo (campana 3-2)"
        \bar "[|:-||"
        \drag timh4^> timh8^> timh8^> r8 timh8^> r8 timh8^> | r8 timh8^> timh4^> timh8^> timh8^> r8 timh8^> | 
        \comp #4 | \comp #4 |
        \bar ":|][|:"
        \drag timh4.^> timh8^> timh4^> timh4^> | r8 timh8^> timh4^> timh4.^> timh8^> | 
        timh4^> \rs \rs \rs | \comp #4 | \bar "||"
        \bar ":|][|:"
        \break
        \tuplet 3/2 { timh4^> timh4^> r4 } \tuplet 3/2 { timh4^> r4 timh4^> } | 
        \tuplet 3/2 { timl4 timl4 r4 } \tuplet 3/2 { timl4 r4 timl4 } |
        timh4^> \rs \rs \rs | \comp #4 |
        \big-coda
        \bar ":|][|:"
        \drag timh4^> r4 r4 \drag timh4^> | r2 \drag timh4^> r4 \textEndMark "x3" |
        \bar ":|]"

        \tuplet 3/2 { <<cb4 timl>> <<cb4 timl>> r4 } \tuplet 3/2 { <<cb4 timl>> <<cb4 timl>> r4 } |
        \tuplet 3/2 { <<cb4 timl>> <<cb4 timl>> r4 } \tuplet 3/2 { <<cb4 timl>> r4 <<cb4 timl>> } |

        \sect "G" "Horns (ride 3-2)"

    \repeat volta 4 {
        \bar "[|:-||"
        \comp #4 | \comp #4 |
        \alternative {
          \volta 1,2,3 { \comp #4 | \comp #4 | \bar ":|]" }
          \volta 4 { timl4. timh8^> timh4^> timh8^> timh8^> | r8 timh8^> timh4^> timh8^> timh8^> r8 timh8^> \bar "||" }
        }
    }
        \clave-shift timl4. timh8^> r2 |

        \sect "H" "Coro/Pregon (campana 2-3)"
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x6" | \bar "||"
        \bar ":|]"
        
        \comp #4 | \comp #4 | \clave-shift \comp #4 | 

        \ds-al-coda

        \sect-coda "I" "(campana 3-2)"
        \drag timh4^> r4 r4 \drag timh4^> | r2 \drag timh4^> r4 |
        \drag timh4^> r4 r4 \drag timh4^> | r2 \drag timh4^> r4 |
        \tuplet 3/2 { timh4^> timh4^> r4 } \tuplet 3/2 { timh4^> timh4^> r4 } |
        \tuplet 3/2 { timh4^> timh4^> r4 }  \tuplet 3/2 { timh4^> r4 timh4^> }  |
        timh4^> r4 r2 | timl4 timl4 timl4 timl4 | timl4^> 
        \bar "|."
    }
>>
