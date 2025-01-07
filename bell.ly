\version "2.24.2"

\header {
  title = "Bell Patterns"
}

%% 2-3


\new DrumStaff \with {
    instrumentName = "Timbales"
    drumStyleTable = #timbales-style
    \override StaffSymbol.line-count = #2
} <<
    \new DrumVoice { \voiceOne \drummode { 
        \sectionLabel "2-3"
        \bar ".|:" 
        cb4 cb4 cb8 cb8 r8 cb8 | cb4 cb8 cb8 r8 cb8 r8 cb8 
        \bar ":..:"
        cb4 cb4 cb8 cb8 cb8 cb8 | r8 cb8 cb8 cb8 r4 cb8 cb8 
        \bar ":..:"
        \break
        cb4 cb4 cb8 cb8 r8 cb8 | r8 cb8 cb8 cb8 cb4 cb8 cb8
        \bar ":..:"
        cb4 cb4 cb8 cb8 r8 cb8 | r8 cb8 cb8 cb8 r8 cb8 r8 cb8
        \bar ":..:"
        \break
        cb4 cb4 cb4 cb8 cb8 | r8 cb8 cb8 cb8 cb4 cb8 cb8
        \bar ":..:"
        cb8 cb8 cb4 cb8 cb8 cb8 cb8 | r8 cb8 cb8 cb8 cb4 cb8 cb8
        \bar ":..:"
        \break
        cb4 cb4 cb8 cb8 r8 cb8 | cb4 cb8 cb8 cb4 cb8 cb8
        \bar ":..:"
        cb4 cb4 cb4 cb8 cb8 | cb4 cb8 cb8 cb4 cb8 cb8
        \bar ":..:"
        \break
        cb4 cb4 cb4 cb4 | cb4 cb8 cb8 r8 cb8 r8 cb8
        \bar ":..:"
        cb4 cb4 cb8 cb8 cb8 cb8 | cb4 cb8 cb8 cb4 cb8 cb8
        \bar ":|."
    }}
    \new DrumVoice { \voiceTwo  \drummode {
        r4 ssl ssl r | ssl4. ssl8 r4 ssl4 |
        r4 ssl ssl r | ssl4. ssl8 r4 ssl4 |
        r4 ssl ssl r | ssl4. ssl8 r4 ssl4 |
        r4 ssl ssl r | ssl4. ssl8 r4 ssl4 |
        r4 ssl ssl r | ssl4. ssl8 r4 ssl4 |
        r4 ssl ssl r | ssl4. ssl8 r4 ssl4 |
        r4 ssl ssl r | ssl4. ssl8 r4 ssl4 |
        r4 ssl ssl r | ssl4. ssl8 r4 ssl4 |
        r4 ssl ssl r | ssl4. ssl8 r4 ssl4 |
        r4 ssl ssl r | ssl4. ssl8 r4 ssl4 |
    }}
>>
