\version "2.24.2"
\include "charts/common.ly"

date = #(strftime "%Y-%m-%d" (localtime (current-time)))

\header {
  title = "Escucha el Ritmo"
  subsubtitle = "(Cha-Cha-Cha)"
  composer = "Spanish Harlem Orchetra"
  instrument = "Timbales"
  tagline = \markup { "Escucha el Ritmo - https://mikea.github.io/timbales/ - " \date }
}

\newTimbalesStaff <<
    \newDrumVoiceOne \drummode { 
        \tempo 4 = 133

        % intro
        timl4 timl8 timh8 r8 timl8 timl8 timh8 | r4 r8 timl8 <<timl8 timh8>> <<timl8 timh8>> r4 |
        \bar "||"

        \sectionLabel "Piano + Guiro"
        r1 | r1 | r1 | r8 timl8 timl8 timl8 timh4^> timh4:32 |
        \comp #4 | \comp #4 | \comp #4 | 
        r16 timh16 timh8  timh8 timh8   timh8^> timl8   timl8 timl8 |


        \ssect "Horns"
        \bar "[|:-||"

        \repeat volta 2 {
          cymc4 \rs \rs \rs | \comp #4 | \comp #4 |
          \alternative {
            \volta 1 { \rs \rs r8 cymc8 cymc4  \bar ":|]" | }
            \volta 2 { \rs \rs timh4^> timh4:32 \bar "||" | }
          }
        }
         
        

        \ssect "Coro & Horn Solo"

        \comp #4 | \comp #4 | \comp #4 | \comp #4 \bar "||"
        \comp #4 | \comp #4 | \comp #4 | r8 timh8^> timh4^> timh4^> timh4^> \bar "||"
        
        \ssect "(open)"
        \bar "[|:-||"
        \repeat volta 2 {
          \textMark "1st" \drag timl4 timh4^> r8 cb8 cb8 cb8 | 
          cb8 cb8 cb8 cb8 cb8 timh8^> \drag timh8 timh8 | \comp #4 | 
          \alternative {
            \volta 1 { \comp #4 |  }
            \volta 2 { \rs r8 timl8 timh4^> timh4:32 | }
          }
        }

        \bar ":|][|:" 

        \ssect "Coro/Pregon (open)"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar ":|]"
        \sectionLabel "last coro (on cue)" \rbar
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar "||"
        <<timl8 cb8>> <<timl8 cb8>> <<timl4 cb4>> r2 | r8 <<timl4 cb4>> <<timl8 cb8>> r4 <<timl8 timh8>> <<timl8 timh8>> |

        \ssect "Piano (open) cascareo"
        \bar "[|:-|"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar ":|]"
        \sectionLabel "on cue (melody)" \rbar
        \comp #4 | \comp #4 | \rs \rs \rs r8 timh8^> | r8 <<timl4 cb4>> <<timl8 cb8>> r4 \drag timh8 cymc8~ |
        \bar "||"


        \ssect "Mambo"
        \textMark "bell"
        cymc4 \rs \rs \rs | \comp #4 | \comp #4 | \rs \rs r8 timl8 8 8 |
        \bar "[|:" 
        \rbar
        cymc4 \rs \rs \rs | \comp #4 | \rs \rs \drag timh8 cymc8 r4 | \rs \rs r8 \textMark "1st time" timh16 16 timl8 8 |
        \bar ":|]"
        \rbar
        r8 <<timl8 cb8>> <<timl8 cb8>> <<timl8 cb8>> r8 <<timl8 cb8>> <<timl8 cb8>> <<timl8 cb8>>  | r8 <<timl4 cb4>> <<timl8 cb8>> r2
        \break
        \rbar
        \bar "||"
        cymc4 r4 r2 | r8 cb8 cb8 timl8  cb8 cb8 timl8 cb8 | timl8 cb8 cb4 r2 | r8 cb8 cb8 timl8  cb8 cb8 timl16 cb8 cb16 |
        \bar "||"
        cb4 r4 r2 | r8 cb8 cb8 timl16 cb8 cb16 cb8 timl8 cb8 | timl8 cb8 cb4 r2 | r8 cb8 cb8 r4 cb8 cb4 |

        \ssect "Coro / Perc Solos (open)"
        \bar "[|:-||" 
        cymc4 \rs \rs \rs | \comp #4 | r8 cymc8 8 r8 \rs \rs | \rs \rs r8 cymc8 4|
        \bar ":|][|:" 

        \ssect "Mona"
        cymc4 \rs \rs \rs | \comp #4 | \comp #4 | \rs \rs \rs timh4:32 ^"2nd time" |
        \bar ":|][|:" 

        \ssect "Coro / Pregon (open)"
        \comp #4 | \comp #4 | \comp #4 | \textMark "fill out" \comp #4 |
        \bar ":|][|:" 

        \ssect "Coda"
        cymc4 \rs \rs \rs | \comp #4 | \comp #4 | \comp #4 |
        \bar ":|]"
        \rbar
        cb8 cb8 cb4 r2 | r8 cb8 r4 r4 cb8^> cb8^> | 
        
        \fine
    }
>>
