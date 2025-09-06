\version "2.24.2"

\include "common/all.ly"

date = #(strftime "%Y-%m-%d" (localtime (current-time)))

\header {
  title = "Intros/Fills"
  instrument = "Timbales"
  tagline = \markup { \date "https://mikea.github.io/timbales/" }
}


% one bar

\newTimbalesStaff \newDrumVoiceOne \drummode { 
    
    \textMark "1" \rs \rs \rs \flam timh4^> | \bar ".."
    \textMark "2" \rs \rs \rs \drag timh4^> | \bar ".."
    \textMark "3" \rs \rs \drag timh8^> timh8^> timl4 | \bar ".."    
    \textMark "4" \rs \rs \rs \slurDown timh4:16~ | timh4^> \rs \rs \rs | \bar ".."
    \break
    \textMark "5" \rs \rs r8 timh4.:16~ | timh4^> \rs \rs \rs | \bar ".."
    \textMark "6" \rs \rs timh2:16~ | timh4^> \rs \rs \rs | \bar ".."
    \textMark "7" \rs r8 timh:16~ timh2:16~ | timh4^> \rs \rs \rs | \bar ".."
    \break
    \textMark "8" \rs timh2.:16~ | timh4^> \rs \rs \rs | \bar ".."
    \textMark "9" r8 timh:16~ timh2.:16~ | timh4^> \rs \rs \rs | \bar ".."
    \textMark "10" timh1:16~ | timh4^> \rs \rs \rs | \bar ".."
    \break
    \textMark "11" timh2:16~ timh8 timh r4 | \rs \rs \rs \rs | \bar ".."
    \textMark "12" timh2:16~ timh8^> \flam timh8^> r8 timl | <<timh4 cymc>> \rs \rs \rs \bar ".."
    \textMark "13" timl4 timh8 timl8 r8 timh4.:16~ | timh4^> \rs \rs \rs | \bar ".."
    \break
    \textMark "14" \rs \rs \rs r8 \flam timh^> | timl4 timh8 timl r4 timh4:16~ | timh4^> \rs \rs \rs |  \bar ".."
    \textMark "15" \rs \rs \rs r8 \flam timh^> | timl4 timl8 timh r8 timh4.:16~ | timh4^> \rs \rs \rs |  \bar ".."
    \break
    \textMark "16" \rs \rs \rs r8 \flam timh^> | timl4 timl8 timh^> timh2:16~ | timh4^> \rs \rs \rs |  \bar ".."
    \textMark "17" \rs \rs \rs r8 \flam timh8^> | timl4 timl8 timh8 timl8 timh4. | timh8^> \flam timh8^> \rs \rs \rs \bar ".."
    \break
    \textMark "18" \rs \rs \drag timh8^> timh8^> timl timl | <<timh4 cymc>> \rs \rs \rs \bar ".."
    \textMark "19" \rs \rs \rs timl8 timl8 | r8 <<timh4. cymc>> \rs \rs \bar ".."
    \textMark "20" \drag timh4^> \drag timh4^> \drag timh8^> timh8^> timl4 | <<timh4 cymc>> \rs \rs \rs \bar ".."
    \break
    \textMark "21" \rs \rs \rs timh4:16~ | timh8^> <<timh8 cymc>> r4 r4 timh4:16 \bar ".."
    \textMark "22" \flam timh8^> timl timl \flam timh^> r8 timh4.:16~ | timh4^> \rs \rs \rs \bar ".."
    \textMark "23" timh4:16~ timh16 timh timh8 timh timl r timh | <<timh4 cymc>> \rs \rs \rs \bar ".."
    \break
    \textMark "24" timh4:16~ timh16 timh timh8 timh timl timl timh | r8 timh8^> timh8^> timl r timl r <<cymc timh>> \bar ".."
    \textMark "25" \rs r8 timh8^> timh2:16~ | timh8^> timh8^> timh16^> timh16^> r8 \rs \rs \bar ".."
    \textMark "26" \rs \rs r8 timh16 timh16 timh16^> timh16^> timh8^> | r8 <<timh4. cymc>> \rs \rs \bar ".."
    \break
    \textMark "27" timh2:16~ \tuplet 3/2 {timh4 timh4 timh4}  | r8 \flam timh8^> r4 \rs \rs \bar ".."
    \textMark "28" timh4:16~ timh8^> timl8 \tuplet 3/2 {\flam timh4^> timl4 \flam timh4^>} | r8 timh8^> timh4^> r8 timl4 timh8 \bar ".."
    \textMark "29" \rs \rs cb16 cb16 cb16 cb16 cb8 cb8 | r8 timl timl timh r timh^> <<cymc4 timh>> \bar ".."
}

