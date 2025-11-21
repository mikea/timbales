\version "2.24.2"

\include "common/all.ly"

date = #(strftime "%Y-%m-%d" (localtime (current-time)))

\header {
  title = "Fills"
  instrument = "Timbales"
  tagline = \markup { "Fills" - "https://mikea.github.io/timbales/" - \date }
}


% abanicos

\score {
  \header {
      piece = "Abanicos"
  }

  \newTimbalesStaff \newDrumVoiceOne \drummode { 
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
}

\score {
  \header {
      piece = "Rolls"
  }

  \newTimbalesStaff \newDrumVoiceOne \drummode { 
      \textMark "1" timh2:16~ timh8 timh r4 | \rs \rs \rs \rs | \bar ".."
      \textMark "2" timh2:16~ timh8^> \flam timh8^> r8 timl | <<timh4 cymc>> \rs \rs \rs \bar ".."
      \textMark "3" timh4:16~ timh16 timh timh8 timh timl timl timh | r8 timh8^> timh8^> timl r timl r <<cymc timh>> \bar ".."
      \break
      \textMark "4" timh2:16~ \tuplet 3/2 {timh4 timh4 timh4}  | r8 \flam timh8^> r4 \rs \rs \bar ".."
      \textMark "5" timh4:16~ timh8^> timl8 \tuplet 3/2 {\flam timh4^> timl4 \flam timh4^>} | r8 timh8^> timh4^> r8 timl4 timh8 \bar ".."
  }

}
% one bar

\score {
  \header {
      piece = "One Bar"
  }

  \newTimbalesStaff \newDrumVoiceOne \drummode { 
      \textMark "1" \rs \rs \rs timh4^> | \bar ".."
      \textMark "2" \rs \rs \rs \flam timh4^> | \bar ".."
      \textMark "3" \rs \rs \rs \drag timh4^> | \bar ".."
      \textMark "4" \rs \rs \drag timh8^> timh8^> timl4 | \bar ".."    
      \textMark "5" r2 r8 timh8_"R" timh4_"L" | \bar ".."
      \break

      \textMark "6" r2 r8 timh8_"R"^> timl4_"L" | \bar ".."
      \textMark "7" r2 r8 \drag timl8_"R" timl4_"L" | \bar ".."
      \textMark "8" r4 timh8_"L" timh8_"R" r8 timh8_"R" timh4_"L" | \bar ".."
      \textMark "9" r4 timh8_"L" timh8_"R"^> r8 timh8_"R"^> timl4_"L" | \bar ".."
      \textMark "10" r4 timl8_"L" timh8_"R"^> r8 timh8_"R"^> timl4_"L" | \bar ".."
      \break

      \textMark "11" r8 timl8_"R" timl8_"L" timl8_"R" r8 timh8_"R"^> timl4_"L" | \bar ".."
      \textMark "12" r8 timh16_"L" timh16_"R" timh8_"L" timh8_"R" r8 timh8_"R" timh4_"L" | \bar ".."
      \textMark "13" r8 timh16_"L" timh16_"R" timh8_"L" timh8_"R"^> r8 timh8_"R"^> timl4_"L" | \bar ".."
      \textMark "14" r8 timl16_"L" timl16_"R" timl8_"L" timh8_"R"^> r8 timh8_"R"^> timl4_"L" | \bar ".."
      \break

      \textMark "15" r8 timh16_"L" timh16_"R" timh8_"L" timh8_"R" timl8_"L" timl8_"L" timl8_"L" cb8_"R" | \bar ".."
      \textMark "16" r4  r8 timh8_"R"^>  r8 timh8_"R"^> timl4_"L" | \bar ".."
      \textMark "17" r4  r8 timh8_"L"^>  r8 timh8_"L"^> timh4_"R"^> | \bar ".."
      \textMark "18" r8 timh8_"R"^>  r8 timh8_"R"^>  r8 timh8_"R"^> timl4_"L" | \bar ".."
      \textMark "19" timh4^> r4 timh8^> timh8^> timh4^> | \bar ".."
  }
}

% two bars
\score {
  \header {
      piece = "Multiple Bars"
  }

  \newTimbalesStaff \newDrumVoiceOne \drummode { 
      % 1
      \textMark "1" \drag timh8_"L"^> timh8_"R"^> r4 r4 \drag timh8_"L"^> timh8_"R"^> | r2 \drag timl8_"L"^> timl8_"R"^> r4 | \bar ".." 
      \textMark "2" \drag timl4_"L" timh8_"R" timl8_"L" r8 timh4_"R" timl8_"L" | timl4_"L" timh8_"R" timl8_"L" r8 timh4_"R"^> r8 | \bar ".." 
      \textMark "3" \drag timl4_"L" timh8_"R" timl8_"L" r8 timh4_"R" timh8_"R" | timl4_"L" timh8_"R" timl8_"L" r8 timh4_"R"^> r8 | \bar ".." 

      \break

      % 2
      \textMark "4" timh4_"R" timh4_"L" timh4_"R" timl8_"L" timl8_"R"~ | timl8 timl4_"L" timl8_"R" timl8_"L" timl8_"R" timl4_"L" | \bar ".."
      \textMark "5" \drag timh4_"L" \drag timh4_"L" \drag timh8_"L" timh8_"R" timh8_"L" timh8_"L" | timh8_"R" timh16_"L" timh16_"R" timh8_"L" timh8_"R" timl16_"L" timl16_"R" timl16_"L" timl16_"R" timl4_"L" | \bar ".." 
      \textMark "6" timl8_"L" timl8_"R" timl8_"L" timh8_"R"^> r8 timl8_"R" timl8_"L" timh8_"R"^> | r8 timl8_"R" timl8_"L" timh8_"R"^> r8 timh8_"R" timl4_"L" | \bar ".."

      \break

      % 3
      \textMark "7" timh8_"R" timl4_"L" timh8_"R" timl4_"L" timh8_"R" timl8_"L"~ | timl8 timh8_"R" timl4_"L" timh8_"R" timl4_"L" timl8_"L" | \bar ".."
      \textMark "8" \flam timh4._"R"^> \flam timh8_"R"^> r4 timh4_"R"^> | r8 \flam timl8_"R"^> r8 \flam timl8_"R"^> r8 \flam timl8_"R"^> timl4_"L" | \bar ".."
      \textMark "9" \rs \rs \rs r8 \flam timh8^> | timl4 timl8 timh8 timl8 timh4. | timh8^> \flam timh8^> \rs \rs \rs \bar ".."

      \break

      \textMark "10" \rs \rs r8 timl8 timl4 | timh4^> \rs \rs \rs | \bar ".."
      \textMark "11" \rs r8 timh8^> timh4^> timh8^> timh8^> | timh4^> <<timh4 cymc>> \rs \rs | \bar ".."
      \textMark "12" \rs r8 timl8 timl4 timl8:16 timl8 | timl4 timl4^> \rs \rs | \bar ".."
      
      \break
      
      \textMark "13" \rs \rs \drag timh8^> timh8^> timl timl | <<timh4 cymc>> \rs \rs \rs \bar ".."
      \textMark "14" \rs \rs \rs timl8 timl8 | r8 <<timh4. cymc>> \rs \rs \bar ".."
      \textMark "15" \drag timh4^> \drag timh4^> \drag timh8^> timh8^> timl4 | <<timh4 cymc>> \rs \rs \rs \bar ".."

      \break

      \textMark "16" timh4:16~ timh16 timh timh8 timh timl r timh | <<timh4 cymc>> \rs \rs \rs \bar ".."
      \textMark "17" \rs \rs r8 timh16 timh16 timh16^> timh16^> timh8^> | r8 <<timh4. cymc>> \rs \rs \bar ".."

    }
}

\score {
  \header {
      piece = "With Bell"
  }

  \newTimbalesStaff \newDrumVoiceOne \drummode {
      \textMark "1" \rs <<timl8 cb8>> <<timl8 cb8>> r8 <<timl8 cb8>> \flam timh4^> | \bar ".."
      \textMark "2" \rs <<timl4 cb4>> <<timl4 cb4>> r4 | \ruff timh4^> r8 timh8^> r4 timl4 | \bar ".."
      \textMark "3" timh4_"R"^> timl8_"L" timl8_"R" timl4_"L" timh4_"R"^> | timl8_"L" timl8_"R" timl4_"L" \tuplet 3/2 { cb8_"R" cb8_"L" cb8_"R" } cb4_"L" | \bar ".."     
      
      \break
      
      \textMark "4" r8 timh4_"R" timh8_"L" timh4._"R" timl8_"L"~ | timl8 timl8_"R" timl4_"L"  \tuplet 3/2 { cb8_"R" cb8_"L" cb8_"R" } cb4_"L" | \bar ".." 
      \textMark "5" timh4_"R" timh4_"L" timh8_"R" timh8_"L" r8 timl8_"R"~ | timl8 timl8_"L" timl4_"R" timl8_"L" cb8_"R" cb8_"R" cb8_"R" | \bar ".." 
      \textMark "6" \drag timh4_"L" timh8_"R" timh8_"L" r8 timh8_"R" timh4_"L" | timh4_"R" timh4_"L"  cb16_"R" cb16_"L" cb16_"R" cb16_"L" cb4_"R" | \bar ".." 

      \break

      \textMark "7" timl8_"R" timl4_"L" timh8_"R" timh4_"L" timl8_"R" timl8_"L"~ | timl8 timh8_"R" timh4_"L" cb16_"R" cb16_"L" cb16_"R" cb16_"L" cb4_"R" | \bar ".."
      \textMark "8" r8 <<timl8 cb8>> <<timl8 cb8>> <<timl8 cb8>> <<timl4 cb4>>  <<timl4 cb4>> | <<timl4 cb4>>  <<timl4 cb4>> r8 timh8_"R"^> timl4_"L" | \bar ".." 
      \textMark "9" <<timl4 cb4>>  <<timl4 cb4>> r8 <<timl8 cb8>> <<timl4 cb4>> | r8 <<timl8 cb8>> <<timl8 cb8>> <<timl8 cb8>> <<timl8 cb8>> <<timl8 cb8>> <<timl8 cb8>> <<timl8 cb8>>  | \bar ".." 

      \break

      \textMark "10" <<timl4 cb4>>  <<timl4 cb4>> r8 <<timl8 cb8>> <<timl4 cb4>> | <<timl4 cb4>> r8 <<timl8 cb8>> <<timl4 cb4>> <<timl4 cb4>> | \bar ".." 
      \textMark "11" r2 cb16_"R" cb16_"L" cb16_"R" cb16_"L" cb16_"R" cb16_"L" cb16_"R" cb16_"L" | \bar ".."
      \break
      \textMark "12" \rs cymc4 cb4 cymc4 | cb4 cymc4 timh8 timh8 timh8^> timh8^> | <<timh4 cymc4^> >> \rs \rs \rs | \bar ".."
      \textMark "13" \rs \rs cb16 cb16 cb16 cb16 cb8 cb8 | r8 timl timl timh r timh^> <<cymc4 timh>> \bar ".."
}
}