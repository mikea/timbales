\version "2.24.2"
\include "charts/common.ly"

date = #(strftime "%Y-%m-%d" (localtime (current-time)))

\header {
  title = "Palo Pa' Rumba"
  subsubtitle = "(Salsa)"
  composer = "Eddie Palmieri"
  instrument = "Timbales"
  tagline = \markup { "Palo Pa' Rumba - https://mikea.github.io/timbales/ - " \date }
}

\newTimbalesStaff <<
    \newDrumVoiceOne \drummode { 
      \tempo 4 = 224

      \sect "Intro" "(cascara 2-3)"
      \bar "[|:-||"
      \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x4" |
      % \bar "S.|:-||"
      \bar ":|][|:"
      \break
      \textMark \markup {\fontsize #5 \segno Horns (cascara 2-3)}
      \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x5" |
      \bar ":|]"
      \clave-shift \rs \rs r8 timh8 timl4 |

      \sect "A" "(cascara 3-2)"
      \bar "[|:-||"
      \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x4" |

      \bar ":|][|:"

      \sect "B" "(cascara 3-2)"
      \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x5" |
      \bar ":|]"

      \clave-break
      \ds

      \bar "||" <<timh4 timl4>> r8 <<timh8^> timl8>> r2 |

      \sect "E" ""
      r1 | r4. <<timh8^> timl8>> r2 | r1 | r4. timh4.^> timh4:16 |

      \sect "F" "Instr & Vocal solos (campana 2-3)"
      \bar "[|:-||"
      \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "open" |
      \bar ":|][|:"

      \sect-no-break "G" "Perc. solo (cascara 2-3 on campana)"
      \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "open" |
      \bar ":|][|:"

      \sect "H" "(campana 2-3)"
      \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x2" |
      \bar ":|][|:"

      \sect-no-break "I" "(campana 2-3)"
      \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x4" |
      \bar ":|]"

      \sect "J" ""
      \tuplet 3/2 {timl4 cb4 cb4} \tuplet 3/2 {timl4 cb4 cb4} | \tuplet 3/2 {timl4 cb4 cb4} <<timl4 cb4>> r4 | r1 |
      | r4. <<timl4. timh4.>> r4 | r1 | r4. timh4.^> timh4:16 |

      \sect "K" "Trumpet Solo (campana 2-3)"
      \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x4" |
      \bar ":|][|:"

      \sect-no-break "L" "Solo + Trbs (campana 2-3)"
      \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x2" |
      \bar ":|][|:"

      \sect "M" "Trumpets (campana 2-3)"
      \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "open" |
      \bar ":|][|:"

      \sect "N" "Vocals (campana 2-3)"
      \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "open" |
      \bar ":|]"
      \rs \rs \rs r8 \textMark "pn" \ghost tomh8  | \comp #4 |

      \sect "O" ""
      \bar "[|:-||"
      \comp #4 | \comp #4 | \rs \rs \rs r8 \textMark "pn" \ghost tomh8  | \comp #4 | \textEndMark "x2" |
      \bar ":|]"
      \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||" \break
      \comp #4 | \rs \rs \rs r8 cb8 | cb8 cb8 r4 r8 cb8 cb8 cb8 | r4. cb8 cb8 cb8 r4 \fermata | \bar "||" 
      \textMark "tutti" cb2:16 \fermata \tuplet 3/2 { cb4 cb4 cb4 } |

      
      \bar "|."
    }
>>
