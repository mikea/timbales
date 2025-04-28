\version "2.24.2"

\include "common/all.ly"

date = #(strftime "%Y-%m-%d" (localtime (current-time)))

\header {
  title = "Cha-Cha-Cha"
  instrument = "Timbales"
  tagline = \markup { "https://github.com/mikea/timbales/ - " \date  }
}

\newTimbalesStaff <<
    \newDrumVoiceOne \drummode { 
        \sectionLabel "Bell Patterns"
        \bar ".|:"
        cb4^> cb4^> cb4^> cb4^> | \bar ":..:"
        cb4^> cb8^> cb8 cb4^> cb8^> cb8 | \bar ":..:"
        cb4^> cb4^> cb4^> cb4^> | cb4^> cb8^> cb8 cb8^> cb8 cb8^> cb8 | \bar ":..:"
        cb8^> cb8 cb8^> cb8  cb8^> cb8  cb8^> cb8  | \bar ":..:"
        cb8^> cb16 cb16 cb8^> cb8  cb8^> cb8  cb8^> cb8  | \bar ":..:"
        cb8^> cb16 cb16 cb8^> cb16 cb16  cb8^> cb8  cb8^> cb8  | \bar ":..:"
        cb16^> cb8 cb16 cb8^> cb8  cb8^> cb8  cb8^> cb8  | \bar ":..:"
        cb16^> cb8 cb16 cb16^> cb8 cb16  cb8^> cb8  cb8^> cb8  | \bar ":..:"
        cb16^> cb8 cb16 cb8^> cb16 cb16  cb8^> cb8  cb8^> cb8  | \bar ":..:"
        cb16^> cb8 cb16 cb8^> cb16^> cb16~ cb16 cb16  cb8^> cb8^> cb8  | \bar ":..:"
    }
>>

\newTimbalesStaff <<
    \newDrumVoiceOne \drummode { 
        \sectionLabel "Cascareo"
        \bar ".|:"
        <<ssh8 ssl8>> \tuplet 3/2 { ssh16 ssl16 ssl16 } ssh8 ssl8 
        <<ssh8 ssl8>> \tuplet 3/2 { ssh16 ssl16 ssl16 } ssh8 ssl8
        \bar ":..:"
        <<ssh8 ssl8>> ssl16 ssl16 ssh8 ssl8 
        <<ssh8 ssl8>> ssl16 ssl16 ssh8 ssl8
        | \bar ":..:"
    }
>>

\newTimbalesStaff <<
    \newDrumVoiceTwo \drummode { 
        \sectionLabel "LH Patterns"
        \bar ".|:"

        r4 \ghost timl4 r4 timl4 | \bar ":..:"
        r4 \ghost timl4 r4 timl8 timl8 | \bar ":..:"
        r4. \ghost timl8 r4 timl8 timl8 | \bar ":..:"
        r4 \ghost timl8 \ghost timl8 r4 timl8 \ghost  timl8 | \bar ":..:"
        r8 \ghost timl8 \ghost timl8 timl8 r8 \ghost timl8 timl8 timl8 | \bar ":..:"
        r4 \ghost timh4 r4 timl4 | \bar ":..:"
        r4. \ghost timh8 r4 timl8 timl8 | \bar ":..:"

        \bar ":|."
    }
>>

\newTimbalesStaff <<
    \newDrumVoiceOne \drummode { 
        \sectionLabel "Fills"
        \bar ".."
        <<cb16 timl16>> <<cb16 timl16>> <<cb16 timl16>> <<cb16 timl16>> <<cb4 timl4>> <<cb16 timl16>> <<cb16 timl16>> <<cb16 timl16>> <<cb16 timl16>> <<cb4 timl4>>| 
        \bar ".."
        <<cb8. timl8.>> <<cb16 timl16>> <<cb8. timl8.>> <<cb16 timl16>> <<cb8. timl8.>> <<cb16 timl16>> <<cb8 timl8>> <<cb8 timl8>>  | 
        \bar ".."
        <<cb8. timl8.>> <<cb16 timl16>> <<cb8. timl8.>> <<cb16 timl16>> \tuplet 3/2 { <<cb8 timl8>> <<cb8 timl8>> <<cb8 timl8>> }  \tuplet 3/2 { <<cb8 timl8>> <<cb8 timl8>> <<cb8 timl8>> } | 
        \bar ".."
        r8 <<cb16 timl16>> <<cb16 timl16>> <<cb16 timl16>> <<cb16 timl16>> <<cb8 timl8>> r8 <<cb16 timl16>> <<cb16 timl16>> <<cb16 timl16>> <<cb16 timl16>> <<cb8 timl8>> | 
        \bar ".."
        <<cb16 timl16>> <<cb16 timl16>> <<cb8 timl8>> r8 <<cb16 timl16>> <<cb16 timl16>> <<cb4 timl4>> <<cb16 timl16>> <<cb16 timl16>> <<cb8 timl8>>| 
        \bar ".."
        <<cb16 timl16>> <<cb16 timl16>> <<cb16 timl16>> <<cb16 timl16>> <<cb8 timl8>> <<cb16 timl16>> <<cb16 timl16>> <<cb16 timl16>> <<cb16 timl16>> <<cb8 timl8>> <<cb16 timl16>> <<cb16 timl16>> <<cb16 timl16>> <<cb16 timl16>> | 
        \bar ".."
        <<cb16 timl16>> <<cb8 timl8>> <<cb16 timl16>> <<cb8 timl8>> <<cb16 timl16>> <<cb16~ timl16~>> <<cb16 timl16>> <<cb16 timl16>> <<cb8 timl8>> <<cb8 timl8>> <<cb8 timl8>> | 
        \bar ".."
    }
>>

\newTimbalesStaff <<
    \newDrumVoiceOne \drummode { 
        \ghost timl8 cb8 cb8 \ghost timl8 cb4 <<cb4 timl4>> | 
        \bar "||"
        \drag timl4 timh4^> \rs \rs 
        \bar ".."
    }
>>