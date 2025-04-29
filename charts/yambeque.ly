\version "2.24.2"
\include "charts/common.ly"

date = #(strftime "%Y-%m-%d" (localtime (current-time)))

\header {
  title = "Yambeque"
  subsubtitle = "(Salsa)"
  composer = "Sonora Poncena"
  instrument = "Timbales"
  tagline = \markup { "Yambeque - https://github.com/mikea/timbales - " \date }
}

\newTimbalesStaff <<
    \newDrumVoiceOne \drummode { 
        % \tempo 4 = 133

        % intro
        \partial 4. { timh8 8 8~ } |
        timh8 8~4 8 4 8~ | 4 8 8~8 8 4 | 8 4 8 4. 8~ | 4 \rs \rs \rs 
        | \comp 4 | \comp 4 | \comp 4 | r8 timh8 8 8 r2 |

        \bar "[|:-||"

        % A
        \sect "A" "Voz/Coro"  
        \comp 4 | \comp 4 | \comp 4 | \comp 4 |
        \comp 4 | \comp 4 | 
        \bar "||"
        \comp 4 | \comp 4 |
        \comp 4 | \comp 4 | \comp 4 | \comp 4 |
        \bar ":|]"
        \rbar
        \comp 4 | \rs \rs r8 timh8 8 8~ | 8 4 8~ 8 4 8 | 4 8 8 r4 timh4~ | timh4 r4 r2 | 
        \bar "||"


        % B
        \sect "B" "Verse"  
        \comp 4 | \comp 4 | \comp 4 | \comp 4 |
        \comp 4 | \comp 4 | \comp 4 | 

        \textMark "campana"
        \bar "[|:-||"

        \rbar \break
        \repeat volta 2 {
          \comp 4 | \comp 4 | \comp 4 | \comp 4 |
          \comp 4 | \comp 4 | 
          \alternative {
            \volta 1 { \comp4 \comp4 \bar ":|]" }
            \volta 2 { \rs \rs \rs timh4:16~ }
          }
        }
        \rbar
        \set Score.currentBarNumber = 8
        timh4 \rs \rs \rs | \comp 4 | \comp 4 | \comp 4 |
        \comp 4 | \comp 4 | \comp 4 | \comp 4 |

        % C
        \sect "C" "Coro/Pregon"  
        \bar "[|:-||"
        \comp 4 | \comp 4 | \comp 4 | \comp 4 |
        \comp 4 | \comp 4 | \comp 4 | \comp 4 |

        \bar ":|][|:" 

        % D
        \sect "D" "Perc Solo"  
        \comp 4 | \comp 4 | \comp 4 | \comp 4 |
        \comp 4 | \comp 4 | \comp 4 | \comp 4 |

        \bar ":|][|:" 

        % E
        \sect "E" "Mambo"  
        \comp 4 | \comp 4 | \comp 4 | \comp 4 |
        \comp 4 | \comp 4 | \comp 4 | \comp 4 |

        \bar ":|]" 

        % F
        \sect "F" "Coro (a cappella)"  
        r1 | r1 | r1 | r1 |
        r1 | r1 | r1 | r1 |


        % G
        \sect "G" "Coro/Pregon"  
        \bar "[|:-||"
        \comp 4 | \comp 4 | \comp 4 | \comp 4 |
        \comp 4 | \comp 4 | \comp 4 | \comp 4 |

        \bar ":|]" 

        % H
        \sect "H" "Coda"  
        \comp 4 | \comp 4 | \comp 4 | \comp 4 |
        \rs \rs r8 timh8 timl4 | <<timl4 timh4>> <<timl4 timh4>> <<timl4 timh4>> r4 |
        timl8 timh8 r8 timl8 timh8 r8 timl8 timh8| r8 timl8 timh8 r8 timl8 timh8 r4 | timl8 timh8 r8 timl8 timh8 r8 << timl4 timh4 >> |

        \fine
    }
>>
