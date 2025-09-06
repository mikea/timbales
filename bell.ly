\version "2.24.2"
\include "common/all.ly"

date = #(strftime "%Y-%m-%d" (localtime (current-time)))

\header {
  title = "Bell Patterns"
  instrument = "Timbales"
  tagline = \markup { \date "https://mikea.github.io/timbales/" }
}

\newTimbalesStaff <<
    \newDrumVoiceOne \drummode { 
        \sectionLabel "2-3 clave"
        \bar ".|:"

        % 4-4-4-4
        cb4^> cb4^> cb4^> cb4^> | cb4^> cb8 cb8 cb4^> cb4^> | \bar ":..:"
        cb4^> cb4^> cb4^> cb4^> | cb4^> cb8 cb8^> r8 cb8^> r8 cb8 | \bar ":..:"
        \break

        % 4-4-4
        cb4^> cb4^> cb4^> cb8 cb8 | cb4^> cb8 cb8 cb4^> cb4^> | \bar ":..:"
        cb4^> cb4^> cb4^> cb8 cb8 | cb4^> cb8 cb8 cb4^> cb8 cb8 | \bar ":..:"
        \break
        cb4^> cb4^> cb4^> cb8 cb8 | cb8 cb8 cb8 cb8^> r8 cb8^> r8 cb8 | \bar ":..:"
        cb4^> cb4^> cb4^> cb8 cb8^> | r8 cb8 cb8 cb8 cb4^> cb4^> | \bar ":..:"
        \break
        cb4^> cb4^> cb4^> cb8   cb8^> | r8 cb8 cb8 cb8 cb4^> cb8 cb8 | \bar ":..:"
        cb4^> cb4^> cb4^> r8    cb8 | cb4^> cb8 cb8 cb4^> cb8 cb8 | \bar ":..:"
        \break
        cb4^> cb4^> cb4^> r8    cb8 | cb4^> cb8 cb8^> r8 cb8^> r8 cb8 | \bar ":..:"

        % 4-4-8
        cb4^> cb4^> cb8 cb8   cb8 cb8   | cb4^> cb8 cb8   cb4^> cb8   cb8 | \bar ":..:"
        \break
        cb4^> cb4^> cb8 cb8   cb8 cb8   | cb4^> cb8 cb8^> r8      cb8   cb8 cb8 | \bar ":..:"
        cb4^> cb4^> cb8 cb8   cb8 cb8   | cb4^> cb8 cb8^> r8      cb8^> r8    cb8 | \bar ":..:"
        \break
        cb4^> cb4^> cb8 cb8   cb8 cb8   | cb8   cb8 cb8   cb8^> r8      cb8 cb8 cb8 | \bar ":..:"
        cb4^> cb4^> cb8 cb8   cb8 cb8^> | r8      cb8 cb8   cb8   cb4^> cb4^> | \bar ":..:"
        \break
        \textMark "Mambo"
        cb4^> cb4^> cb8 cb8   cb8 cb8^> | r8 cb8 cb8 cb8 cb4^> cb8 cb8 | \bar ":..:"
        cb4^> cb4^> cb8 cb8   cb8 cb8^> | r8 cb8 cb8 cb8^> r8 cb8^> r8 cb8 | \bar ":..:"
        \break
        cb4^> cb4^> cb8 cb8   cb8 cb8^> | r8 cb8^> r8 cb8^> r8 cb8 cb8 cb8 | \bar ":..:"
        cb4^> cb4^> cb8 cb8^> r8 cb8      | cb4^> cb8 cb8 cb4^> cb8 cb8 | \bar ":..:"
        \break
        \textMark "Cascara"
        cb4^> cb4^> cb8 cb8^> r8 cb8      | cb4^> cb8   cb8^> r8 cb8^> r8 cb8 | \bar ":..:"
        cb4^> cb4^> cb8 cb8^> r8 cb8      | cb8   cb8^> r8      cb8^> r8 cb8^> r8 cb8 | \bar ":..:"
        \break
        cb4^> cb4^> cb8 cb8^> r8 cb8^>    | r4      cb8   cb8   cb4^> cb8 cb8 | \bar ":..:"
        cb4^> cb4^> cb8 cb8^> r8 cb8^>    | r8      cb8   cb8   cb8 cb4^> cb4^> | \bar ":..:"
        \break
        cb4^> cb4^> cb8 cb8^> r8 cb8^>    | r8      cb8   cb8   cb8 cb4^> cb8 cb8 | \bar ":..:"
        cb4^>   cb4^>   cb8   cb8^>   r8 cb8^>      | r8      cb8     cb8     cb8^> r8 cb8^> r8 cb8 | \bar ":..:"
        \break
        cb4^> cb4^> cb8 cb8^> r8 cb8^>    | r8      cb8^> r8      cb8^> r8 cb8 cb8 cb8 | \bar ":..:"

        % 4-4-r8
        cb4^> cb4^> r8    cb8^> r8 cb8     | cb4^> cb8   cb8   cb4^> cb8   cb8 | \bar ":..:"
        \break
        cb4^> cb4^> r8    cb8^> r8 cb8     | cb4^> cb8   cb8^> r8      cb8^> r8   cb8 | \bar ":..:"
        cb4^> cb4^> r8    cb8^> r8 cb8^>   | r8      cb8   cb8 cb8   cb4^>  cb8 cb8 | \bar ":..:"
        \break
        cb4^> cb4^> r8    cb8^> r8 cb8^>   | r8      cb8   cb8 cb8^> r8 cb8^> r8 cb8^> | \bar ":..:"
        cb4^> cb4^> r8    cb8^> r8 cb8^> | r8      cb8^> r8    cb8^> r8 cb8 cb8 cb8 | \bar ":..:"


        % 4
        \break
        cb4^> cb8 cb8 cb8 cb8 cb8 cb8 | cb4^> cb8 cb8 cb4^> cb8 cb8 | \bar ":..:"
        cb4^> cb8 cb8 cb8 cb8 cb8 cb8^> | r8 cb8 cb8 cb8 cb4^> cb8 cb8 | \bar ":..:"

        % 8
        \break
        cb8 cb8 cb4^> cb8 cb8 cb8 cb8^> | cb4^> cb8 cb8 cb4^> cb8 cb8 | \bar ":..:"
        cb8 cb8 cb4^> cb8 cb8 cb8 cb8^> | r8 cb8 cb8 cb8 cb4^> cb8 cb8 | \bar ":..:"
        
        % r8-8
        \break
        r8 cb8 cb4^> cb8    cb8 cb4^> | cb4^> cb8 cb8   cb4^> cb8 cb8^> | \bar ":..:"
        r8 cb8 cb4^> cb8    cb8 cb4^> | cb4^> cb8 cb8^> r8      cb8^> r8    cb8^> | \bar ":..:"
        \break
        r8 cb8 cb4^> cb8    cb8 cb4^> | cb8   cb8 cb4^> cb4^> cb8 cb8^> | \bar ":..:"
        r8 cb8 cb4^> cb8    cb8 cb8 cb8 | cb4^> cb8 cb8^> r8 cb8^> r8    cb8^> | \bar ":..:"
        \break
        r8 cb8 cb4^> cb8    cb8 r8    cb8 | cb4^> cb8 cb8^> r8 cb8   cb8 cb8^> | \bar ":..:"
        r8 cb8 cb4^> cb8    cb8 r8    cb8 | cb4^> cb8 cb8^> r8 cb8^> r8    cb8^> | \bar ":..:"
        \break
        r8 cb8 cb8   cb8^>  r8    cb8 cb4^> | cb4^> cb8 cb8 cb4^> cb8 cb8^> | \bar ":..:"

        \bar ":|."
    }
>>
