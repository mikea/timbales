\version "2.24.2"
\include "charts/common.ly"

date = #(strftime "%Y-%m-%d" (localtime (current-time)))

\header {
  title = "Yambeque"
  subsubtitle = "(Salsa)"
  composer = "Sonora Poncena"
  instrument = "Timbales"
  tagline = \markup { "Yambeque - https://mikea.github.io/timbales/ - " \date }
}

\newTimbalesStaff <<
    \newDrumVoiceOne \drummode { 
        \tempo 4 = 172

        % intro
        \partial 4. { cymc8 8 8~ } |
        cymc8 8^>~4 8 4 8^>~ | 4 8 8~8 8 4 | 8 4 8 8 timh8 timh8 cymc8^>~ | 4 \textMark "cascara 2-3" \rs \rs \rs 
        | \comp 4 | \comp 4 | \comp 4 | r8 timl8 8 cymc8 r2 |

        \bar "[|:-||"

        % A
        \sect "A" "Voz/Coro (cascara 2-3)"  
        \comp 4 | \comp 4 | \comp 4 | \comp 4 |
        \comp 4 | \comp 4 | 
        \bar "||"
        \comp 4 | \comp 4 |
        \comp 4 | \comp 4 | \comp 4 | \comp 4 |
        \bar ":|]"
        \rbar \break
        \comp 4 | \comp 4 | \comp 4 | timl4 8 8 r4 cymc4~ | \clave-shift 4 r4 r2 | 
        \bar "||"


        % B
        \sect "B" "Voz (cascara 3-2)"  
        \comp 4 | \comp 4 | \comp 4 | \comp 4 |
        r4 r8 timh16 16 8 8 timl8 timh8 | cymc4 \rs \rs \rs | \clave-shift \comp 4 | 
        
        \bar "[|:-||"
        \ssect "cascara 2-3"
        \repeat volta 2 {
          \rbar
          \comp 4 | \comp 4 | \comp 4 | \comp 4 |
          \comp 4 | 
          \alternative {
            \volta 1 { \comp 4 |  \comp 4 | \rs \rs r8 timh8^> timl4 }
            \volta 2 { \set Score.currentBarNumber = 6 \drag timh4 r4 r2 | \clave-shift r4 r2 timh4:16 | }
          }
        }

        % inter
        \ssect "campanas 3-2"
        \rbar \bar "||" \break
        \set Score.currentBarNumber = 1
        \comp4 | \comp 4 | \comp 4 | \comp 4 |
        \comp 4 | \comp 4 | \comp 4 | \comp 4 |

        % C
        \sect "C" "Coro/Pregon (open)"  
        \bar "[|:-||"
        \comp 4 | \comp 4 | \comp 4 | \comp 4 |
        \comp 4 | \comp 4 | \comp 4 | \textMark "last" r8 cb cb r cb cb timh4:16 ||

        \bar ":|][|:" 

        % D
        \sect "D" "Perc Solo"  
        \comp 4 | \comp 4 | \comp 4 | \comp 4 |
        \comp 4 | \comp 4 | \textMark "last" cb4 r8 cb8 r4 r8 cb8 | r4 cb cb timh4:16 |

        \bar ":|][|:" 

        % E
        \sect "E" "Mambo"  
        cymc4 \rs \rs \rs | \comp 4 | \comp 4 | \comp 4 |
        \comp 4 | \comp 4 | \comp 4 |  r2 r8 \textMark "1st time" \drag timh8 timh4 |

        \bar ":|]" 
        \rbar
        cb4 r4 r4 cb4 | r2 cb8 cb8 r4

        % F
        \sect "F" "Coro (a cappella)"  
         | r1 | r1 | r1 | r1
        r1 | r1 | r1 | r2 r4 timh:16 |


        % G
        \sect "G" "Coro/Pregon (3x)"  
        \bar "[|:-||"
        \comp 4 | \comp 4 | \comp 4 | \comp 4 |
        \comp 4 | \comp 4 | \comp 4 | \comp 4 |

        \bar ":|][|:" 
        \rbar \break
        \textMark "with horns" cymc4 \rs \rs \rs | \comp 4 | \comp 4 | \comp 4 |
        \comp 4 | \comp 4 | \comp 4 | \comp 4 |

        \bar ":|]" 


        % H
        \sect "H" "Coda"  
        cymc4 \rs \rs \rs | \comp 4 | \comp 4 | \comp 4 |
        \rs \rs r8 timh8 timl4 | <<timl4 timh4>> <<timl4 timh4>> <<timl4 timh4>> r4 |
        timl8 cb8 r8 timl8 cb8 r8 timl8 cb8| r8 timl8 cb8 r8 timl8 cb8 r4 | timl8 cb8 r8 timl8 cb8 r8 << timl4 cb4 >> |

        \fine
    }
>>
