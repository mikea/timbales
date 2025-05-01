\version "2.24.2"
\include "charts/common.ly"

date = #(strftime "%Y-%m-%d" (localtime (current-time)))

\header {
  title = "Changuito se Boto"
  subsubtitle = "(Cha-Cha-Cha)"
  composer = "Jose Luis Quintana \"Changuito\""
  instrument = "Timbales"
  tagline = \markup { "Changuito se Boto - https://github.com/mikea/timbales - " \date }
}


\newTimbalesStaff <<
    \newDrumVoiceOne \drummode { 
        % \tempo 4 = 133

        % intro

        <<timl8 timh8>> <<timl8 timh8>> r4 r2 | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | \ruff timh8 timh8 r4 r2 | \rs \rs \ruff timh8 timh8 timh4:16 |

        % A
        \sect "A" "Coro (bell)"
        \textMark "bell"
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar "||"

        % B
        \sect "B" "Sonero (cascareo)"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | \comp #4 | \abanico |
        \bar ":|]"

        % C
        \sect "C" "Coro (bell)"
        \comp #4 | | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | \comp #4 | \abanico-short |

        % D
        \sect "D" "Horns"
        \bar "[|:-||"
        \comp #4  | \comp #4 | \comp #4 | \textMark "fill out" \comp #4 |

        \bar ":|][|:" 

        % E
        \sect-no-break "E" "Coro/Pregon (open) (campanas 2-3)"
        \comp #4 | \comp #4 | \comp #4 | \textMark "fill out" \comp #4 |

        \bar ":|][|:"

        % Mambo
        \sect "Mambo" "(cymbal)"
        \repeat volta 2 {
          \comp #4 | \comp #4 | \comp #4 | 
          \alternative{
            \volta 1 { \comp #4 \bar ":|]" }
            \volta 2 { \rs r8 timh8^> r8 timh4.^> |  }
          } 
        }
        \rbar
        timh4^. timh4^. timh4^. timh4^. | r4 r8 << timl4. timh4. >> timh4:16 |

        % F
        \sect "F" "Drum Solos"

        \bar "[|:-||"
        \repeat volta 2 {
          \comp #4 | \comp #4 | \comp #4 | 
          \alternative{
            \volta 1 { \comp #4 \bar ":|]"  }
            \volta 2 { \rs \rs \rs timh4^> |  }
          } 
        }
        \rbar
        r2 timh4^> r4 | <<timl4 timh4>> <<timl8 timh8>> <<timl8 timh8>> r4 timh4:16 |
        \bar "||"

        % G
        \sect "G" "Coro (campanas 2-3)"
        \textMark "bell"
        \comp #4 | r8 timh8 8 8 8 8 <<timl4~ timh4^>~ >> | <<timl4 timh4 >> \rs \rs \rs | \abanico-short |
        \bar "[|:"
        \rbar
        \textMark "open"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar ":|][|:"

        % Mambo 2
        \sect "Mambo 2" "cymbal"
        \repeat volta 3 {
          \comp #4 | \comp #4 | \comp #4 | 
          \alternative{
            \volta 1,2 { \comp #4 \bar ":|]"  }
            \volta 3 { \rs \rs \rs timh4^>~ |  }
          } 
        }
        \bar "||"
        \rbar
        timh4 timh4^. timh4^. \tuplet 3/2 {r8 timh4^>} |
        \tuplet 3/2 {timh4^> timh8^>~} timh4 r4 timh4^>~ |
        timh4 timh4^. timh4^. r4 |
        timh4^> timh8 timh8^> r4 timh4:16 | 
        
        \bar "||"

        % H
        \sect "H" "Coro (cha-cha-cha)"
        \comp #4  | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |


        % ending
        \sect "Ending" "Horns"
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar ":|]"

        \comp #4 | \rs \rs \rs <<timl4~ cb4>> | timl1 | <<timl8 timh8>> <<timl8 timh8^> >> r4 r2 |

        \fine
    }
>>
