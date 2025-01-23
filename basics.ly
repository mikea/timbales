\version "2.24.2"

\include "common/all.ly"

date = #(strftime "%Y-%m-%d" (localtime (current-time)))

\header {
  title = "Basic Patterns"
  tagline = \markup { \date "https://github.com/mikea/timbales" }
}

%% Cascara 

\newTimbalesStaff <<
  \newDrumVoiceOne \drummode { 
    % lilypond varies stem length otherwise, which looks ugly
    \override Stem.details.beamed-lengths = #'(4) 

    \sectionLabel "Paila (Cascara)"
    \bar ".|:" 
    ssh4-> ssh8 ssh-> r ssh-> r ssh | ssh4-> ssh-> ssh8 ssh-> r ssh 
    \bar ":..:"
    ssh4-> ssh-> ssh8 ssh-> r ssh | ssh4-> ssh8 ssh-> r ssh-> r ssh 
    \bar ":|."
  } 
  \newDrumVoiceTwo \drummode {
    % paila 3/2
    r4 timl_+ r4 timl4_O | r4 timl_+ r4 timl4_O |
    % paila 2/3
    r4 timl_+ r4 timl4_O | r4 timl_+ r4 timl4_O |
  }

\new RhythmicStaff \with {
  % instrumentName = "Clave"
} {
    % 3-2
    c4. c4. c4 r4 c c r |
    % 2-3
    r4 c c r c4. c4. c4 |
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
    ssl4. ssl4. ssl4 | r4 ssl ssl r |
    r4 ssl ssl r | ssl4. ssl4. ssl4 |
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
    ssl4. ssl2 ssl8 | r4 ssl ssl r |
    r4 ssl ssl r | ssl4. ssl2 ssl8 |
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
    ssh8-> ssl ssh-> ssl ssh ssh-> ssl ssh | ssh-> ssl ssh ssh-> ssl ssh-> ssl ssh |
    \bar ":..:"
    ssh8-> ssl ssh-> ssl ssh ssh-> ssl ssh | ssh-> ssl ssh ssh-> ssl ssh-> ssl ssh16 ssl16 |
    \bar ":..:"
    \break
    ssh8-> ssl16 ssh16 ssl8-> ssh ssl ssh-> ssl ssh | ssh-> ssl ssh ssh-> ssl ssh-> ssl ssh |
    \bar ":..:"
    ssh8-> ssl16 ssh16 ssl8-> ssh ssl ssh-> ssl ssh | ssh-> ssl ssh ssh-> ssl ssh-> ssl ssh16 ssl16 |
    \bar ":|."
  }}

\new RhythmicStaff \with {
} {
    % 2-3
    r4 c c r c4. c4. c4 |
    r4 c c r c4. c4. c4 |
    r4 c c r c4. c4. c4 |
    r4 c c r c4. c4. c4 |
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
    r4 timl_+ r4 timl4_O | r4 timl_+ r4 timl4_O |
    r4 timl_+ r4 timl4_O | r4 timl_+ r4 timl4_O |
  }}

\new RhythmicStaff \with {
} {
    % 3-2
    c4. c4. c4 | r4 c c r |
    % 2-3
    r4 c c r | c4. c4. c4 |
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
        c4. c4. c4 | r4 c c r | c4. c4. c4 \bar "||"
        % 2-3
        r4 c c r | c4. c4. c4 | r4 c c r\bar "||"
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
        \footnote #'(-1 . 1) "+ - neck, o - mouth of the bell" cb4_+ 4_+ 8_O  8_O r cb_+ | r cb_+ cb_+ r cb8_O cb8_O r cb_+ |
        \bar ":|."
    }}
    \new DrumVoice { \voiceTwo  \drummode {
        r4 r8 timl8 r4 timl8 r8 | r4 r8 timl8 r4 timl8 r8 |
    }}

    \new RhythmicStaff \with {
    } {
        \bar ".|:" 

        r4 c c r | c4. c8 r4 r8 c8 | \bar ":..:"

        \bar ":|."
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
      timl4._O timl4._+ | timl4._O timl4._+ |
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

\newTimbalesStaff <<
    \newDrumVoiceOne \drummode { 
      \sectionLabel "Cha-cha-cha"
      \time 4/4
      \bar ".|:" 
      cb4 4 4 4 | cb4 4 4 4 |
      \bar ":..:"
      cb4 4 4 4 | cb4 4 4 4 |
      \bar ":..:"
      cb4 4 4 4 | cb4 4 4 4 |
      \bar ":|."
    }
    \newDrumVoiceTwo \drummode {
      r4 timl4_+ r4 timl4_O | r4 timl4_+ r4 timl4_O |
      r4. timl8_+ r4 timl8_O timl8_O | r4. timl8_+ r4 timl8_O timl8_O |
      r4 timl8_+ timl8_+ r4 timl8_O timl8_+ | r4 timl8_+ timl8_+ r4 timl8_O timl8_+ |
    }
>>

% LH

\newTimbalesStaff {
  \newDrumVoiceTwo \drummode { 
    \sectionLabel "LH Patterns"

    \bar ".|:" 

    r4 timl4_+ r4      timl4_O | r4 timl4_+ r4 timl4_O | \bar ":..:"
    r4 timl4_+ r4      timl8_O timl8_O | r4 timl4_+ r4 timl8_O timl8_O | \bar ":..:"
    \break
    r4 timl8_+ timl8_+ r4 timl8_O timl8_O | r4 timl8_+ timl8_+ r4 timl8_O timl8_O | \bar ":..:"
    r4 timl8_+ timl8_+ r4 timl8_O timl8_O | r4 timl4_+ r4 timl8_O timl8_O | \bar ":..:"
    \break
    r4 timl8_+ timl8_+ r4 timl8_O timl8_O | r4 timl4_+ r8 timl8_O r8 timl8_O | \bar ":..:"
    r4 timl8_+ timl8_+ r4 timl8_O timl8_O | r4 timl8_+ timl8_+ r8 timl8_O r8 timl8_O | \bar ":..:"
    \break
    r4 timl4_+ r4      timl8_O timl8_O | r4 timl4_+ r8 timl8_O r8 timl8_O | \bar ":..:"
    r4 timl8_+ timl8_+ r4 timl8_O timl8_O | r4 timl4_+ r8 timl8_O timl8_O timl8_O | \bar ":..:"
    \break
    r8 timl8_+ timl8_+ timl8_+ r4 timl8_O timl8_O | r4 timl4_+ r8 timl8_O timl8_O timl8_O | \bar ":..:"
    r8 timl8_+ timl8_+ timl8_+ r4 timl8_O timl8_O | r4 timl8_+ timl8_+ r8 timl8_O timl8_O timl8_O | \bar ":..:"
    \break
    r8 timl8_+ r8 timl8_+ r8 timl8_O r8 timl8_O | r8 timl8_+ timl4_+ r8 timl8_O timl8_O timl8_O | \bar ":..:"
    r4. timl8_+ r4      timl4_O | r4. timl8_+ r4 timl4_O | \bar ":..:"
    \break
    r4 timl4_O r4      timl4_+ | r4 timl4_O r4 timl4_+ | \bar ":..:"
    r4. timl8_O r4      timl4_+ | r4. timl8_O r4 timl4_+ | \bar ":..:"

    \bar ":|."
  }
}
