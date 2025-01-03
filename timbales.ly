\version "2.24.2"

\header {
  title = "Timbales Basic Patterns"
}

%% Cascara 

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

%% Paila + Son Clave

\new DrumStaff \with {
    drumStyleTable = #timbales-style
    \override StaffSymbol.line-count = #2
} <<
  \new DrumVoice { \voiceOne \drummode { 
    \sectionLabel "Paila + Son Clave"
    cb4-> cb8 cb-> r cb-> r cb | cb4-> cb-> cb8 cb-> r cb \bar "||"
    cb4-> cb-> cb8 cb-> r cb | cb4-> cb8 cb-> r cb-> r cb \bar "||"
  } }
  \new DrumVoice { \voiceTwo  \drummode {
    ssl4. ssl8 r4 ssl4 | r4 ssl ssl r \bar "||"
    r4 ssl ssl r | ssl4. ssl8 r4 ssl4 \bar "||"
  }}
>>


%% Paila + Rumba Clave

\new DrumStaff \with {
    drumStyleTable = #timbales-style
    \override StaffSymbol.line-count = #2
} <<
  \new DrumVoice { \voiceOne \drummode { 
    \sectionLabel "Paila + Rumba Clave"
    cb4-> cb8 cb-> r cb-> r cb | cb4-> cb-> cb8 cb-> r cb \bar "||"
    cb4-> cb-> cb8 cb-> r cb | cb4-> cb8 cb-> r cb-> r cb \bar "||"
  } }
  \new DrumVoice { \voiceTwo  \drummode {
    ssl4. ssl8 r4. ssl8 | r4 ssl ssl r \bar "||"
    r4 ssl ssl r | ssl4. ssl8 r4. ssl8 \bar "||"
  }}
>>

%% Double Cascara 

\new DrumStaff \with {
    drumStyleTable = #timbales-style
    \override StaffSymbol.line-count = #2
} <<
  \new DrumVoice { \voiceOne \drummode { 
    \sectionLabel "Double Cascara"
    ssh8-> ssl ssh ssh-> ssl ssh-> ssl ssh | ssh-> ssl ssh-> ssl ssh ssh-> ssl ssh \bar "||"
    ssh8-> ssl ssh-> ssl ssh ssh-> ssl ssh | ssh-> ssl ssh ssh-> ssl ssh-> ssl ssh \bar "||"
  }}

\new RhythmicStaff \with {
} {
    % 3-2
    c4. c8 r4 c4 r4 c c r \bar "||"
    % 2-3
    r4 c c r c4. c8 r4 c4 \bar "||"
}
>>


\new DrumStaff \with {
    drumStyleTable = #timbales-style
    \override StaffSymbol.line-count = #2
} <<
  \new DrumVoice { \voiceOne \drummode { 
    \sectionLabel "Mambo Bell"
    r8 cb cb cb cb4-> cb8 cb | cb4-> cb-> cb8 cb cb cb-> \bar "||"
    cb4-> cb-> cb8 cb cb cb-> | r8 cb cb cb cb4-> cb8 cb \bar "||"
  } }
  \new DrumVoice { \voiceTwo  \drummode {
    r4 timl-+ r4 timl | r4 timl-+ r4 timl \bar "||"
    r4 timl-+ r4 timl | r4 timl-+ r4 timl \bar "||"
  }}

\new RhythmicStaff \with {
} {
    % 3-2
    c4. c8 r4 c4 | r4 c c r \bar "||"
    % 2-3
    r4 c c r | c4. c8 r4 c4 \bar "||"
}
>>

%% Abanico

\new DrumStaff \with {
    drumStyleTable = #timbales-style
    \override StaffSymbol.line-count = #2
} <<
    \new DrumVoice { \voiceOne \drummode { 
        \sectionLabel "Abanico"
        <<cb4 timl>> r r r | r r timl-> timl:16~ | timl-> r r r \bar "||"
        <<cb4 timl>> r r r | r4. timl8-> r4 timl:16~ | timl-> r r r \bar "||"
    }}
    \new DrumVoice { \voiceTwo  \drummode {
    }}

    \new RhythmicStaff \with {
    } {
        % 3-2
        c4. c8 r4 c4 | r4 c c r | c4. c8 r4 c4 \bar "||"
        % 2-3
        r4 c c r | c4. c8 r4 c4 | r4 c c r\bar "||"
    }
>>

%% Mozambique

\new DrumStaff \with {
    drumStyleTable = #timbales-style
    \override StaffSymbol.line-count = #2
} <<
    \new DrumVoice { \voiceOne \drummode { 
        \sectionLabel "Mozambique"
        \footnote #'(-1 . 1) "Neck of the bell" cb4 4 \footnote #'(-1 . 1) "Mouth of the bell" 8-+  8-+ r cb | r cb cb r cb-+ cb-+ r cb \bar "||"
    }}
    \new DrumVoice { \voiceTwo  \drummode {
        r4. timl4. timl4 | r4. timl4. timl4 \bar "||"
    }}

    \new RhythmicStaff \with {
    } {
        r4 c c r | c4. c8 r4. c8 \bar "||"
    }
>>


%% Template

\new DrumStaff \with {
    drumStyleTable = #timbales-style
    \override StaffSymbol.line-count = #2
} <<
    \new DrumVoice { \voiceOne \drummode { 
    }}
    \new DrumVoice { \voiceTwo  \drummode {
    }}

    \new RhythmicStaff \with {
    } {
    }
>>
