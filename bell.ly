\version "2.24.2"

\include "common/all.ly"

date = #(strftime "%Y-%m-%d" (localtime (current-time)))

\header {
  title = "Bell Patterns"
  tagline = \markup { \date "https://github.com/mikea/timbales" }
}

%% 2-3


\newTimbalesStaff <<
    \drumVoiceOne \drummode { 
        \sectionLabel "2-3 clave"
        \bar ".|:"

        % 4-4-4-4
        cb4^>_O cb4^>_+ cb4^>_O cb4^>_+ | cb4^>_O cb8_+ cb8_+ cb4^>_O cb4^>_+ | \bar ":..:"
        cb4^> cb4^> cb4^> cb4^> | cb4^> cb8 cb8^> r8 cb8^> r8 cb8 | \bar ":..:"
        \break

        % 4-4-4
        cb4^>_O cb4^>_+ cb4^>_O cb8_+ cb8_+ | cb4^>_O cb8_+ cb8_+ cb4^>_O cb4^>_+ | \bar ":..:"
        cb4^>_O cb4^>_+ cb4^>_O cb8_+ cb8_+ | cb4^>_O cb8_+ cb8_+ cb4^>_O cb8_+ cb8_+ | \bar ":..:"
        \break
        cb4^>_O cb4^>_+ cb4^>_O cb8_+ cb8_+ | cb8_O cb8_+ cb8_+ cb8^>_O r8 cb8^>_+ r8 cb8_+ | \bar ":..:"
        cb4^>_O cb4^>_+ cb4^>_O cb8_+ cb8^>_O | r8 cb8_+ cb8_+ cb8_+ cb4^>_O cb4^>_+ | \bar ":..:"
        \break
        cb4^>_O cb4^>_+ cb4^>_O cb8   cb8^> | r8 cb8 cb8 cb8 cb4^> cb8 cb8 | \bar ":..:"
        cb4^>_O cb4^>_+ cb4^>_O r8    cb8_+ | cb4^>_O cb8_+ cb8_+ cb4^>_O cb8_+ cb8_+ | \bar ":..:"
        \break
        cb4^>_O cb4^>_+ cb4^>_O r8    cb8_+ | cb4^>_O cb8_+ cb8^>_O r8 cb8^>_+ r8 cb8_+ | \bar ":..:"

        % 4-4-8
        cb4^>_O cb4^>_+ cb8_O cb8_+   cb8_+ cb8_+   | cb4^>_O cb8_+ cb8_+   cb4^>_O cb8_+   cb8_+ | \bar ":..:"
        \break
        cb4^>_O cb4^>_+ cb8_O cb8_+   cb8_+ cb8_+   | cb4^>_O cb8_+ cb8^>_O r8      cb8_+   cb8_+ cb8_+ | \bar ":..:"
        cb4^>_O cb4^>_+ cb8_O cb8_+   cb8_+ cb8_+   | cb4^>_O cb8_+ cb8^>_O r8      cb8^>_+ r8    cb8_+ | \bar ":..:"
        \break
        cb4^>_O cb4^>_+ cb8_O cb8_+   cb8_+ cb8_+   | cb8_O   cb8_+ cb8_+   cb8^>_O r8      cb8_+ cb8_+ cb8_+ | \bar ":..:"
        cb4^>_O cb4^>_+ cb8_O cb8_+   cb8_+ cb8^>_O | r8      cb8_+ cb8_+   cb8_+   cb4^>_O cb4^>_+ | \bar ":..:"
        \break
        \textMark "Mambo"
        cb4^>_O cb4^>_+ cb8_O cb8_+   cb8_+ cb8^>_O | r8 cb8_+ cb8_+ cb8_+ cb4^>_O cb8_+ cb8_+ | \bar ":..:"
        cb4^>_O cb4^>_+ cb8_O cb8_+   cb8_+ cb8^>_O | r8 cb8_+ cb8_+ cb8^>_O r8 cb8^>_+ r8 cb8_+ | \bar ":..:"
        \break
        cb4^>_O cb4^>_+ cb8_O cb8_+   cb8_+ cb8^>_O | r8 cb8^>_+ r8 cb8^>_+ r8 cb8_O cb8_+ cb8_+ | \bar ":..:"
        cb4^>_O cb4^>_+ cb8_O cb8^>_+ r8 cb8_+      | cb4^>_O cb8_+ cb8_+ cb4^>_O cb8_+ cb8_+ | \bar ":..:"
        \break
        \textMark "Cascara"
        cb4^>_O cb4^>_+ cb8_O cb8^>_+ r8 cb8_+      | cb4^>_O cb8_+   cb8^>_O r8 cb8^>_+ r8 cb8_+ | \bar ":..:"
        cb4^>_O cb4^>_+ cb8_O cb8^>_+ r8 cb8_+      | cb8_O   cb8^>_+ r8      cb8^>_+ r8 cb8^>_+ r8 cb8_+ | \bar ":..:"
        \break
        cb4^>_O cb4^>_+ cb8_O cb8^>_+ r8 cb8^>_O    | r4      cb8_+   cb8_+   cb4^>_O cb8_+ cb8_+ | \bar ":..:"
        cb4^>_O cb4^>_+ cb8_O cb8^>_+ r8 cb8^>_O    | r8      cb8_+   cb8_+   cb8_+ cb4^>_O cb4^>_+ | \bar ":..:"
        \break
        cb4^>_O cb4^>_+ cb8_O cb8^>_+ r8 cb8^>_O    | r8      cb8_+   cb8_+   cb8_+ cb4^>_O cb8_+ cb8_+ | \bar ":..:"
        cb4^>   cb4^>   cb8   cb8^>   r8 cb8^>      | r8      cb8     cb8     cb8^> r8 cb8^> r8 cb8 | \bar ":..:"
        \break
        cb4^>_O cb4^>_+ cb8_O cb8^>_+ r8 cb8^>_O    | r8      cb8^>_+ r8      cb8^>_+ r8 cb8_O cb8_+ cb8_+ | \bar ":..:"

        % 4-4-r8
        cb4^>_O cb4^>_+ r8    cb8^>_O r8 cb8_+     | cb4^>_O cb8_+   cb8_+   cb4^>_O cb8_+   cb8_+ | \bar ":..:"
        \break
        cb4^>_O cb4^>_+ r8    cb8^>_O r8 cb8_+     | cb4^>_O cb8_+   cb8^>_O r8      cb8^>_+ r8   cb8_+ | \bar ":..:"
        cb4^>_O cb4^>_+ r8    cb8^>_O r8 cb8^>_O   | r8      cb8_+   cb8_+ cb8_+   cb4^>_O  cb8_+ cb8_+ | \bar ":..:"
        \break
        cb4^>_O cb4^>_+ r8    cb8^>_O r8 cb8^>_O   | r8      cb8_+   cb8_+ cb8^>_O r8 cb8^>_+ r8 cb8^>_+ | \bar ":..:"
        cb4^>_O cb4^>_+ r8    cb8^>_O r8 cb8^>_O | r8      cb8^>_+ r8    cb8^>_+ r8 cb8_O cb8_+ cb8_+ | \bar ":..:"


        % 4
        \break
        cb4^>_O cb8_+ cb8_+ cb8_O cb8_+ cb8_+ cb8_+ | cb4^>_O cb8_+ cb8_+ cb4^>_O cb8_+ cb8_+ | \bar ":..:"
        cb4^> cb8 cb8 cb8 cb8 cb8 cb8^> | r8 cb8 cb8 cb8 cb4^> cb8 cb8 | \bar ":..:"

        % 8
        \break
        cb8_+ cb8_+ cb4^>_O cb8_O cb8_+ cb8_+ cb8^>_+ | cb4^>_O cb8_+ cb8_+ cb4^>_O cb8_+ cb8_+ | \bar ":..:"
        cb8 cb8 cb4^> cb8 cb8 cb8 cb8^> | r8 cb8 cb8 cb8 cb4^> cb8 cb8 | \bar ":..:"
        
        % r8-8
        \break
        r8 cb8_+ cb4^>_O cb8_O    cb8_+ cb4^>_+ | cb4^>_O cb8_+ cb8_+   cb4^>_O cb8_+ cb8^>_O | \bar ":..:"
        r8 cb8_+ cb4^>_O cb8_O    cb8_+ cb4^>_+ | cb4^>_O cb8_+ cb8^>_O r8      cb8^>_+ r8    cb8^>_+ | \bar ":..:"
        \break
        r8 cb8_+ cb4^>_O cb8_O    cb8_+ cb4^>_+ | cb8_O   cb8_+ cb4^>_+ cb4^>_O cb8_+ cb8^>_O | \bar ":..:"
        r8 cb8_+ cb4^>_O cb8_O    cb8_+ cb8_+ cb8_+ | cb4^>_O cb8_+ cb8^>_O r8 cb8^>_+ r8    cb8^>_+ | \bar ":..:"
        \break
        r8 cb8_+ cb4^>_O cb8_O    cb8_+ r8    cb8_+ | cb4^>_O cb8_+ cb8^>_O r8 cb8_+   cb8_+ cb8^>_O | \bar ":..:"
        r8 cb8_+ cb4^>_O cb8_O    cb8_+ r8    cb8_+ | cb4^>_O cb8_+ cb8^>_O r8 cb8^>_+ r8    cb8^>_+ | \bar ":..:"
        \break
        r8 cb8_+ cb8_+   cb8^>_O  r8    cb8_+ cb4^>_+ | cb4^>_O cb8_+ cb8_+ cb4^>_O cb8_+ cb8^>_O | \bar ":..:"

        r1 | r1 |

        \bar ":|."
    }
>>
