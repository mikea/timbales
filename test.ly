\version "2.24.2"
\include "common/all.ly"

\new DrumStaff \with {
    drumStyleTable = #timbales-style
    \override StaffSymbol.line-count = #2
} <<
    \new DrumVoice { \voiceOne \drummode { 
        r4 r4 \tuplet 3/2 { timh8 timh8 timh8 } \tuplet 3/2 {timh8 timh8 timh8  } | timh4^> r4 r2 | 
    }}


>>
