\version "2.24.2"

\include "common/all.ly"

date = #(strftime "%Y-%m-%d" (localtime (current-time)))

\header {
  title = "Fills"
  instrument = "Timbales"
  tagline = \markup { \date "https://mikea.github.io/timbales/" }
}


% abanicos

\newTimbalesStaff \newDrumVoiceOne \drummode { 
\sectionLabel "Abanicos"
    \textMark "1" \rs \rs \rs timh4:16~ | timh4^> \rs \rs \rs | \bar ".."
    \textMark "2" \rs \rs r8 timh4.:16~ | timh4^> \rs \rs \rs | \bar ".."
    \textMark "3" \rs \rs timh2:16~ | timh4^> \rs \rs \rs | \bar ".."
    \textMark "4" \rs r8 timh:16~ timh2:16~ | timh4^> \rs \rs \rs | \bar ".."

    \break

    \textMark "5" \rs timh2.:16~ | timh4^> \rs \rs \rs | \bar ".."
    \textMark "6" r8 timh:16~ timh2.:16~ | timh4^> \rs \rs \rs | \bar ".."
    \textMark "7" timh1:16~ | timh4^> \rs \rs \rs | \bar ".."
    \textMark "8" timl4 timh8 timl8 r8 timh4.:16~ | timh4^> \rs \rs \rs | \bar ".."

    \break
    \textMark "9" \rs \rs \rs r8 \flam timh^> | timl4 timh8 timl r4 timh4:16~ | timh4^> \rs \rs \rs |  \bar ".."
    \textMark "10" \rs \rs \rs r8 \flam timh^> | timl4 timl8 timh r8 timh4.:16~ | timh4^> \rs \rs \rs |  \bar ".."
    \textMark "11" \rs \rs \rs r8 \flam timh^> | timl4 timl8 timh^> timh2:16~ | timh4^> \rs \rs \rs |  \bar ".."
    \break

    \textMark "12" \rs \rs \rs timh4:16~ | timh8^> <<timh8 cymc>> r4 r4 timh4:16 \bar ".."
    \textMark "13" \flam timh8^> timl timl \flam timh^> r8 timh4.:16~ | timh4^> \rs \rs \rs \bar ".."
    \textMark "14" \rs r8 timh8^> timh2:16~ | timh8^> timh8^> timh16^> timh16^> r8 \rs \rs \bar ".."
}

\newTimbalesStaff \newDrumVoiceOne \drummode { 
\sectionLabel "Rolls"
    \textMark "1" timh2:16~ timh8 timh r4 | \rs \rs \rs \rs | \bar ".."
    \textMark "2" timh2:16~ timh8^> \flam timh8^> r8 timl | <<timh4 cymc>> \rs \rs \rs \bar ".."
    \textMark "3" timh4:16~ timh16 timh timh8 timh timl timl timh | r8 timh8^> timh8^> timl r timl r <<cymc timh>> \bar ".."
    \break
    \textMark "4" timh2:16~ \tuplet 3/2 {timh4 timh4 timh4}  | r8 \flam timh8^> r4 \rs \rs \bar ".."
    \textMark "5" timh4:16~ timh8^> timl8 \tuplet 3/2 {\flam timh4^> timl4 \flam timh4^>} | r8 timh8^> timh4^> r8 timl4 timh8 \bar ".."
}

% one bar

\newTimbalesStaff \newDrumVoiceOne \drummode { 
  \sectionLabel "1 Bar"

    \textMark "1" \rs \rs \rs \flam timh4^> | \bar ".."
    \textMark "2" \rs \rs \rs \drag timh4^> | \bar ".."
    \textMark "3" \rs \rs \drag timh8^> timh8^> timl4 | \bar ".."    
    \textMark "4" r2 r8 timh8_"R" timh4_"L" | \bar ".."
    \break

    \textMark "5" r2 r8 timh8_"R"^> timl4_"L" | \bar ".."
    \textMark "6" r4 timh8_"L" timh8_"R" r8 timh8_"R" timh4_"L" | \bar ".."
    \textMark "7" r4 timh8_"L" timh8_"R"^> r8 timh8_"R"^> timl4_"L" | \bar ".."
    \textMark "8" r4 timl8_"L" timh8_"R"^> r8 timh8_"R"^> timl4_"L" | \bar ".."
    \break

    \textMark "9" r8 timl8_"R" timl8_"L" timl8_"R" r8 timh8_"R"^> timl4_"L" | \bar ".."
    \textMark "10" r8 timh16_"L" timh16_"R" timh8_"L" timh8_"R" r8 timh8_"R" timh4_"L" | \bar ".."
    \textMark "11" r8 timh16_"L" timh16_"R" timh8_"L" timh8_"R"^> r8 timh8_"R"^> timl4_"L" | \bar ".."
    \textMark "12" r8 timl16_"L" timl16_"R" timl8_"L" timh8_"R"^> r8 timh8_"R"^> timl4_"L" | \bar ".."
    \break

    \textMark "13" r8 timh16_"L" timh16_"R" timh8_"L" timh8_"R" timl8_"L" timl8_"L" timl8_"L" cb8_"R" | \bar ".."
    \textMark "14" r4  r8 timh8_"R"^>  r8 timh8_"R"^> timl4_"L" | \bar ".."
    \textMark "15" r8 timh8_"R"^>  r8 timh8_"R"^>  r8 timh8_"R"^> timl4_"L" | \bar ".."
    \textMark "16" r2 cb16_"R" cb16_"L" cb16_"R" cb16_"L" cb16_"R" cb16_"L" cb16_"R" cb16_"L" | \bar ".."
}

% two bars

\newTimbalesStaff \newDrumVoiceOne \drummode { 
    \sectionLabel "2 bars (2-3 clave)"

    % 1
    \drag timh8_"L"^> timh8_"R"^> r4 r4 \drag timh8_"L"^> timh8_"R"^> | r2 \drag timl8_"L"^> timl8_"R"^> r4 | \bar ".." 
    \drag timl4_"L" timh8_"R" timl8_"L" r8 timh4_"R" timl8_"L" | timl4_"L" timh8_"R" timl8_"L" r8 timh4_"R"^> r8 | \bar ".." 
    \drag timl4_"L" timh8_"R" timl8_"L" r8 timh4_"R" timh8_"R" | timl4_"L" timh8_"R" timl8_"L" r8 timh4_"R"^> r8 | \bar ".." 

    \break

    % 2
    timh4_"R" timh4_"L" timh4_"R" timl8_"L" timl8_"R"~ | timl8 timl4_"L" timl8_"R" timl8_"L" timl8_"R" timl4_"L" | \bar ".."
    \drag timh4_"L" \drag timh4_"L" \drag timh8_"L" timh8_"R" timh8_"L" timh8_"L" | timh8_"R" timh16_"L" timh16_"R" timh8_"L" timh8_"R" timl16_"L" timl16_"R" timl16_"L" timl16_"R" timl4_"L" | \bar ".." 
    timl8_"L" timl8_"R" timl8_"L" timh8_"R"^> r8 timl8_"R" timl8_"L" timh8_"R"^> | r8 timl8_"R" timl8_"L" timh8_"R"^> r8 timh8_"R" timl4_"L" | \bar ".."

    \break

    % 3
    timh8_"R" timl4_"L" timh8_"R" timl4_"L" timh8_"R" timl8_"L"~ | timl8 timh8_"R" timl4_"L" timh8_"R" timl4_"L" timl8_"L" | \bar ".."
    \flam timh4._"R"^> \flam timh8_"R"^> r4 timh4_"R"^> | r8 \flam timl8_"R"^> r8 \flam timl8_"R"^> r8 \flam timl8_"R"^> timl4_"L" | \bar ".."
    \rs \rs \rs r8 \flam timh8^> | timl4 timl8 timh8 timl8 timh4. | timh8^> \flam timh8^> \rs \rs \rs \bar ".."

    \break

    \rs \rs \drag timh8^> timh8^> timl timl | <<timh4 cymc>> \rs \rs \rs \bar ".."
    \rs \rs \rs timl8 timl8 | r8 <<timh4. cymc>> \rs \rs \bar ".."
    \drag timh4^> \drag timh4^> \drag timh8^> timh8^> timl4 | <<timh4 cymc>> \rs \rs \rs \bar ".."

    \break

    timh4:16~ timh16 timh timh8 timh timl r timh | <<timh4 cymc>> \rs \rs \rs \bar ".."
    \rs \rs r8 timh16 timh16 timh16^> timh16^> timh8^> | r8 <<timh4. cymc>> \rs \rs \bar ".."
    \rs \rs cb16 cb16 cb16 cb16 cb8 cb8 | r8 timl timl timh r timh^> <<cymc4 timh>> \bar ".."

  }


\newTimbalesStaff \newDrumVoiceOne \drummode { 
    \sectionLabel "bell (2-3 clave)"

    timh4_"R"^> timl8_"L" timl8_"R" timl4_"L" timh4_"R"^> | timl8_"L" timl8_"R" timl4_"L" \tuplet 3/2 { cb8_"R" cb8_"L" cb8_"R" } cb4_"L" | \bar ".."     
    \drag timh4_"L" timh8_"R" timh8_"L" r8 timh8_"R" timh4_"L" | timh4_"R" timh4_"L"  cb16_"R" cb16_"L" cb16_"R" cb16_"L" cb4_"R" | \bar ".." 
    timh4_"R" timh4_"L" timh8_"R" timh8_"L" r8 timl8_"R"~ | timl8 timl8_"L" timl4_"R" timl8_"L" cb8_"R" cb8_"R" cb8_"R" | \bar ".." 

    r8 timh4_"R" timh8_"L" timh4._"R" timl8_"L"~ | timl8 timl8_"R" timl4_"L"  \tuplet 3/2 { cb8_"R" cb8_"L" cb8_"R" } cb4_"L" | \bar ".." 
    timl8_"R" timl4_"L" timh8_"R" timh4_"L" timl8_"R" timl8_"L"~ | timl8 timh8_"R" timh4_"L" cb16_"R" cb16_"L" cb16_"R" cb16_"L" cb4_"R" | \bar ".."

    \break

    r8 <<timl8 cb8>> <<timl8 cb8>> <<timl8 cb8>> <<timl4 cb4>>  <<timl4 cb4>> | <<timl4 cb4>>  <<timl4 cb4>> r8 timh8_"R"^> timl4_"L" | \bar ".." 
    <<timl4 cb4>>  <<timl4 cb4>> r8 <<timl8 cb8>> <<timl4 cb4>> | r8 <<timl8 cb8>> <<timl8 cb8>> <<timl8 cb8>> <<timl8 cb8>> <<timl8 cb8>> <<timl8 cb8>> <<timl8 cb8>>  | \bar ".." 
    <<timl4 cb4>>  <<timl4 cb4>> r8 <<timl8 cb8>> <<timl4 cb4>> | <<timl4 cb4>> r8 <<timl8 cb8>> <<timl4 cb4>> <<timl4 cb4>> | \bar ".." 
}