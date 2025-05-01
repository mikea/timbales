\version "2.24.2"
\include "charts/common.ly"

date = #(strftime "%Y-%m-%d" (localtime (current-time)))

\header {
  title = "Usted Abuso"
  composer = ""
  subsubtitle = "(Salsa)"
  instrument = "Timbales"
  tagline = \markup { "Usted Abuso - https://github.com/mikea/timbales - " \date }
}

\newTimbalesStaff <<
    \newDrumVoiceOne \drummode { 
        % \tempo 4 = 175

        % intro
        \textMark "cascara 2-3"
        \partial 4 { timh4^> }
        \bar "[|:"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar ":|]"
        \comp #4 | \comp #4 | \comp #4 | \abanico-short |

        \bar "[|:-||"

        % A
        \sect "A" "Voz"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar "||" \rbar

        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar "||"

        % B
        \sect "B" ""
        cymc4 \rs \rs \rs | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar "||" \rbar \break
        cymc4 \rs \rs \rs | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \abanico-short | 

        \bar ":|]"


        % C
        \sect "C" ""
        <<timl4 timh4^> >> r4 r2 | r1 | r1 | r1 | r1 | r1 | r1 | r4. timh4.^> timh4:16 
        \bar "||"
        \ssect "campanas"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | \comp #4 | \rs r8 cymc4 cymc4 cymc8 |

        \bar "[|:-||"

        % D
        \sect "D" "Coro/Pregon (open)"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |

        \bar ":|][|:"

        % Mambo
        \sect "Mambo" "cymbal cascara"
        \textMark "1st" cymc4 \rs \rs \rs | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | \comp #4 | \textMark "2nd" \abanico |

        \bar ":|][|:"

        % E
        \sect "E" "campanas"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar ":|]"
        \ssect-no-break "cascara"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |

        \bar "||"

        % F
        \sect "F" ""
        <<timl4 timh4^> >> r4 r2 | r1 | r1 | r1 | r1 | r1 | r1 | \textMark "ab." r1

        \bar "||"

        \sect-no-break "C2" "campanas"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | \comp #4 | \textMark "cym" \comp #4 |

        \bar "[|:-||"

        % D
        \sect "D2" "Coro/Pregon (open)"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | \comp #4 | \rs \rs r8 \textMark "last" timh8 timl4 |

        \bar ":|]"

        \ssect "cascara"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | <<timl4 timh4^> >> r4 r2

        \fine
    }
>>
