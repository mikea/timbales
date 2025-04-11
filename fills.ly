\version "2.24.2"

\include "common/all.ly"

date = #(strftime "%Y-%m-%d" (localtime (current-time)))

\header {
  title = "Fills"
  instrument = "Timbales"
  tagline = \markup { \date "https://github.com/mikea/timbales" }
}


% one bar

\newTimbalesStaff \newDrumVoiceOne \drummode { 
    r2 r8 timh8_"R" timh4_"L" | \bar "||"
    r2 r8 timh8_"R"^> timl4_"L" | \bar "||"
    r4 timh8_"L" timh8_"R" r8 timh8_"R" timh4_"L" | \bar "||"
    r4 timh8_"L" timh8_"R"^> r8 timh8_"R"^> timl4_"L" | \bar "||"
    r4 timl8_"L" timh8_"R"^> r8 timh8_"R"^> timl4_"L" | \bar "||"
    r8 timl8_"R" timl8_"L" timl8_"R" r8 timh8_"R"^> timl4_"L" | \bar "||"

    r8 timh16_"L" timh16_"R" timh8_"L" timh8_"R" r8 timh8_"R" timh4_"L" | \bar "||"
    r8 timh16_"L" timh16_"R" timh8_"L" timh8_"R"^> r8 timh8_"R"^> timl4_"L" | \bar "||"
    r8 timl16_"L" timl16_"R" timl8_"L" timh8_"R"^> r8 timh8_"R"^> timl4_"L" | \bar "||"
    r8 timh16_"L" timh16_"R" timh8_"L" timh8_"R" timl8_"L" timl8_"L" timl8_"L" cb8_"R" | \bar "||"

    r4  r8 timh8_"R"^>  r8 timh8_"R"^> timl4_"L" | \bar "||"
    r8 timh8_"R"^>  r8 timh8_"R"^>  r8 timh8_"R"^> timl4_"L" | \bar "||"
    r2 cb16_"R" cb16_"L" cb16_"R" cb16_"L" cb16_"R" cb16_"L" cb16_"R" cb16_"L" | \bar "||"
}

% two bars

\newTimbalesStaff \newDrumVoiceOne \drummode { 
    \sectionLabel "2-3 clave"

    timh4_"R"^> timl8_"L" timl8_"R" timl4_"L" timh4_"R"^> | 
    timl8_"L" timl8_"R" timl4_"L" \tuplet 3/2 { cb8_"R" cb8_"L" cb8_"R" } cb4_"L" | \bar "||" 

    \drag timh4_"L" timh8_"R" timh8_"L" r8 timh8_"R" timh4_"L" | 
    timh4_"R" timh4_"L"  cb16_"R" cb16_"L" cb16_"R" cb16_"L" cb4_"R" | \bar "||" 

    \break

    \drag timl4_"L" timh8_"R" timl8_"L" r8 timh4_"R" timl8_"L" | 
    timl4_"L" timh8_"R" timl8_"L" r8 timh4_"R"^> r8 | \bar "||" 

    \drag timl4_"L" timh8_"R" timl8_"L" r8 timh4_"R" timh8_"R" | 
    timl4_"L" timh8_"R" timl8_"L" r8 timh4_"R"^> r8 | \bar "||" 

    r8 <<timl8 cb8>> <<timl8 cb8>> <<timl8 cb8>> <<timl4 cb4>>  <<timl4 cb4>> |
    <<timl4 cb4>>  <<timl4 cb4>> r8 timh8_"R"^> timl4_"L" | \bar "||" 

    <<timl4 cb4>>  <<timl4 cb4>> r8 <<timl8 cb8>> <<timl4 cb4>> |
    r8 <<timl8 cb8>> <<timl8 cb8>> <<timl8 cb8>> <<timl8 cb8>> <<timl8 cb8>> <<timl8 cb8>> <<timl8 cb8>>  | \bar "||" 

    <<timl4 cb4>>  <<timl4 cb4>> r8 <<timl8 cb8>> <<timl4 cb4>> |
    <<timl4 cb4>> r8 <<timl8 cb8>> <<timl4 cb4>> <<timl4 cb4>> | \bar "||" 

    timh4_"R" timh4_"L" timh8_"R" timh8_"L" r8 timl8_"R"~ |
    timl8 timl8_"L" timl4_"R" timl8_"L" cb8_"R" cb8_"R" cb8_"R" | \bar "||" 

    r8 timh4_"R" timh8_"L" timh4._"R" timl8_"L"~ |
    timl8 timl8_"R" timl4_"L"  \tuplet 3/2 { cb8_"R" cb8_"L" cb8_"R" } cb4_"L" | \bar "||" 

    \drag timh4_"L" \drag timh4_"L" \drag timh8_"L" timh8_"R" timh8_"L" timh8_"L" |
    timh8_"R" timh16_"L" timh16_"R" timh8_"L" timh8_"R" timl16_"L" timl16_"R" timl16_"L" timl16_"R" timl4_"L" | \bar "||" 

    \drag timh8_"L"^> timh8_"R"^> r4 r4 \drag timh8_"L"^> timh8_"R"^> |
    r2 \drag timl8_"L"^> timl8_"R"^> r4 | \bar "||" 

    timh4_"R" timh4_"L" timh4_"R" timl8_"L" timl8_"R"~ |
    timl8 timl4_"L" timl8_"R" timl8_"L" timl8_"R" timl4_"L" | \bar "||"

    timl8_"R" timl4_"L" timh8_"R" timh4_"L" timl8_"R" timl8_"L"~ |
    timl8 timh8_"R" timh4_"L" cb16_"R" cb16_"L" cb16_"R" cb16_"L" cb4_"R" | \bar "||"

    timl8_"L" timl8_"R" timl8_"L" timh8_"R"^> r8 timl8_"R" timl8_"L" timh8_"R"^> |
    r8 timl8_"R" timl8_"L" timh8_"R"^> r8 timh8_"R" timl4_"L" | \bar "||"

    timh8_"R" timl4_"L" timh8_"R" timl4_"L" timh8_"R" timl8_"L"~ |
    timl8 timh8_"R" timl4_"L" timh8_"R" timl4_"L" timl8_"L" | \bar "||"

    \flam timh4._"R"^> \flam timh8_"R"^> r4 timh4_"R"^> |
    r8 \flam timl8_"R"^> r8 \flam timl8_"R"^> r8 \flam timl8_"R"^> timl4_"L" | \bar "||"
}

