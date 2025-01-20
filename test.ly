\include "common/flam.ly"

\new DrumStaff \with {
    drumStyleTable = #timbales-style
    \override StaffSymbol.line-count = #2
} <<
    \new DrumVoice { \voiceOne \drummode { 
        \drag timh4_"R"-> timh8_"L"-> timh8_"R"-> r8 timh8_"L"-> r8 timh8_"R"-> | 
        r8 timh8_"L"-> timh4_"R"-> \tuplet 3/2 { \flam timh4_"R" \flam timh4_"R" \flam timh4_"R" } | 
    }}
>>
