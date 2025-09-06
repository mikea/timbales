\version "2.24.2"
\include "common/all.ly"

date = #(strftime "%Y-%m-%d" (localtime (current-time)))

\header {
  title = "LH Patterns"
  instrument = "Timbales"
  tagline = \markup { \date "https://mikea.github.io/timbales/" }
}

\newTimbalesStaff {
  \newDrumVoiceTwo \drummode { 
    \sectionLabel "LH Patterns"

    \bar ".|:" 

    r4 timl4_+ r4      timl4_o | r4 timl4_+ r4 timl4_o | \bar ":..:"
    r4 timl4_+ r4      timl8_o timl8_o | r4 timl4_+ r4 timl8_o timl8_o | \bar ":..:"
    \break
    r4 timl8_+ timl8_+ r4 timl8_o timl8_o | r4 timl8_+ timl8_+ r4 timl8_o timl8_o | \bar ":..:"
    r4 timl8_+ timl8_+ r4 timl8_o timl8_o | r4 timl4_+ r4 timl8_o timl8_o | \bar ":..:"
    \break
    r4 timl8_+ timl8_+ r4 timl8_o timl8_o | r4 timl4_+ r8 timl8_o r8 timl8_o | \bar ":..:"
    r4 timl8_+ timl8_+ r4 timl8_o timl8_o | r4 timl8_+ timl8_+ r8 timl8_o r8 timl8_o | \bar ":..:"
    \break
    r4 timl4_+ r4      timl8_o timl8_o | r4 timl4_+ r8 timl8_o r8 timl8_o | \bar ":..:"
    r4 timl8_+ timl8_+ r4 timl8_o timl8_o | r4 timl4_+ r8 timl8_o timl8_o timl8_o | \bar ":..:"
    \break
    r8 timl8_+ timl8_+ timl8_+ r4 timl8_o timl8_o | r4 timl4_+ r8 timl8_o timl8_o timl8_o | \bar ":..:"
    r8 timl8_+ timl8_+ timl8_+ r4 timl8_o timl8_o | r4 timl8_+ timl8_+ r8 timl8_o timl8_o timl8_o | \bar ":..:"
    \break
    r8 timl8_+ r8 timl8_+ r8 timl8_o r8 timl8_o | r8 timl8_+ timl4_+ r8 timl8_o timl8_o timl8_o | \bar ":..:"
    r4. timl8_+ r4      timl4_o | r4. timl8_+ r4 timl4_o | \bar ":..:"
    \break
    r4 timl4_o r4      timl4_+ | r4 timl4_o r4 timl4_+ | \bar ":..:"
    r4. timl8_o r4      timl4_+ | r4. timl8_o r4 timl4_+ | \bar ":..:"

    \bar ":|."
  }
}
