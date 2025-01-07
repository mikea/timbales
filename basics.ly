\version "2.24.2"

\header {
  title = "Basic Patterns"
}

%% Cascara 

\new DrumStaff \with {
    instrumentName = "Timbales"
    drumStyleTable = #timbales-style
    \override StaffSymbol.line-count = #2
} <<
  \new DrumVoice { \voiceOne \drummode { 
    \sectionLabel "Paila (Cascara)"
    \bar ".|:" 
    ssh4-> ssh8 ssh-> r ssh-> r ssh | ssh4-> ssh-> ssh8 ssh-> r ssh 
    \bar ":..:"
    ssh4-> ssh-> ssh8 ssh-> r ssh | ssh4-> ssh8 ssh-> r ssh-> r ssh 
    \bar ":|."
  } }
  \new DrumVoice { \voiceTwo  \drummode {
    % paila 3/2
    r4 timl-+ r4 timl4-o | r4 timl-+ r4 timl4-o |
    % paila 2/3
    r4 timl-+ r4 timl4-o | r4 timl-+ r4 timl4-o |
  }}

\new RhythmicStaff \with {
  instrumentName = "Clave"
} {
    % 3-2
    c4. c8 r4 c4 r4 c c r |
    % 2-3
    r4 c c r c4. c8 r4 c4 |
}
>>

%% Paila + Son Clave

\new DrumStaff \with {
    drumStyleTable = #timbales-style
    \override StaffSymbol.line-count = #2
} <<
  \new DrumVoice { \voiceOne \drummode { 
    \sectionLabel "Paila + Son Clave"
    \bar ".|:" 
    cb4-> cb8 cb-> r cb-> r cb | cb4-> cb-> cb8 cb-> r cb |
    \bar ":..:"
    cb4-> cb-> cb8 cb-> r cb | cb4-> cb8 cb-> r cb-> r cb |
    \bar ":|."
  } }
  \new DrumVoice { \voiceTwo  \drummode {
    ssl4. ssl8 r4 ssl4 | r4 ssl ssl r |
    r4 ssl ssl r | ssl4. ssl8 r4 ssl4 |
  }}
>>


%% Paila + Rumba Clave

\new DrumStaff \with {
    drumStyleTable = #timbales-style
    \override StaffSymbol.line-count = #2
} <<
  \new DrumVoice { \voiceOne \drummode { 
    \sectionLabel "Paila + Rumba Clave"
    \bar ".|:" 
    cb4-> cb8 cb-> r cb-> r cb | cb4-> cb-> cb8 cb-> r cb |
    \bar ":..:"
    cb4-> cb-> cb8 cb-> r cb | cb4-> cb8 cb-> r cb-> r cb |
    \bar ":|."
  } }
  \new DrumVoice { \voiceTwo  \drummode {
    ssl4. ssl8 r4. ssl8 | r4 ssl ssl r |
    r4 ssl ssl r | ssl4. ssl8 r4. ssl8 |
  }}
>>

%% Double Cascara 

\new DrumStaff \with {
    drumStyleTable = #timbales-style
    \override StaffSymbol.line-count = #2
} <<
  \new DrumVoice { \voiceOne \drummode { 
    \sectionLabel "Double Cascara"
    \bar ".|:" 
    ssh8-> ssl ssh ssh-> ssl ssh-> ssl ssh | ssh-> ssl ssh-> ssl ssh ssh-> ssl ssh |
    \bar ":..:"
    ssh8-> ssl ssh-> ssl ssh ssh-> ssl ssh | ssh-> ssl ssh ssh-> ssl ssh-> ssl ssh |
    \bar ":|."
  }}

\new RhythmicStaff \with {
} {
    % 3-2
    c4. c8 r4 c4 r4 c c r |
    % 2-3
    r4 c c r c4. c8 r4 c4 |
}
>>

%% Mambo bell

\new DrumStaff \with {
    drumStyleTable = #timbales-style
    \override StaffSymbol.line-count = #2
} <<
  \new DrumVoice { \voiceOne \drummode { 
    \sectionLabel "Mambo Bell"
    \bar ".|:" 
    r8 cb cb cb cb4-> cb8 cb | cb4-> cb-> cb8 cb cb cb-> |
    \bar ":..:"
    cb4-> cb-> cb8 cb cb cb-> | r8 cb cb cb cb4-> cb8 cb |
    \bar ":|."
  } }
  \new DrumVoice { \voiceTwo  \drummode {
    r4 timl-+ r4 timl4-o | r4 timl-+ r4 timl4-o |
    r4 timl-+ r4 timl4-o | r4 timl-+ r4 timl4-o |
  }}

\new RhythmicStaff \with {
} {
    % 3-2
    c4. c8 r4 c4 | r4 c c r |
    % 2-3
    r4 c c r | c4. c8 r4 c4 |
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
        \bar ".|:" 
        \footnote #'(-1 . 1) "+ - neck, o - mouth of the bell" cb4-+ 4-+ 8-o  8-o r cb-+ | r cb-+ cb-+ r cb8-o cb8-o r cb-+ |
        \bar ":|."
    }}
    \new DrumVoice { \voiceTwo  \drummode {
        r4 r8 timl8 r4 timl8 r8 | r4 r8 timl8 r4 timl8 r8 |
    }}

    \new RhythmicStaff \with {
    } {
        r4 c c r | c4. c8 r4 r8 c8 |
    }
>>

%% 6/8

\new DrumStaff \with {
    drumStyleTable = #timbales-style
    \override StaffSymbol.line-count = #2
} <<
    \new DrumVoice { \voiceOne \drummode { 
      \sectionLabel "6/8"
      \time 6/8
      \bar ".|:" 
      cb4-> cb4-> cb4-> | cb8 cb8-> r8 cb8-> r8 cb8 |
      \bar ":..:"
      cb4-> cb4-> cb8-> cb8 | r8 cb8-> r8 cb8-> r8 cb8 |
      \bar ":..:"
      cb4-> cb4-> cb8-> cb8 | r8 cb8-> r8 cb8-> r8 cb8 |
      \bar ":|."
    }}
    \new DrumVoice { \voiceTwo  \drummode {
      timl4.-o timl4.-+ | timl4.-o timl4.-+ |
      timl4 r4 r4 | ssl4 r4 r4 |
      r4 timl4 timh4 | r4 timl4 timh4 |
    }}

    \new RhythmicStaff \with {
    } {
      c4 c4 r8 c8 | r8 c8 r8 c8 r4 |
      c4 c4 r8 c8 | r8 c8 r8 c8 r4 |
      c4 c4 r8 c8 | r8 c8 r8 c8 r4 |
    }
>>


%% Cha-cha-cha

\new DrumStaff \with {
    drumStyleTable = #timbales-style
    \override StaffSymbol.line-count = #2
} <<
    \new DrumVoice { \voiceOne \drummode { 
      \sectionLabel "Cha-cha-cha"
      \time 4/4
      \bar ".|:" 
      cb4 4 4 4 | cb4 4 4 4 |
      \bar ":..:"
      cb4 4 4 4 | cb4 4 4 4 |
      \bar ":..:"
      cb4 4 4 4 | cb4 4 4 4 |
      \bar ":|."
    }}
    \new DrumVoice { \voiceTwo  \drummode {
      r4 timl4-+ r4 timl4-o | r4 timl4-+ r4 timl4-o |
      r4. timl8-+ r4 timl8-o timl8-o | r4. timl8-+ r4 timl8-o timl8-o |
      r4 timl8-+ timl8-+ r4 timl8-o timl8-+ | r4 timl8-+ timl8-+ r4 timl8-o timl8-+ |
    }}
>>

%% Template

\new DrumStaff \with {
    drumStyleTable = #timbales-style
    \override StaffSymbol.line-count = #2
} <<
    \new DrumVoice { \voiceOne \drummode { 
      % \sectionLabel "Mozambique"
    }}
    \new DrumVoice { \voiceTwo  \drummode {
    }}

    \new RhythmicStaff \with {
    } {
    }
>>
