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
        \comp #4 | \comp #4 | \comp #4 | \rs \rs \drag timh8 timh8 timh16 timh16 r8 |
        \bar "||" 
        \sectionLabel "piano"
        \comp #4 | \comp #4 | cb8 cb8 cb8 <<timl4 timh4>> <<timl4 timh4>> <<timl8 timh8>> | r4 r8 <<timl4 timh4>> <<timl8 timh8>> timh4:16~ |
        \bar "||" 

        \sect "A" ""
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \rs \rs timh4^> timh4^> | timh4^> r2. | timh4^> r4 timh8^> timh8^> timh8^> timh8^> |
        \bar "||"

        \sect "B" ""
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \rs \rs timh8^> timh4^> timh8^> | \rs \rs timh8^> timh4^> timh8^> | r4 r8 timh4.^> timh4:16 |

        \bar ":|][|:" 

        \repeat volta 2 {
          \sect "C" "Coro (open)"
          \comp #4 | \comp #4 | \comp #4 | \comp #4 |
          \comp #4 | \comp #4 | \comp #4 | \comp #4 |
          \bar "||" 

          \sect "D" "Flute solo"
          \comp #4 | \comp #4 | \comp #4 | \comp #4 |
          \comp #4 | \comp #4 | \comp #4 |

          \alternative {
            \volta 1 { r2 r4 timh4:16 }
            \volta 2 { r2 r4 <<timl8 timh8>> <<timl8 timh8>> }
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
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |

        \bar ":|][|:" 

        \sect "H" "Coro/Flute Solo"
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
