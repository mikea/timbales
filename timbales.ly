\version "2.24.2"

\header {
  title = "Timbales Basic Patterns"
}

\new DrumStaff \with {
    instrumentName = "Timbales"
    drumStyleTable = #timbales-style
    \override StaffSymbol.line-count = #2
} <<
  \new DrumVoice { \voiceOne \drummode { 
    \sectionLabel "Paila (Cascara)"
    ssh4-> ssh8 ssh-> r ssh-> r ssh | ssh4-> ssh-> ssh8 ssh-> r ssh \bar "||"
    ssh4-> ssh-> ssh8 ssh-> r ssh | ssh4-> ssh8 ssh-> r ssh-> r ssh \bar "||"
  } }
  \new DrumVoice { \voiceTwo  \drummode {
    % paila 3/2
    r4 timl-+ r4 timl | r4 timl-+ r4 timl \bar "||"
    % paila 2/3
    r4 timl-+ r4 timl | r4 timl-+ r4 timl \bar "||"
  }}

\new RhythmicStaff \with {
  instrumentName = "Clave"
} {
    % 3-2
    c4. c8 r4 c4 r4 c c r \bar "||"
    % 2-3
    r4 c c r c4. c8 r4 c4 \bar "||"
}
>>

\new DrumStaff \with {
    instrumentName = "Timbales"
    drumStyleTable = #timbales-style
    \override StaffSymbol.line-count = #2
} <<
  \new DrumVoice { \voiceOne \drummode { 
    \sectionLabel "Double Cascara"
    ssh8-> ssl ssh ssl ssh ssh ssl ssh | ssh ssl ssh ssh ssl ssh ssl ssh \bar "||"
    ssh4-> ssh-> ssh8 ssh-> r ssh | ssh4-> ssh8 ssh-> r ssh-> r ssh \bar "||"
  }}

\new RhythmicStaff \with {
  instrumentName = "Clave"
} {
    % 3-2
    c4. c8 r4 c4 r4 c c r \bar "||"
    % 2-3
    r4 c c r c4. c8 r4 c4 \bar "||"
}
>>


\new DrumStaff \with {
    instrumentName = "Timbales"
    drumStyleTable = #timbales-style
    \override StaffSymbol.line-count = #2
} <<
  \new DrumVoice { \voiceOne \drummode { 
    \sectionLabel "Mambo Bell"
    cb4-> cb-> cb8 cb cb cb-> | r cb cb cb cb4-> cb8 cb \bar "||"
  } }
  \new DrumVoice { \voiceTwo  \drummode {
    r4 timl-+ r4 timl | r4 timl-+ r4 timl \bar "||"
  }}

\new RhythmicStaff \with {
  instrumentName = "Clave"
} {
    % 2-3
    r4 c c r c4. c8 r4 c4 \bar "||"
}
>>



\new DrumStaff \with {
    instrumentName = "Timbales"
    drumStyleTable = #timbales-style
    \override StaffSymbol.line-count = #2
} <<
    \new DrumVoice { \voiceOne \drummode { 
    }}
    \new DrumVoice { \voiceTwo  \drummode {
    }}

    \new RhythmicStaff \with {
    instrumentName = "Clave"
    } {
    }
>>
