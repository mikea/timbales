\version "2.24.2"
\include "charts/common.ly"

date = #(strftime "%Y-%m-%d" (localtime (current-time)))

\header {
  title = "Boranda"
  subsubtitle = "(Salsa)"
  composer = "Sonora Poncena"
  instrument = "Timbales"
  tagline = \markup { "Boranda - https://mikea.github.io/timbales/ - " \date }
}

\newTimbalesStaff <<
    \newDrumVoiceOne \drummode { 
        \tempo 4 = 180

      \partial 4 \textMark "tutti" cb4:16 \fermata | \bar "||"
      r1 \fermata \textEndMark "1,2,1,2,3,4"| \bar "||"
      timl4^> r8 \textMark "trumpet" \ghost tomh8 r8 \ghost tomh8 r8 \ghost tomh8 |
      \ghost tomh2 <<timl4. timh4.>> <<timl8 timh8>> | r8 timl8 timl cymc~ cymc2 \bar "||"

      \ssect "cascara 2-3"
      \bar "[|:-||"
      \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x4" |
      \bar ":|]"
      \comp #4 | \comp #4 | \rs \rs r8 timh8 timl4 |  <<timl4. timh4.>>  <<timl4. timh4.>>  <<timl4 timh4>> |

      \sect "A" "Coro (campanas 2-3)"
      \bar "[|:-||"
      \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x4" |
      \bar ":|]"

      \sect-no-break "B" ""
      <<timl4 timh4>> <<timl8 timh8>> <<timl8 timh8>> r4 <<timl4 timh4>> | r1 |
      \textMark "piano" r1 | r1 |
      | r2 r4 timh4^> | <<timl4.^> timh4.>>  <<timl8^> timh8>> r2 | \bar "||"

      \sect-segno "C" "Sonero (cascara 2-3)"
      \bar "S.|:-||"
      \comp #4 | \comp #4 | \comp #4 | \comp #4 |
      \bar ":|."
      \comp #4 | \comp #4 | \clave-shift \comp #4 |

      \sect "D" "Piano & Bass (cascara 3-2)"
      \bar "[|:-||"
      \comp #4 | \comp #4 | \comp #4 | \comp #4 |
      \bar ":|][|:"

      \sect "E" "Coro (bolero, 1/2 time)"
      timl4. timh8 timh4 timh4 | timl4 timl4 timh2 | timl4. timh8 timh4 timh4 | timl4 timl4 timh2 |
      \bar ":|]"
      \ssect-no-break "cascara 3-2"
      \comp #4 | \comp #4 | \comp #4 | \rs <<timl4 timh4>> <<timl4 timh4>> r4 | \bar "||" 
      \clave-shift <<timl4.^> timh4.>> <<timl4.^> timh4.>> <<timl4^> timh4>> \big-coda |

      \sect "F" "Campanas 2-3"
      \bar "[|:-||"
      \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x4" |
      \bar ":|]"

      \sect-no-break "G" ""
      <<timl4 timh4>> <<timl8 timh8>> <<timl8 timh8>> r4 <<timl4 timh4>> | r1 |
      \textMark "piano" r1 | r1 |
      | r2 r4 timh4^> | <<timl4.^> timh4.>>  <<timl8^> timh8>> r2
      \jump "D.S. al Coda"

      \sect-coda "H" "Coro (campanas 2-3)"
      \bar "[|:-||"
      \comp #4 | \comp #4 | \rs \rs \rs \textMark "1st & last" r8 cymc8~ | cymc8 cb8 cb8 cymc4 cb8 cb8 cymc8~ \textEndMark "open" |       
      \bar ":|][|:"

      \sect-no-break "I" "Piano (cascara 2-3)"
      \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "open" | 

      \bar ":|][|:"

      \sect "Mambo" " (campanas 2-3)"
      cymc4 \rs \rs \rs | \comp #4 | \comp #4 | \comp #4 | \bar "||"
      \comp #4 | \comp #4 | 
      timl8 timh8 r8 timl8 timh4 timl8 timh8 | r8 timl8 timh8 timl8 r8 timh8 r4 | 
      \bar ":|]"

      <<timl4. timh4.>> <<timl4. timh4.>> <<timl4~ timh4~>> |
      <<timl8 timh8>> <<timl4. timh4.>> <<timl4. timh4.>> <<timl8 timh8>> |
      r1 | r2 r4 timh4:16 |

      \sect "J" "Coro/Pregon (campanas 2-3)"
      \bar "[|:-||"
      \comp #4 | \comp #4 | | \rs \rs \rs \textMark "1st" r8 cymc8~ | cymc8 cb8 cb8 cymc4 cb8 cb8 cymc8~ \textEndMark "open" | 

      \bar ":|][|:"

      \sect-no-break "Mona" ""
      \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x4" | 

      \bar ":|][|:"

      \sect "K" "Coro/Pregon"
      \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "open" | 

      \bar ":|]"

      \sect-no-break "Ending" "campanas 2-3"
      \comp #4 | \comp #4 | \rs \rs r8 timh8 timl4 |  <<timl4.^> timh4.>> <<timl4.^> timh4.>> <<timl4^> timh4>> | 
      timl4 timl4 timh4^> r4 | \drag timh4 timh4^> r2 |

      \bar "|."
    }
>>
