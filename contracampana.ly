\version "2.24.2"

\include "common/all.ly"

date = #(strftime "%Y-%m-%d" (localtime (current-time)))

\header {
  title = "Contracampana"
  instrument = "Timbales"
  tagline = \markup { \date "https://github.com/mikea/timbales" }
}


%% Basic Pattern

\newTimbalesStaff <<
    \newDrumVoiceOne \drummode { 
      \bar ".|:" 
      \sectionLabel "(2-3)"
      cb4 cb-> cb8 cb cb cb-> | r8 cb cb cb-> cb4 cb8 cb-> |
      \bar ":..:"
      \sectionLabel "(3-2)"
      r8 cb cb cb-> cb4 cb8 cb-> | cb4 cb-> cb8 cb cb cb-> |
      \bar ":|."
    }
    \newDrumVoiceTwo \drummode { 
      s4 \ghost timl s4 timl4 | s4 \ghost timl s4 timl4 |
      s4 \ghost timl s4 timl4 | s4 \ghost timl s4 timl4 |
    }
>>

\newTimbalesStaff <<
    \sectionLabel "with hands/sticks"
    \newDrumVoiceOne \drummode { 
      \bar ".|:" 
      cb4 cb-> cb8 cb cb cb-> | r8 cb cb cb-> cb4 cb8 cb-> |
      \bar ":..:"
      cb4 cb-> cb8 cb cb cb-> | r8 cb cb cb-> cb4 cb8 cb-> |
      \bar ":..:"
      cb4 cb-> cb8 cb cb cb-> | r8 cb cb cb-> cb4 cb8 cb-> |
      \bar ":|."
    }
    \newDrumVoiceTwo \drummode { 
      s4 \ghost timh4 s4 timl4 | s4 \ghost timh4 s4 timl4 |
      s4. \ghost timh8 s4 timl4 | s4. \ghost timh8 s4 timl4 |
      r8 \ghost timh4 \ghost timh4 r8 timl4 | \ghost timh4 \ghost timh4 r4 timl4 |
    }
>>

\newTimbalesStaff <<
    \sectionLabel "with cymbal"
    \newDrumVoiceOne \drummode { 
      \bar ".|:" 
      cb4 <<cb cymc>> cb8 cb <<cb cymc>> cb | cymc cb cb cb <<cb4 cymc>> cb8 cb |
      \bar ":..:"
      <<cb4 cymc>> <<cb cymc>> <<cb8 cymc>> <<cb cymc>> cb <<cb cymc>> | cymc cb <<cb cymc>> <<cb cymc>> cb8 cymc cb8 <<cb cymc>> |
      \bar ":|."
    }
>>

\newTimbalesStaff <<
    \sectionLabel "with cha-cha bell"
    \newDrumVoiceTwo \drummode { 
      \bar ".|:" 
      cb4 cb cb8 cb cb cb | r8 cb cb cb cb4 cb8 cb |
      \bar ":|."
    }
    \newDrumVoiceOne \drummode { 
      rbm4 rbn4 rbm4 rbn8 rbn8 | rbm4 rbn8 rbn8 rbm4 rbn8 rbn8 
    }
>>

\newTimbalesStaff <<
    \sectionLabel "with clave"
    \newDrumVoiceOne \drummode { 
      \bar ".|:" 
      cb4 cb-> cb8 cb cb cb-> | r8 cb cb cb-> cb4 cb8 cb-> |
      \bar ":..:"
      cb4 cb-> cb8 cb cb cb-> | r8 cb cb cb-> cb4 cb8 cb-> |
      \bar ":|."
    }
    \newDrumVoiceTwo \drummode { 
      s4 wbl wbl s4 | wbl4. wbl4. wbl4 |
      s4 wbl wbl s4 | wbl4. wbl2 wbl8 |
    }
>>
