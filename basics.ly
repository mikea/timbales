\version "2.24.2"

\include "common/all.ly"

date = #(strftime "%Y-%m-%d" (localtime (current-time)))

\header {
  title = "Basic Patterns"
  instrument = "Timbales"
  tagline = \markup { \date "https://github.com/mikea/timbales" }
}


\newTimbalesStaff <<
    \sectionLabel "Notation"
    \newDrumVoiceOne \drummode { 
      timl4_"low drum" s4 timh4_"high drum" s4 |
      ssl4_"low shell" s4 ssh4_"high shell" s4 |
      timl4^>_"low r.s." s4 timh4^>_"high r.s." s4 |
      cb4_"mambo bell" s2. |
      rbm4_"cha-cha bell mouth" s2 rbn4_"neck" |
      cymc4_"cymbal" s2. |
      cl4_"clave/block" s2 wbl_"clave/block" |
      
    }
>>

%% Abanico

\newTimbalesStaff <<
    \newDrumVoiceOne \drummode { 
        \sectionLabel "Abanico (3-2)"
        <<cb4 timl>> r2. | r2 timh4-> timh:16~ | timh-> \rs \rs \rs \bar ".."
        \sectionLabel "(2-3)"
        <<cb4 timl>> r2. | r4. timh4.-> timh4:16~ | timh-> \rs \rs \rs \bar ".."
    }
    \newDrumVoiceTwo \drummode { 
        % 3-2
        wbl4. wbl4. wbl4 | s4 wbl wbl s4 | s1
        % 2-3
        s4 wbl wbl s4 | wbl4. wbl4. wbl4 | s1
    }
>>

%% Cascara 

\newTimbalesStaff <<
  \newDrumVoiceOne \drummode { 
    \sectionLabel "Cascara (3-2)"
    \bar ".|:" 
    ssh4-> ssh8 ssh-> r ssh-> r ssh | ssh4-> ssh-> ssh8 ssh-> r ssh 
    \bar ":..:"
    \sectionLabel "(2-3)"
    ssh4-> ssh-> ssh8 ssh-> r ssh | ssh4-> ssh8 ssh-> r ssh-> r ssh 
    \bar ":|."
  } 
  \newDrumVoiceTwo \drummode {
    % paila 3/2
    s4 \ghost timl s4 timl4 | s4 \ghost timl s4 timl4 |
    % paila 2/3
    s4 \ghost timl s4 timl4 | s4 \ghost timl s4 timl4 |
  }
>>

%% Double Cascara 

\newTimbalesStaff <<
  \newDrumVoiceOne \drummode { 
    \sectionLabel "Double Cascara (3-2)"
    \bar ".|:" 
    ssh-> ssl ssh ssh-> ssl ssh-> ssl ssh | ssh8-> ssl ssh-> ssl ssh ssh-> ssl ssh | 
    \bar ":..:"
    \sectionLabel "(2-3)"
    ssh8-> ssl ssh-> ssl ssh ssh-> ssl ssh | ssh-> ssl ssh ssh-> ssl ssh-> ssl ssh |
    \bar ":|."
  }
>>

%% Mambo bell

\newTimbalesStaff <<
  \newDrumVoiceOne \drummode { 
    \sectionLabel "Mambo Bell (3-2)"
    \bar ".|:" 
    r8 cb cb cb-> cb4 cb8 cb-> | cb4 cb-> cb8 cb cb cb-> |
    \bar ":..:"
    \sectionLabel "(2-3)"
    cb4 cb-> cb8 cb cb cb-> | r8 cb cb cb-> cb4 cb8-> cb |
    \bar ":|."
  } 
  \newDrumVoiceTwo \drummode { 
    s4 \ghost timl s4 timl4 | s4 \ghost timl s4 timl4 |
    s4 \ghost timl s4 timl4 | s4 \ghost timl s4 timl4 |
  }
>>


%% Mozambique

\newTimbalesStaff <<
  \newDrumVoiceOne \drummode { 
        \sectionLabel "Mozambique"
        \bar ".|:" 
        cb4 4 8  8 r cb | r cb cb r cb8 cb8 r cb |
        \bar ":|."
    }
  \newDrumVoiceTwo \drummode { 
        r4 r8 timl8 r4 timl8 r8 | r4 r8 timl8 r4 timl8 r8 |
  }

    \new RhythmicStaff \with {
    } {
        \bar ".|:" 
        r4 c c r | c4. c2 c8 | \bar ":..:"
        \bar ":|."
    }
>>

%% 6/8

\newTimbalesStaff <<
  \newDrumVoiceOne \drummode { 
      \sectionLabel "6/8"
      \time 6/8
      \bar ".|:" 
      cb4-> cb4-> cb4-> | cb8 cb8-> r8 cb8-> r8 cb8 |
      \bar ":..:"
      cb4-> cb4-> cb8-> cb8 | r8 cb8-> r8 cb8-> r8 cb8 |
      \bar ":..:"
      cb4-> cb4-> cb8-> cb8 | r8 cb8-> r8 cb8-> r8 cb8 |
      \bar ":|."
    }
  \newDrumVoiceTwo \drummode { 
      timl4. \ghost timl4. | timl4. \ghost timl4. |
      timl4 r4 r4 | ssl4 r4 r4 |
      r4 timl4 timh4 | r4 timl4 timh4 |
    }

    \new RhythmicStaff \with {
    } {
      c4 c4 r8 c8 | r8 c8 r8 c8 r4 |
      c4 c4 r8 c8 | r8 c8 r8 c8 r4 |
      c4 c4 r8 c8 | r8 c8 r8 c8 r4 |
    }
>>


%% Cha-cha-cha

\newTimbalesStaff <<
      \sectionLabel "Cha-cha-cha"
      \time 4/4
    \newDrumVoiceOne \drummode { 
      \bar ".|:" 
      cb4 4 4 4 |
      \bar ":|.|:"
      cb4 4 4 4 |
      \bar ":|."
    }
    \newDrumVoiceTwo \drummode {
      s4 \ghost timl4 s4 timl4 |
      s4. \ghost timl8 s4 timl8 timl8 |
    }
>>

% Bomba

\newTimbalesStaff <<
    \sectionLabel "Bomba (Puerto Rico)"
    \time 4/4

    \newDrumVoiceOne \drummode { 
      \bar ".|:" 
      cb8 cb r cb r cb cb4 | cb8 cb r cb cb cb cb4
      \bar ":|.|:"
      cb8 cb r cb r cb cb4 | cb8 cb r cb cb cb cb4
      \bar ":|."
    }
    \newDrumVoiceTwo \drummode {
      r4 \ghost timl4 r4 timl4 | r4 \ghost timl4 r4 timl4 |      
      r4 \ghost timl4 r8 timl8 timl4 | r4 \ghost timl4 r8 timl8 timl4 |      
    }
>>

% La Raspa

\newTimbalesStaff <<
    \sectionLabel "La Raspa"
    \time 4/4

    \newDrumVoiceOne \drummode { 
      \bar ".|:" 
      ssh4^> r8 ssh8 ssh4^> r8 ssh8
      \bar ":|.|:"
      ssh4^> ssh8 ssh8 ssh4^> ssh8 ssh8
      \bar ":|."
    }
    \newDrumVoiceTwo \drummode {
      s4 \ghost timh4 s4 timl4 | 
      s4 \ghost timh4 s4 timl4 |      
    }
>>

% Bolero

\newTimbalesStaff <<
    \sectionLabel "Bolero"
    \time 4/4

    \newDrumVoiceOne \drummode { 
      \bar ".|:" 
      <<ssl8 ssh8>> 8 8 8 <<ssl8 ssh8>> 8 <<ssl8 ssh8>> 8
      \bar ":|.|:"
      <<ssl8 ssh8>> \tuplet 3/2 { ssh16 ssl16 ssl16 } ssh8 8 <<ssl8 ssh8>> 8 <<ssl8 ssh8>> 8
      \bar ":|."
    }
    
>>