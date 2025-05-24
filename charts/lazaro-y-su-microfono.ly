\version "2.24.2"
\include "common/all.ly"
\include "charts/common.ly"

date = #(strftime "%Y-%m-%d" (localtime (current-time)))

\header {
  title = "Lazaro y su Microfono"
  composer = "Mayito Fernandez"
  subsubtitle = "(Cha-Cha-Cha)"
  instrument = "Timbales"
  tagline = \markup { "Lazaro y su Microfono - https://github.com/mikea/timbales - " \date }
}

\newTimbalesStaff <<
    \newDrumVoiceOne \drummode { 
        \tempo 4 = 108

        \partial 4 timh4^> |
        % intro
        \bar "[|:" 
        \comp #4 | \comp #4 | \comp #4 | cb8 cb8 cb4 \ruff timh8 timh8 timh16 timh16 r8 |
        \bar "||" 
        \sectionLabel "piano"
        \comp #4 | \comp #4 | cb8 cb8 cb8 <<timl8 timh8>> r8 <<timl8 timh8>> r8 <<timl8 timh8>> | r4 r8 <<timl8 timh8>> r8 <<timl8 timh8>> timh4:16~ |
        \bar "||" 

        \sect "A" ""
        timh4^> \rs \rs \rs | \comp #4 | \comp #4 | cb8 8 8 8 8 timl timh4^> |
        \drag timl4 \rs \rs \rs | \rs \rs \drag timl4 timl4 | timl4 r2. | \ruff timh4 r4 \ruff timh8 timh8 timh8 timh8 |
        \bar "||"

        \sect "B" ""
        timl4 \rs \rs \rs | \rs \rs timl8 timl timh timh | timl8 timl^> \rs \rs \rs | cb8 8 8 8 8 timl timh4^> |
        \drag timl4 \rs \rs \rs | \rs \rs timl8 timl8 r8 timl8 | r4 r4 r8 \ruff timh8 timh4 | timl4 r8 timh4.^> timh4:16 |

        \bar ":|][|:" 

        \repeat volta 2 {
          % C
          \sect "C" "Coro (open)"
          \comp #4 | \comp #4 | \comp #4 | \rs cb8 8 8 8 8 8 |
          \comp #4 | \comp #4 | \comp #4 | r8 cb8 cb4 r8 cb8 cb4 |
          \bar "||" 

          \sect "D" "Flute solo"
          \ruff timh4^> \rs \rs \rs | \comp #4 | \comp #4 | \comp #4 |
          \comp #4 | \comp #4 | \comp #4 |

          \alternative {
            \volta 1 { \abanico-short }
            \volta 2 { \rs \rs \rs \drag timh8 8 }
          }
        }

        \bar ":|][|:" 

        \sect "E" "Piano Solo (open)"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar ":|]" 
        \rbar
        \comp #4 | cb16 cb16 cb16 cb16 cb4 cb16 cb16 cb16 cb16 cb4 |

        \sect "F" "Mambo"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |

        \sect "G" "Coro/Pregon"
        \bar "[|:-||" 
        \textMark "1st time" \ruff timh4^> \rs \rs \rs  | \comp #4 | \comp #4 | \comp #4 |

        \bar ":|][|:" 

        \sect-no-break "H" "Coro/Flute Solo"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar ":|]" 

        \sect "I" "Flute Solo II"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |

        \sect "J" "Coro (open)"
        \bar "[|:-||" 
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar ":|][|:" 
        \rbar
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar ":|]" 

        \sect "K" "Coda (on cue)"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \rbar
        \bar "[|:-||" 
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar ":|]" 
        \rbar
        \comp #4 | timh8 timh8 r8 timh4 timh8 timh4 | r4 r8 timh8 timh4 r8 timh16 timh16 | timh4 r2. |

        \fine
    }
>>
