\version "2.24.2"
\include "charts/common.ly"

date = #(strftime "%Y-%m-%d" (localtime (current-time)))

\header {
  title = "La Rebelion"
  composer = "Joe Arroyo"
  subsubtitle = "(Salsa)"
  instrument = "Timbales"
  meter = "2-3 clave"
  tagline = \markup { "La Rebelion - https://github.com/mikea/timbales - " \date }
}

\newTimbalesStaff <<
    \newDrumVoiceOne \drummode { 
        \tempo 4 = 210

        % intro
        \bar "[|:" 
        \textMark "Piano"
        r1 | r1 | r1 | \textMark "2nd time" timl4 timl8 timh8 r4 timh4:16 |
        
        \bar ":|][|:" 

        \break
        \repeat segno 2 {
          \rbar        
          \textMark "bell"
          \repeat volta 2 {
            \comp #4 | \comp #4 | \comp #4 | \comp #4 |
            \comp #4 | \comp #4 |

            \alternative {
              \volta 1 { | \comp #4 | \comp #4 | }
              \volta 2 { 
                { \set Score.currentBarNumber = 7 }
                | r8 <<cb4 timl4>> r8 <<cb4 timl4>> r8 <<cb8 timl8>> | r1 | 
                }
            }
          }
          
          \bar "||"
          r1 | r1 | r1 | r1 |
          \bar "||"

          % A
          \sect "A" "cascara"
          \comp #4 | \comp #4 | r8 <<cb4 timl4>> r8 <<cb4 timl4>> r8 <<cb8 timl8>> | \comp #4 |
          \comp #4 | \comp #4 | r8 <<cb8 timl8>> <<cb8 timl8>> <<cb4 timl4>> <<cb4 timl4>> <<cb8 timl8>> | \comp #4 |
          \break
          \comp #4 | \comp #4 | r8 <<cb4 timl4>> r8 <<cb4 timl4>> r8 <<cb8 timl8>> | \comp #4 |
          \comp #4 | \comp #4 | \textMark "clave breaks" r8 <<cb8 timl8>> <<cb8 timl8>> <<cb4 timl4>> <<cb8 timl8>> timh4:16 |
          \bar "||" 

          % B
          \sect "B" "bell"
          timh^4 \rs \rs \rs | \comp #4 | \comp #4 | \comp #4 |
          \comp #4 | \comp #4 | \comp #4 | \comp #4 |
          \comp #4 | \comp #4 | 
          \bar "||"
          \break
          
          \comp #4 | \comp #4 | \comp #4 | \comp #4 |
          \comp #4 | \comp #4 | 
          \bar "||" 

          \alternative {
            \volta 1 {
              \comp #4 | \comp #4 |

              \bar "[|:-||"

              % C
              \sect "C" "Mona"
              \comp #4 | \comp #4 | \comp #4 | \comp #4 |
              \bar ":|]"
            }

            \volta 2 \volta #'() {
                \section
                \sectionLabel "Out"
            }
          }
        }

        \break
        \rbar
        <<timl4 timh4^> >> <<timl4 timh4^> >> r2 | r1 | r1 | r2 r4 timh4:16 |
        \bar "||" 
        \sectionLabel "Coro"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4

        \break
        \rbar
        \sectionLabel "Coro (open)"
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar ":|][|:"

        \sectionLabel "Trumpet (open)" \rbar
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar ":|][|:"

        \break
        \rbar
        \sectionLabel "Piano (open)"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar ":|][|:"

        \sectionLabel "Coro (open)" \rbar
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar ":|][|:"

        \break
        \rbar
        \sectionLabel "Coda (on cue)"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar ":|]"
        \rbar
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |

        \fine
    }
>>
