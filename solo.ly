\version "2.24.2"

\paper {
    indent = 0
    ragged-bottom = ##t
}

\include "common/flam.ly"

date = #(strftime "%Y-%m-%d" (localtime (current-time)))

\header {
  title = "Solo concepts"
  tagline = \markup { \date "https://github.com/mikea/timbales" }
}

startGraceMusic = {
  <>(
  \override NoteHead.font-size = #-6
}

stopGraceMusic = {
  \revert NoteHead.font-size
  <>)
}

% one drum

\new DrumStaff \with {
    % instrumentName = "Timbales"
    drumStyleTable = #timbales-style
    \override StaffSymbol.line-count = #2
    \override TextScript.font-size = #-6
} <<
    \new DrumVoice { \voiceOne \drummode { 
        \bar ".|:"

        r8 timl16_"R" 16_"L" 8_"R" 8_"L" r8 timl16_"R" 16_"L" 8_"R" 8_"L" | \bar ":..:"
        timh4_"R" 8_"R" 8_"L" 8_"R" 8_"L" r8 8_"L"  | \bar ":..:"
        \grace { timl16_"L" timl16_"L" } timl8_"R" timl8_"L" timl8_"R" timl8_"L" r8 timh8_"R"-> r4  | \bar ":..:"
        timh8_"R" timh8_"L" timh8_"R" timh8_"L" timh8_"R"-> timh8_"L"-> r8 timl8_"L"  | \bar ":..:"
        
        timl8_"R" timl8_"L" timl8_"R" timl8_"L" timh8_"R"-> timh8_"L"-> r8 timl16_"R" timl16_"L"  | \bar ":..:"
        timl8_"R" timl8_"L" timl8_"R" timl8_"L" r8 timl16_"R" timl16_"L" timl8_"R" timl8_"L"  | \bar ":..:"
        r8 timh8_"R" r8 timh8_"R" r8 timh8_"R" r8 timh8_"R" | \bar ":..:"
        timh8_"R" timh8_"L" timh8_"R" timl8_"L" timh8_"R" timh8_"L"-> timh8_"R" timh8_"L"  | \bar ":..:"
        
        \grace { timh16_"L" timh16_"L" } timh8_"R" timh8_"L" timh8_"R" timh8_"L" timh8_"R"-> timh8_"L"-> r4 | \bar ":..:"
        timl8_"R" timl8_"L" timh8_"R"-> timh8_"L"-> r8 timl16_"R" timl16_"L" timl8_"R" timl8_"L" | \bar ":..:"
        r8 timh16_"R" 16_"L" 8_"R" 8_"L" 4_"R"-> 8_"L"-> 8_"R"-> | \bar ":..:"
        \grace { timh16_"L" timh16_"L" } timh8_"R" timh8_"L" timh8_"R" timh8_"L" timh8_"R" timh8_"L" timh4_"R" | \bar ":..:"
        
        timh8_"R" timh8_"L" timh8_"R" timh8_"L" timh8_"R"-> timh8_"L"-> r8 timh16_"R" timh16_"L" | \bar ":..:"
        r8 timl8_"L" timl8_"R" timl8_"L" r8 timl8_"L" timl8_"R" timl8_"L" | \bar ":..:"

        \bar ":|."
    }}
>>

% both timbales

\new DrumStaff \with {
    % instrumentName = "Timbales"
    drumStyleTable = #timbales-style
    \override StaffSymbol.line-count = #2
    \override TextScript.font-size = #-6
} <<
    \new DrumVoice { \voiceOne \drummode { 
        \bar ".|:"

        r8 timl16_"R" 16_"L" 8_"R" 8_"L" r8 timh16_"R" 16_"L" 8_"R" 8_"L" | \bar ":..:"
        timh4_"R" timh8_"R" timl8_"L" timh8_"R" timh8_"L" r8 timh8_"L"  | \bar ":..:"
        \grace { timl16_"L" timl16_"L" } timl8_"R" timl8_"L" timh8_"R" timh8_"L" r8 timh8_"R"-> r4  | \bar ":..:"
        timl8_"R" timl8_"L" timl8_"R" timl8_"L" timh8_"R"-> timh8_"L"-> r8 timl8_"L"  | \bar ":..:"

        timh8_"R" timh8_"L" timh8_"R" timh8_"L" timh8_"R"-> timl8_"L"-> r8 timh16_"R" timh16_"L"  | \bar ":..:"
        timh8_"R" timl8_"L" timl8_"R" timl8_"L" r8 timl16_"R" timl16_"L" timl8_"R" timl8_"L"  | \bar ":..:"
        r8 timh8_"R" r8 timl8_"R" r8 timh8_"R" r8 timl8_"R" | \bar ":..:"
        timh8_"R" timh8_"L" timh8_"R" timl8_"L" timh8_"R" timl8_"L"-> timh8_"R" timh8_"L"  | \bar ":..:"

        \grace { timl16_"L" timl16_"L" } timl8_"R" timl8_"L" timl8_"R" timl8_"L" timh8_"R"-> timh8_"L"-> r4 | \bar ":..:"
        timh8_"R" timh8_"L" timh8_"R"-> timl8_"L"-> r8 timh16_"R" timh16_"L" timh8_"R" timh8_"L" | \bar ":..:"
        r8 timl16_"R" timl16_"L" timl8_"R" timl8_"L" timh4_"R"-> timh8_"L"-> timh8_"R"-> | \bar ":..:"
        \grace { timh16_"L" timh16_"L" } timh8_"R" timh8_"L" timh8_"R" timh8_"L" timh8_"R" timh8_"L" timl4_"R" | \bar ":..:"

        timh8_"R" timh8_"L" timh8_"R" timh8_"L" timh8_"R"-> timh8_"L"-> r8 timh16_"R" timh16_"L" | \bar ":..:"
        r8 timl8_"L" timl8_"R" timl8_"L" r8 timh8_"L" timh8_"R" timh8_"L" | \bar ":..:"
        timh4_"L"-> timh8_"R"-> timl8_"L" timh16_"R" timh16_"L" timh8_"R" timl8_"L" timh8_"R"-> | \bar ":..:"
        timh4_"L"-> timh8_"R"-> timl8_"L" \tuplet 3/2 { timh8_"R"-> timh8_"L"-> r8  } timl8_"L" timh8_"R"-> | \bar ":..:"

        \bar ":|."
    }}
>>

% 2 bars

\new DrumStaff \with {
    % instrumentName = "Timbales"
    drumStyleTable = #timbales-style
    \override StaffSymbol.line-count = #2
    \override TextScript.font-size = #-6
} <<
    \new DrumVoice { \voiceOne \drummode { 
        \sectionLabel "2-3 clave"
        \bar ".|:"

        r4 r8 timl8:32^"buzz" r4 r8 timl8:32^"buzz" | r4 r8 timl8:32^"buzz" r2 | \bar ":..:"
        r8 timl8_"L" timl8_"R" timl8_"L" r8 timl8_"L" timl8_"R" timl8_"L" | r8 timh8_"R"-> timh4_"L"-> r2 | \bar ":..:"

        timl8_"L" timh8_"R"-> timh4_"L"-> r8 timl8_"R" timl8_"L" timh8_"R"-> | timh4_"L"-> r8 timl8_"R" timl8_"L" timh8_"R"-> timh4_"L"-> | \bar ":..:"
        r2 timh4_"R"-> r4 | r8 timh8_"R"-> r4 r4 r8 timh8_"R"-> | \bar ":..:"


        timh4_"R"-> timh4_"L"-> timh8_"R"-> timh8_"L"-> r8 timh8_"R"-> | r8 timh8_"L"-> timh4_"R"-> r2 | \bar ":..:"
        timh4_"R"-> timh4_"L"-> timh8_"R"-> timh8_"L"-> r8 timh8_"R"-> | r8 timh8_"L"-> timh4_"R"-> timh4_"L"-> timh4_"R"-> | \bar ":..:"

        \drag timh4_"R"-> timh8_"L"-> timh8_"R"-> r8 timh8_"L"-> r8 timh8_"R"-> | r8 timh8_"L"-> timh4_"R"-> r2 | \bar ":..:"
        timh16_"R" timh16_"R" timh16_"L" timh16_"L" 
        timh16_"R"-> timh16_"L" timh16_"R" timh16_"R" 
        timh16_"L" timh16_"L" timh16_"R"-> timh16_"L" 
        timh16_"R" timh16_"R" timh16_"L" timh16_"L" |
        timh16_"R"-> timh16_"L" timh16_"R" timh16_"R" 
        timh16_"L" timh16_"L" timh16_"R"-> timh16_"L" 
        timh16_"R" timh16_"R" timh16_"L" timh16_"L" 
        timh4_"R"-> | \bar ":..:"


        r8 timh8_"R" timh4_"L" r8 timh8_"R" r8 timh8_"L" | r8 timh8_"R" r4 timh4_"R"-> timh4_"L"-> | \bar ":..:"
        \tuplet 3/2 { timh8_"R"-> r8 timh8_"L"-> } \tuplet 3/2 { timh8_"R"-> r8 timh8_"L"-> } 
        \tuplet 3/2 { timh8_"R"-> timh8_"L"-> timh8_"R"-> } \tuplet 3/2 { timh8_"L"-> timh8_"R"-> timh8_"L"-> } |
        \tuplet 3/2 { timh8_"R"-> r8 timh8_"L"-> } \tuplet 3/2 { timh8_"R"-> r8 timh8_"L"-> } 
        \tuplet 3/2 { timh8_"R"-> r8 timh8_"L"-> } timh4_"R" | \bar ":..:"

        r8 timh8_"R"-> timl4_"L" r8 timh8_"R"-> r8 timh8_"L"-> | timl4_"L" r8 timh8_"R" r8 timh8_"R" timl4_"L" | \bar ":..:"

        \tuplet 3/2 { timh8_"L"-> timh8_"R" timh8_"R" } \tuplet 3/2 { timl8_"L" timh8_"R" timh8_"R" }
        timh4_"L"-> \tuplet 3/2 { timh8_"L"-> timh8_"R" timh8_"R" } |
        \tuplet 3/2 { timl8_"L" timh8_"R" timh8_"R" } timh4_"L"-> r2 | \bar ":..:"

        \drag timl8_"R" timl8_"L" timl8_"R" timl8_"L" r8 timl8_"R" r8 timh8_"R"-> | r8 timh8_"R"-> timh4_"L"-> r8 \flam timh8_"R"-> r4 | \bar ":..:"
        \drag timl8_"R" timl8_"L" timl8_"R" timl8_"L" r8 \flam timh8_"R"-> timl8_"L" \flam timh8_"R"-> | r1 | \bar ":..:"

        \drag timl8_"R" timl8_"L" timl8_"R" timl8_"L" \tuplet 3/2 { \flam timh4_"R" \flam timh4_"R" \flam timh4_"R" }  | r1 | \bar ":..:"
        timh8_"R" timh8_"L" timh8_"R" timh8_"L" \tuplet 3/2 { \flam timh4_"R" \flam timh4_"R" \flam timh4_"R" }  | r4 r8 timl8_"L" \flam timh4_"R"-> timl8_"L" \flam timh8_"R"-> | \bar ":..:"

        r8 timh8_"L"-> timh4_"R"-> r4 r8 timh8_"R" | timh16_"L" timh16_"R" timh16_"R" timh16_"L"-> timh8_"R"-> timl8_"L" \tuplet 3/2 { timh4_"R"-> timh4_"L"-> timh4_"R"-> } | \bar ":..:"
        r8 timh8_"L"-> timh4_"R"-> r8 timh8_"R"-> r8 timl16_"L" timl16_"L" | timl8_"R" timl8_"L" timl8_"R" timl8_"L" r8 timh8_"R"-> r4 | \bar ":..:"

        \bar ":|."
    }}
>>

% 1 bar triplets

\new DrumStaff \with {
    % instrumentName = "Timbales"
    drumStyleTable = #timbales-style
    \override StaffSymbol.line-count = #2
    \override TextScript.font-size = #-6
} <<
    \new DrumVoice { \voiceOne \drummode { 
        \bar ".|:"

        \tuplet 3/2 { timl8_"R" timl8_"L" timl8_"R" } 
        \tuplet 3/2 { timl8_"L" timl8_"R" timl8_"L" } 
        \tuplet 3/2 { timl8_"R" timl8_"L" timl8_"R" } 
        \tuplet 3/2 { timl8_"L" timl8_"R" timl8_"L" } \bar ":..:"

        \tuplet 3/2 { timh8_"R" timh8_"L" timh8_"R" } 
        \tuplet 3/2 { timh8_"L" timh8_"R" timh8_"L" } 
        \tuplet 3/2 { timh8_"R" timl8_"L" timl8_"R" } 
        \tuplet 3/2 { timl8_"L" timl8_"R" timl8_"L" } \bar ":..:"


        \tuplet 3/2 { timh8_"L"-> timh8_"R" timh8_"R" } 
        \tuplet 3/2 { timl8_"L" timh8_"R" timh8_"R" } 
        \tuplet 3/2 { timl8_"L" timh8_"R" timh8_"R" } 
        \tuplet 3/2 { timl8_"L" timh8_"R" timh8_"R" } \bar ":..:"

        \tuplet 3/2 { timh8_"R"-> timh8_"L" timh8_"L" } 
        \tuplet 3/2 { timh8_"R" timh8_"R" timh8_"L"-> } 
        \tuplet 3/2 { timh8_"R"-> timh8_"L" timh8_"L" } 
        \tuplet 3/2 { timh8_"R" timh8_"R" timh8_"L"-> } \bar ":..:"


        \tuplet 3/2 { timh8_"L"-> timh8_"R" timh8_"R" } 
        \tuplet 3/2 { timh8_"L" timh8_"L" timh8_"R"-> } 
        \tuplet 3/2 { timh8_"L"-> timh8_"R" timh8_"R" } 
        \tuplet 3/2 { timh8_"L" timh8_"L" timh8_"R"-> } \bar ":..:"

        \tuplet 3/2 { timh8_"R"-> timh8_"L" timh8_"R" } 
        \tuplet 3/2 { timh8_"L" timh8_"R" timh8_"L" } 
        \tuplet 3/2 { timh8_"R" timh8_"L" timh8_"R"-> } 
        \tuplet 3/2 { timh8_"L" timh8_"R"-> timh8_"L" } \bar ":..:"


        \tuplet 3/2 { timh8_"R"-> timh8_"L" timh8_"R" } 
        \tuplet 3/2 { timh8_"L" timh8_"R"-> timh8_"L" } 
        \tuplet 3/2 { timh8_"R" timh8_"L" timh8_"R"-> } 
        \tuplet 3/2 { timh8_"L" timh8_"R" timh8_"L" } \bar ":..:"

        \tuplet 3/2 { timh8_"R"-> timl8_"L" timl8_"R" } 
        \tuplet 3/2 { timl8_"L" timh8_"R"-> timl8_"L" } 
        \tuplet 3/2 { timl8_"R" timl8_"L" timh8_"R"-> } 
        \tuplet 3/2 { timl8_"L" timl8_"R" timl8_"L" } \bar ":..:"


        \tuplet 3/2 { timh8_"R" timh8_"R" timh8_"L"-> } 
        \tuplet 3/2 { timh8_"R" timh8_"R" timh8_"L"-> } 
        \tuplet 3/2 { timh8_"R" timh8_"R" timh8_"L"-> } 
        \tuplet 3/2 { timh8_"R" timh8_"R" timh8_"L"-> } \bar ":..:"

        \tuplet 3/2 { timh8_"R" timh8_"R" timh8_"L"-> } 
        \tuplet 3/2 { timh8_"R" timh8_"R" timl8_"L" } 
        \tuplet 3/2 { timh8_"R" timh8_"R" timh8_"L"-> } 
        \tuplet 3/2 { timh8_"R" timh8_"R" timl8_"L" } \bar ":..:"


        \tuplet 3/2 { timh8_"R"-> timl8_"L" timl8_"L" } 
        \tuplet 3/2 { timl8_"R" timl8_"R" timl8_"L" } 
        \tuplet 3/2 { timh8_"R"-> timh8_"L" timh8_"L" } 
        \tuplet 3/2 { timh8_"R" timh8_"R" timh8_"L"-> } \bar ":..:"

        \tuplet 3/2 { timl8_"L" timl8_"R" timl8_"L" } 
        \tuplet 3/2 { timl8_"R" timl8_"L" timl8_"L" } 
        \tuplet 3/2 { timh8_"R" timh8_"L" timh8_"R" } 
        \tuplet 3/2 { timh8_"L" timh8_"L" timh8_"R"-> } \bar ":..:"


        \tuplet 3/2 { timl8_"L" timh8_"R"-> timl8_"L" } 
        timl4_"L"
        r4
        \tuplet 3/2 { timh8_"R"-> timh8_"L" timh8_"R"-> } \bar ":..:"

        \tuplet 3/2 { timl8_"R" timl8_"L" timl8_"R" } 
        \tuplet 3/2 { r8 timl8_"L" r8 } 
        \tuplet 3/2 { timl8_"R" timl8_"L" timl8_"R" } 
        \tuplet 3/2 { r timl8_"L" r } \bar ":..:"

        \bar ":|."
    }}
>>


% 2 bar triplets

\new DrumStaff \with {
    % instrumentName = "Timbales"
    drumStyleTable = #timbales-style
    \override StaffSymbol.line-count = #2
    \override TextScript.font-size = #-6
} <<
    \new DrumVoice { \voiceOne \drummode { 
        \sectionLabel "2-3 clave"
        \bar ".|:"

        \tuplet 3/2 { timh8_"R" timh8_"L" timh8_"R" } 
        \tuplet 3/2 { timh8_"L" timh8_"R" timh8_"L" } 
        \tuplet 3/2 { timh8_"R" timh8_"L" timh8_"R"-> } 
        \tuplet 3/2 { timh8_"L" timh8_"R"-> timh8_"L" } |

        \tuplet 3/2 { timh8_"R"-> timh8_"L" timh8_"R" } 
        \tuplet 3/2 { timh8_"L" timh8_"R" timh8_"L" } 
        \tuplet 3/2 { timh8_"R" timh8_"L" timh8_"R"-> } 
        \tuplet 3/2 { timh8_"L" timh8_"R" timh8_"L" } \bar ":..:"

        \break

        \tuplet 3/2 { timh8_"R"-> timh8_"L" timh8_"R" } 
        \tuplet 3/2 { timh8_"L" timh8_"R" timh8_"L" } 
        \tuplet 3/2 { timh8_"R" timh8_"L" timh8_"R"-> } 
        \tuplet 3/2 { timh8_"L" timh8_"R"-> timh8_"L" } |

        \tuplet 3/2 { timh8_"R"-> timh8_"L" timh8_"R" } 
        \tuplet 3/2 { timh8_"L" timh8_"R" timh8_"L" } 
        \tuplet 3/2 { timh8_"R" timh8_"L" timh8_"R"-> } 
        \tuplet 3/2 { timh8_"L" timh8_"R" timh8_"L" } \bar ":..:"

        \break

        \tuplet 3/2 { timh8_"R"-> timh8_"L" timh8_"R" } 
        \tuplet 3/2 { timh8_"L" timh8_"R" timh8_"L" } 
        \tuplet 3/2 { timh8_"R" timh8_"L" timh8_"R" } 
        \tuplet 3/2 { timh8_"L"-> timh8_"R" timh8_"L" } |

        \tuplet 3/2 { timh8_"R" timh8_"L" timh8_"R" } 
        \tuplet 3/2 { timh8_"L" timh8_"R" timh8_"L" } 
        \tuplet 3/2 { timh8_"R"-> timh8_"L" timh8_"R" } 
        \tuplet 3/2 { timh8_"L" timh8_"R" timh8_"L" } \bar ":..:"

        \break

        \tuplet 3/2 { timh8_"R"-> timh8_"L" timh8_"R" } 
        \tuplet 3/2 { timh8_"L" timh8_"R" timh8_"L" } 
        \tuplet 3/2 { timh8_"R" timh8_"L" timh8_"R"-> } 
        \tuplet 3/2 { timh8_"L" timh8_"R" timh8_"L" } |

        \tuplet 3/2 { timh8_"R"-> timh8_"L" timh8_"R" } 
        \tuplet 3/2 { timh8_"L" timh8_"R" timh8_"L" } 
        \tuplet 3/2 { timh8_"R" timh8_"L" timh8_"R" } 
        \tuplet 3/2 { timh8_"L" timh8_"R" timh8_"L" } \bar ":..:"


        \bar ":|."
    }}
>>
