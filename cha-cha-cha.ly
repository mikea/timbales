\version "2.24.2"

\include "common/all.ly"

date = #(strftime "%Y-%m-%d" (localtime (current-time)))

\header {
  title = "Cha-Cha-Cha"
  instrument = "Timbales"
  tagline = \markup { \date "https://github.com/mikea/timbales" }
}

\newTimbalesStaff <<
    \newDrumVoiceOne \drummode { 
        \sectionLabel "Bell Patterns"
        \bar ".|:"


        cb4^>_O cb4^>_O cb4^>_O cb4^>_O | \bar ":..:"
        cb8^>_O cb8_+ cb8^>_O cb8_+  cb8^>_O cb8_+  cb8^>_O cb8_+  | \bar ":..:"
        cb8^>_O cb16_+ cb16_+ cb8^>_O cb8_+  cb8^>_O cb8_+  cb8^>_O cb8_+  | \bar ":..:"
        cb8^>_O cb16_+ cb16_+ cb8^>_O cb16_+ cb16_+  cb8^>_O cb8_+  cb8^>_O cb8_+  | \bar ":..:"
        cb16^>_O cb8_+ cb16_+ cb8^>_O cb8_+  cb8^>_O cb8_+  cb8^>_O cb8_+  | \bar ":..:"
        cb16^>_O cb8_+ cb16_+ cb16^>_O cb8_+ cb16_+  cb8^>_O cb8_+  cb8^>_O cb8_+  | \bar ":..:"
        cb16^>_O cb8_+ cb16_+ cb8^>_O cb16_+ cb16_+  cb8^>_O cb8_+  cb8^>_O cb8_+  | \bar ":..:"
        cb16^>_O cb8_+ cb16_+ cb8^>_O cb16^>_O cb16_+~ cb16 cb16_+  cb8^>_O cb8^>_O cb8_+  | \bar ":..:"
    }
>>

\newTimbalesStaff <<
    \newDrumVoiceOne \drummode { 
        \sectionLabel "LH Patterns"
        \bar ".|:"

        r4 timl4_+ r4 timl4_O | \bar ":..:"
        r4 timl4_+ r4 timl8_O timl8_O | \bar ":..:"
        r4. timl8_+ r4 timl8_O timl8_O | \bar ":..:"
        r4 timl8_+ timl8_+ r4 timl8_O timl8_+ | \bar ":..:"
        r8 timl8_+ timl8_+ timl8_O r8 timl8_+ timl8_O timl8_O | \bar ":..:"

        \bar ":|."
    }
>>

\newTimbalesStaff <<
    \newDrumVoiceOne \drummode { 
        \sectionLabel "Fills"
        \bar ".|:"

        <<cb16 timl16>> <<cb16 timl16>> <<cb16 timl16>> <<cb16 timl16>> <<cb4 timl4>> <<cb16 timl16>> <<cb16 timl16>> <<cb16 timl16>> <<cb16 timl16>> <<cb4 timl4>>| \bar ":..:"
        <<cb8. timl8.>> <<cb16 timl16>> <<cb8. timl8.>> <<cb16 timl16>> <<cb8. timl8.>> <<cb16 timl16>> <<cb8 timl8>> <<cb8 timl8>>  | \bar ":..:"
        <<cb8. timl8.>> <<cb16 timl16>> <<cb8. timl8.>> <<cb16 timl16>> \tuplet 3/2 { <<cb8 timl8>> <<cb8 timl8>> <<cb8 timl8>> }  \tuplet 3/2 { <<cb8 timl8>> <<cb8 timl8>> <<cb8 timl8>> } | \bar ":..:"
        r8 <<cb16 timl16>> <<cb16 timl16>> <<cb16 timl16>> <<cb16 timl16>> <<cb8 timl8>> r8 <<cb16 timl16>> <<cb16 timl16>> <<cb16 timl16>> <<cb16 timl16>> <<cb8 timl8>> | \bar ":..:"
        <<cb16 timl16>> <<cb16 timl16>> <<cb8 timl8>> r8 <<cb16 timl16>> <<cb16 timl16>> <<cb4 timl4>> <<cb16 timl16>> <<cb16 timl16>> <<cb8 timl8>>| \bar ":..:"
        <<cb16 timl16>> <<cb16 timl16>> <<cb16 timl16>> <<cb16 timl16>> <<cb8 timl8>> <<cb16 timl16>> <<cb16 timl16>> <<cb16 timl16>> <<cb16 timl16>> <<cb8 timl8>> <<cb16 timl16>> <<cb16 timl16>> <<cb16 timl16>> <<cb16 timl16>> | \bar ":..:"
        <<cb16 timl16>> <<cb8 timl8>> <<cb16 timl16>> <<cb8 timl8>> <<cb16 timl16>> <<cb16~ timl16~>> <<cb16 timl16>> <<cb16 timl16>> <<cb8 timl8>> <<cb8 timl8>> <<cb8 timl8>> | \bar ":..:"


        \bar ":|."
    }
>>