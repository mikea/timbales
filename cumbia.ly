\version "2.24.2"

\include "common/all.ly"

date = #(strftime "%Y-%m-%d" (localtime (current-time)))

\header {
  title = "Cumbia"
  instrument = "Timbales"
  tagline = \markup { "https://mikea.github.io/timbales// - " \date  }
}

\newTimbalesStaff <<
    \newDrumVoiceOne \drummode { 
        \bar ".|:"
        ssh4 8 8 4 8 8 | ssh4 8 8 4 8 8
        \bar ":|.|:"
        ssh4 8 8 4 8 8 | ssh4 8 8 4 8 8
        \bar ":|.|:"
        cl4 cb8 cb8 cl4 cb8 cb8 | cl4 cb8 cb8 cl4 cb8 cb8
        \bar ":|.|:"
        rb4 cymc4 rb4 cymc4 | rb4 cymc4 rb4 cymc4
        \bar ":|."
    }
    \newDrumVoiceTwo \drummode { 
        timl4 timl4 s4 timl4 | s1 |
        s4 timlo4 s4 timlm4 | s4 timlo4 s4 timlm4 |
    }
>>

\newTimbalesStaff <<
    \newDrumVoiceOne \drummode { 
        \sectionLabel "Fills"
        \rs r8 timh16_L timh16_L timh8_"R" timh8_"L" timh4^>_"R" | \bar "||"
        \rs r8 timh16_L timh16_L timh8_"R" timl8_L timl4_"R" | <<cymc4 timh4^> >> \rs \rs \rs \bar "||"
        \rs \rs \rs r8 timh16_L timh16_L | timh4_"R" timh4_"R" r8 timl8_L timl4_"R" | \bar "||"
    }
>>