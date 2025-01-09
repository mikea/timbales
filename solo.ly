\version "2.24.2"

\paper {
    indent = 0
}

date = #(strftime "%Y-%m-%d" (localtime (current-time)))

\header {
  title = "Solo Phrases"
  tagline = \markup { \date "https://github.com/mikea/timbales" }
}

startGraceMusic = {
  <>(
  \override NoteHead.font-size = #-5
}

stopGraceMusic = {
  \revert NoteHead.font-size
  <>)
}

\new DrumStaff \with {
    % instrumentName = "Timbales"
    drumStyleTable = #timbales-style
    \override StaffSymbol.line-count = #2
    \override TextScript.font-size = #-6
} <<
    \new DrumVoice { \voiceOne \drummode { 
        \bar ".|:"

        r8 timl16_"R" 16_"L" 8_"R" 8_"L" r8 timl16_"R" 16_"L" 8_"R" 8_"L" | \bar ":..:"
        timl4_"R" timl8_"R" timl8_"L" timl8_"R" timl8_"L" r8 timl8_"L"  | \bar ":..:"
        \grace { timl16_"L" timl16_"L" } timl8_"R" timl8_"L" timl8_"R" timl8_"L" r8 timh8_"R"-> r4  | \bar ":..:"
        timl8_"R" timl8_"L" timl8_"R" timl8_"L" timh8_"R"-> timh8_"L"-> r8 timl8_"L"  | \bar ":..:"
        timl8_"R" timl8_"L" timl8_"R" timl8_"L" timh8_"R"-> timh8_"L"-> r8 timl16_"R" timl16_"L"  | \bar ":..:"
        timl8_"R" timl8_"L" timl8_"R" timl8_"L" r8 timl16_"R" timl16_"L" timl8_"R" timl8_"L"  | \bar ":..:"
        r8 timh8_"R" r8 timh8_"R" r8 timh8_"R" r8 timh8_"R" | \bar ":..:"
        timh8_"R" timh8_"L" timh8_"R" timl8_"L" timh8_"R" timh8_"L"-> timh8_"R" timh8_"L"  | \bar ":..:"
        \grace { timh16_"L" timh16_"L" } timh8_"R" timh8_"L" timh8_"R" timh8_"L" timh8_"R"-> timh8_"L"-> r4 | \bar ":..:"
        timl8_"R" timl8_"L" timh8_"R"-> timh8_"L"-> r8 timl16_"R" timl16_"L" timl8_"R" timl8_"L" | \bar ":..:"
        r8 timl16_"R" timl16_"L" timl8_"R" timl8_"L" timh4_"R"-> timh8_"L"-> timh8_"R"-> | \bar ":..:"
        \grace { timh16_"L" timh16_"L" } timh8_"R" timh8_"L" timh8_"R" timh8_"L" timh8_"R" timh8_"L" timh4_"R" | \bar ":..:"
        timh8_"R" timh8_"L" timh8_"R" timh8_"L" timh8_"R"-> timh8_"L"-> r8 timh16_"R" timh16_"L" | \bar ":..:"
        r8 timl8_"L" timl8_"R" timl8_"L" r8 timl8_"L" timl8_"R" timl8_"L" | \bar ":..:"
        timh4_"L"-> timh8_"R"-> timl8_"L" \tuplet 3/2 { timh8_"R"-> timh8_"L"-> r8  } timl8_"L" timh8_"R"-> | \bar ":..:"
        timh4_"L"-> timh8_"R"-> timl8_"L" timh16_"R" timh16_"L" timh8_"R" timl8_"L" timh8_"R"-> | \bar ":..:"

        \bar ":|."
    }}
>>
