\version "2.24.2"
\include "charts/common.ly"

date = #(strftime "%Y-%m-%d" (localtime (current-time)))

\header {
  title = "Campiña"
  subsubtitle = "(Salsa 2-3)"
  composer = "Afro Cuban Jazz Project"
  instrument = "Timbales"
  tagline = \markup { "Campiña - https://mikea.github.io/timbales/ - " \date }
}

\newTimbalesStaff <<
    \newDrumVoiceOne \drummode { 
        \tempo 4 = 176

        \sect "Intro" "clave 2-3, montuno"
        r1 | r1 | r1 | r1 |
        r1 | r1 | r2 r4 r8 timl8 | timl4 timl8 timh4.^> timh4:16
        
        \ssect "campanas 2-3"
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        
        \bar ":|][|:"

        \sect "Trumpet solo" "cascara 2-3"
        \comp #4 | \comp #4 | \textMark "last time" timh4 timh4 r8 timh8 r8 timl8 | r8 timl8 timl8 timh4.^> timh4:16 \textEndMark "x4" |
        \bar ":|][|:"

        \sect-no-break "Coro" "campanas 2-3"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x4" |
        \bar ":|][|:"

        \sect "Trumpet solo 2" "cascara 2-3"
        \comp #4 | \comp #4 | \textMark "last time" timh4 timh4 r8 timh8 r8 timl8 | r8 timl8 timl8 timh4.^> timh4:16 \textEndMark "x4" |
        \bar ":|][|:"

        \sect-no-break "Coro 2" "campanas 2-3"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x4" |
        \bar ":|][|:"

        \sect "Voz" "cascara 2-3"        
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x6" |
        \bar ":|][|:"

        \sect-no-break "Coro 3" "campanas 2-3"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x4" |
        \bar ":|][|:"

        \sect "Voz 2" "cascara 2-3"        
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x5" |
        \bar ":|][|:"

        \sect-no-break "Coro/Trumpet" "campanas 2-3"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x4" |
        \bar ":|][|:"

        \sect "Tres Solo" "cascara 2-3"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x8" |
        \bar ":|][|:"

        \sect-no-break "Coro/Trumpet 2" "campanas 2-3"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x4" |
        \bar ":|][|:"

        \sect "Perc Solo" "cascara on campanas 2-3"
        \comp #4 | \comp #4 | \comp #4 | \textMark "last time" r8 cb8 cb8 cb8 cb8 r8 r4 \textEndMark "x8" |
        \bar ":|][|:"

        \sect "Coda (Trumpet)" "cascara 2-3"
        \comp #4 | \comp #4 | \textMark "last time" timh4 timh4 r8 timh8 r8 timl8 | r8 timl8 timl8 timh4.^> r4 \textEndMark "x4" |
        \bar ":|]"

    }
>>
