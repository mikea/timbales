\version "2.24.2"
\include "charts/common.ly"

date = #(strftime "%Y-%m-%d" (localtime (current-time)))

\header {
  title = "Escucha el Ritmo"
  subsubtitle = "(Cha-Cha-Cha)"
  composer = "Spanish Harlem Orchetra"
  instrument = "Timbales"
  tagline = \markup { "Escucha el Ritmo - https://github.com/mikea/timbales - " \date }
}

sect = #(define-music-function (text) (string?)
  #{
    \rbar
    \break
    \sectionLabel \markup { #text }
  #}
)

\newTimbalesStaff <<
    \newDrumVoiceOne \drummode { 
        \override Score.BarNumber.break-visibility = ##(#f #t #t)

        % intro
        timl4 timl8 timh8 r8 timl8 timl8 timh8 | r4 r8 timl8 <<timl8 timh8>> <<timl8 timh8>> r4 |
        \bar "||"

        \sectionLabel "Piano"
        r1 | r1 | r1 | r8 timl8 timl8 timl8 timh4^> timh4:32~ |
        timh4^> \rs \rs \rs | \comp #4 | \comp #4 | \textMark "fill" \comp #4 |


        \sect "Trumpet"
        \bar "[|:-|"

        \repeat volta 2 {
          cymc4 \rs \rs \rs | \comp #4 | \comp #4 |
          \alternative {
            \volta 1 { \rs \rs r8 cymc8 cymc4  |  }
            \volta 2 { \rs \rs timh4^> timh4:32~ | }
          }
        }
         
        \bar ":|][|:" 

        \sect "Coro & Horn Solo (open)"

        \repeat volta 2 {
          timh4^> \rs \rs \rs | \comp #4 | \comp #4 |
          \alternative {
            \volta 1 { r8 timh8^> timh4^> timh4^> r4 |  }
            \volta 2 { \rs \rs timh4^> timh4:32~ | }
          }
        }

        \bar ":|][|:" 

        \sect "Coro/Pregon (open)"
        timh4^> \rs \rs \rs | \comp #4 | \comp #4 | \comp #4 |
        \bar ":|]"
        \sectionLabel "last coro (on cue)"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar "||"
        <<timl8 cb8>> <<timl8 cb8>> <<timl4 cb4>> r2 | r8 <<timl4 cb4>> <<timl8 cb8>> r4 \drag timh8 cymc8~ |

        \sect "Piano (open)"
        \bar "[|:-|"
        \textMark "cascara"
        cymc4 \rs \rs \rs | \comp #4 | \comp #4 | \comp #4 |
        \bar ":|]"
        \sectionLabel "on cue"
        \comp #4 | \comp #4 | \rs \rs \rs r8 timh8^> | r8 <<timl4 cb4>> <<timl8 cb8>> r4 \drag timh8 cymc8~ |
        \bar "||"


        \sect "Mambo"
        \bar "[|:-|"
        \textMark "bell"
        cymc4 \rs \rs \rs | \comp #4 | \comp #4 | \comp #4 |
        \bar ":|][|:" 
        \comp #4 | \comp #4 | \rs \rs \drag timh8 cymc8 r4 | \comp #4 |
        \bar ":|]"
        \break
        r8 <<timl8 cb8>> <<timl8 cb8>> <<timl8 cb8>> r8 <<timl8 cb8>> <<timl8 cb8>> <<timl8 cb8>>  | r8 <<timl4 cb4>> <<timl8 cb8>> r2
        \bar "[|:-|"
        cymc4 r4 r2 | r8 cb8 cb8 timl8  cb8 cb8 timl8 cb8 | timl8 cb8 cb4 r2 | r8 cb8 cb8 timl8  cb8 cb8 timl16 cb8 cb16 |
        \bar ":|][|:" 

        \sect "Perc Solo / Coro (open)"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar ":|][|:" 

        \sect "Mona"
        cymc4 r4 r2 | \comp #4 | \comp #4 | \rs \rs \rs timh4:32~ ^"2nd time" |
        \bar ":|][|:" 

        \sect "Coro / Pregon (open)"
        timh4^> \rs \rs \rs | \comp #4 | \comp #4 | \textMark "fill out" \comp #4 |
        \bar ":|][|:" 

        \sect "Coda"
        cymc4 \rs \rs \rs | \comp #4 | \comp #4 | \comp #4 |
        \bar ":|]"

        cb8 cb8 cb4 r2 | r8 cb8 r4 r4 cb8^> cb8^> | 
        
        \fine
    }
>>
