\version "2.24.2"

\paper {
    indent = 0
    ragged-bottom = ##t
}

\include "common/flam.ly"
\include "common/style.ly"

date = #(strftime "%Y-%m-%d" (localtime (current-time)))

\header {
  title = "Fills"
  tagline = \markup { \date "https://github.com/mikea/timbales" }
}


% one drum

\new DrumStaff \with {
    % instrumentName = "Timbales"
    drumStyleTable = #timbales-style
    \override StaffSymbol.line-count = #2
    \override TextScript.font-size = #-6
    \override TextScript.font-family = #'sans
} \newDrumVoice \drummode { 
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

