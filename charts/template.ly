\version "2.24.2"
\include "charts/common.ly"

date = #(strftime "%Y-%m-%d" (localtime (current-time)))

\header {
  title = "Title"
  subsubtitle = "(Style)"
  composer = "Composer"
  instrument = "Timbales"
  tagline = \markup { "Title - https://mikea.github.io/timbales/ - " \date }
}

\newTimbalesStaff <<
    \newDrumVoiceOne \drummode { 
        \tempo 4 = 999

        r1 | r1 | r1 | r1

        \fine
    }
>>
