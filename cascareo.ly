\version "2.24.2"

\include "common/all.ly"

date = #(strftime "%Y-%m-%d" (localtime (current-time)))

\header {
  title = "Cascareo"
  instrument = "Timbales"
  tagline = \markup { "https://mikea.github.io/timbales// - " \date  }
}

\newTimbalesStaff <<
    \newDrumVoiceOne \drummode { 
        \bar ".|:"
        <<ssh8 ssl8>> \tuplet 3/2 { ssh16 ssl16 ssl16 } ssh8 ssl8 
        <<ssh8 ssl8>> \tuplet 3/2 { ssh16 ssl16 ssl16 } ssh8 ssl8
        \bar ":|.|:"
        ssh8 ssl16 ssl16 ssh8 ssl8 
        ssh8 ssl16 ssl16 ssh8 ssl8
        \bar ":|.|:"
        cb8 ssl16 ssl16 cb8 ssl8 
        cb8 ssl16 ssl16 cb8 ssl8
        \bar ":|.|:"
        rbm8 ssl16 ssl16 rbn8 ssl8 
        rbm8 ssl16 ssl16 rbn8 ssl8
        | \bar ":|.|:"
    }
>>

\newTimbalesStaff <<
    \sectionLabel "Bolero"

    \newDrumVoiceOne \drummode { 
      \bar ".|:" 
      <<ssl8 ssh8>> 8 8 8 <<ssl8 ssh8>> 8 <<ssl8 ssh8>> 8
      \bar ":|.|:"
      <<ssl8 ssh8>> ssh16 ssl16 ssh8 8 <<ssl8 ssh8>> 8 <<ssl8 ssh8>> 8
      \bar ":|.|:"
      <<ssl8 ssh8>> \tuplet 3/2 { ssh16 ssl16 ssl16 } ssh8 8 <<ssl8 ssh8>> 8 <<ssl8 ssh8>> 8
      \bar ":|.|:"
      <<ssl8 ssh8>> ssh32 ssl ssh ssl ssh8 8 <<ssl8 ssh8>> 8 <<ssl8 ssh8>> 8
      \bar ":|.|:"
      <<ssl8 ssh8>> ssh32 ssh ssl ssl ssh8 8 <<ssl8 ssh8>> 8 <<ssl8 ssh8>> 8
      \bar ":|."
    }
>>



\newTimbalesStaff <<
    \sectionLabel "Cascara (2-3)"
    \newDrumVoiceOne \drummode { 
        \bar ".|:" 
        ssh4-> ssh-> ssh8 ssh-> r ssh | ssh4-> ssh8 ssh-> r ssh-> r ssh 
        \bar ":|.|:"
        ssh4-> ssh-> ssh8 ssh-> r ssh | ssh4-> ssh8 ssh-> r ssh-> r ssh 
        \bar ":|.|:"
        ssh4-> ssh-> ssh8 ssh-> r ssh | ssh4-> ssh8 ssh-> r ssh-> r ssh 
        \bar ":|.|:"
        ssh4-> ssh-> ssh8 ssh-> r ssh | ssh4-> ssh8 ssh-> r ssh-> r ssh 
        \bar ":|."
    }

    \newDrumVoiceTwo \drummode {
        s4 \ghost timl s4 timl4 | s4 \ghost timl s4 timl4 | 
        s4. \ghost timl8 s4 timl4 | s4. \ghost timl8 s4 timl4 | 
        s4 timh s4 timl4 | s4 timh s4 timl4 | 
        s8 \ghost timh s8 \ghost timh s4 timl8 s8 | s8 \ghost timh s2 timl4 
    }

>>

\newTimbalesStaff <<
    \sectionLabel "Cascara+Clave"
    \newDrumVoiceOne \drummode { 
        \bar ".|:" 
        ssh4-> ssh-> ssh8 ssh-> r ssh | ssh4-> ssh8 ssh-> r ssh-> r ssh 
        \bar ":|.|:"
        ssh4-> ssh-> ssh8 ssh-> r ssh | ssh4-> ssh8 ssh-> r ssh-> r ssh 
        \bar ":|."
    }

    \newDrumVoiceTwo \drummode {
        s4 wbl wbl s wbl4. wbl4. wbl4 |
        s4 wbl wbl s wbl4. wbl2 wbl8 |
    }

>>


\newTimbalesStaff <<
    \sectionLabel "Double Cascara (2-3)"

    \newDrumVoiceOne \drummode { 
        \bar ".|:" 
        ssh8-> ssl ssh-> ssl ssh ssh-> ssl ssh | ssh-> ssl ssh ssh-> ssl ssh-> ssl ssh |
        \bar ":|.|:"
        ssh8-> ssl ssh-> ssl ssh ssh-> ssl ssh | ssh-> ssl ssh ssh-> ssl ssh-> ssl ssh16 ssl16 |
        \bar ":|.|:"
        \break
        ssh8-> ssl16 ssh16 ssl8-> ssh ssl ssh-> ssl ssh | ssh-> ssl ssh ssh-> ssl ssh-> ssl ssh |
        \bar ":|.|:"
        ssh8-> ssl16 ssl ssh8-> ssl ssh ssh-> ssl ssh | ssh-> ssl16 ssl ssh8 ssh-> ssl ssh-> ssl ssh |
        \bar ":|."
    }

>>

\newTimbalesStaff <<
    \sectionLabel "Cascara Variations (2-3)"
    \newDrumVoiceOne \drummode { 
        \bar ".|:" 
        ssh4-> ssh4-> ssh4-> ssh4-> | ssh4-> ssh8 ssh-> r ssh-> r ssh |
        \bar ":|.|:"
        ssh4-> ssh-> ssh8 ssh-> r ssh-> | r8 ssh8 ssh8 ssh8-> r ssh-> r ssh |
        \bar ":|.|:"
        ssh4-> ssh-> ssh8 ssh-> r ssh | r8 ssh8 ssh8 ssh8 ssh4-> ssh8 ssh |
        \bar ":|."
    }
>>