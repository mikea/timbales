\version "2.24.2"

\include "common/all.ly"

date = #(strftime "%Y-%m-%d" (localtime (current-time)))

\header {
  title = "Contracampana"
  instrument = "Timbales"
  tagline = \markup { "https://mikea.github.io/timbales/ - " \date }
}


%% Basic Pattern

\newTimbalesStaff <<
    \newDrumVoiceOne \drummode { 
      \bar "[|:" 
      \sectionLabel "(2-3)"
      cb4 cb-> cb8 cb cb cb-> | r8 cb cb cb-> cb4 cb8 cb-> |
      \bar ":|][|:"
      \sectionLabel "(3-2)"
      r8 cb cb cb-> cb4 cb8 cb-> | cb4 cb-> cb8 cb cb cb-> |
      \bar ":|]"
    }
    \newDrumVoiceTwo \drummode { 
      s4 \ghost timl s4 timl4 | s4 \ghost timl s4 timl4 |
      s4 \ghost timl s4 timl4 | s4 \ghost timl s4 timl4 |
    }
>>

\newTimbalesStaff <<
    \sectionLabel "with hands/sticks"
    \newDrumVoiceOne \drummode { 
      \bar "[|:" 
      cb4 cb-> cb8 cb cb cb-> | r8 cb cb cb-> cb4 cb8 cb-> |
      \bar ":|][|:"
      cb4 cb-> cb8 cb cb cb-> | r8 cb cb cb-> cb4 cb8 cb-> |
      \bar ":|][|:"
      cb4 cb-> cb8 cb cb cb-> | r8 cb cb cb-> cb4 cb8 cb-> |
      \bar ":|]"
    }
    \newDrumVoiceTwo \drummode { 
      s4 \ghost timh4 s4 timl4 | s4 \ghost timh4 s4 timl4 |
      s4. \ghost timh8 s4 timl4 | s4. \ghost timh8 s4 timl4 |
      s8 \ghost timh4 \ghost timh4 s8 timl4 | \ghost timh4 s4 s4 timl4 |
    }
>>

\newTimbalesStaff <<
    \sectionLabel "with cymbal"
    \newDrumVoiceTwo \drummode { 
      \bar "[|:" 
      cb4 cb cb8 cb cb cb | r8 cb cb cb cb4 cb8 cb |
      \bar ":|][|:"
      cb4 cb cb8 cb cb cb | r8 cb cb cb cb4 cb8 cb |
      \bar ":|]"
    }
    \newDrumVoiceOne \drummode { 
      \bar "[|:" 
      r4 <<cymcb>> r4 <<cymcb4>> | cymcb4 r4 <<cymcb4>> r4|
      \bar ":|][|:"
      <<cymcb4>> <<cymcb>> <<cymcb8>> <<cymcb>> r <<cymcb>> | cymcb r <<cymcb>> <<cymcb>> r8 cymcb r8 <<cymcb>> |
      \bar ":|]"
    }
>>

\newTimbalesStaff <<
    \sectionLabel "with cha-cha bell"
    \newDrumVoiceTwo \drummode { 
      \bar "[|:" 
      cb4 cb cb8 cb cb cb | r8 cb cb cb cb4 cb8 cb |
      \bar ":|]"
    }
    \newDrumVoiceOne \drummode { 
      rbm4 rbn4 rbm4 rbn8 rbn8 | rbm4 rbn8 rbn8 rbm4 rbn8 rbn8 
    }
>>

\newTimbalesStaff <<
    \sectionLabel "with clave"
    \newDrumVoiceOne \drummode { 
      \bar "[|:" 
      cb4 cb-> cb8 cb cb cb-> | r8 cb cb cb-> cb4 cb8 cb-> |
      \bar ":|][|:"
      cb4 cb-> cb8 cb cb cb-> | r8 cb cb cb-> cb4 cb8 cb-> |
      \bar ":|]"
    }
    \newDrumVoiceTwo \drummode { 
      s4 wbl wbl s4 | wbl4. wbl4. wbl4 |
      s4 wbl wbl s4 | wbl4. wbl2 wbl8 |
    }
>>


%% Basic Pattern

\newTimbalesStaff <<
    \newDrumVoiceOne \drummode { 
      \sectionLabel "variations (2-3)"
      \bar "[|:" 
      cb4 cb-> cb8 cb cb cb-> | r8 cb cb cb-> cb4 cb8 cb-> |
      \bar ":|][|:"
      cb4 cb-> cb8 cb cb cb-> | r8 cb cb cb-> cb4 cb8 cb-> | \break
      \bar ":|][|:"
      cb4 cb-> cb8 cb cb cb-> | r8 cb cb cb-> cb4 cb8 cb-> |
      \bar ":|][|:"
      cb4 cb-> cb8 cb cb cb-> | r8 cb cb cb-> cb4 cb8 cb-> | \break
      \bar ":|][|:"
      cb4 cb-> cb8 cb cb cb-> | r8 cb cb cb-> cb4 cb8 cb-> |
      \bar ":|][|:"
      cb4 cb-> cb8 cb cb cb-> | r8 cb cb cb-> cb4 cb8 cb-> | \break
      \bar ":|][|:"
      cb4 cb-> cb8 cb cb cb-> | r8 cb cb cb-> cb4 cb8 cb-> |
      \bar ":|][|:"
      cb4 cb-> cb8 cb cb cb-> | r8 cb cb cb-> cb4 cb8 cb-> | \break
      \bar ":|]"
    }
    \newDrumVoiceTwo \drummode { 
      s8 timh s4 s2 | s2. timl4 |
      s8 timh s4 s2 | s2 s8 timl8 timl4 |
      timh8 timh s4 s2 | s2. timl4 |
      timl8 timh s4 s4 timl8 timl8 | s2. s8 timl8 |
      timl4 s8 timh s2 | s2. s8 timl8 |
      s8 timh timh4 s4 s8 timl8 | timh8 s8 s2 timl4 |
      timl8 timh s4 s4 s4 | s4. timl8 timl8 timh8 s8 timl8 |
      timl4 s2. | s4. timl8 s8 timh8 s8 timl8 |
    }
>>