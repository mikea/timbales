\version "2.24.2"
\include "charts/common.ly"

date = #(strftime "%Y-%m-%d" (localtime (current-time)))

\header {
  title = "Traigo la Salsa"
  subsubtitle = "(Salsa 2-3)"
  composer = "Pete Perignon"
  instrument = "Timbales"
  tagline = \markup { "Traigo la Salsa - https://mikea.github.io/timbales/ - " \date }
}

\newTimbalesStaff <<
    \newDrumVoiceOne \drummode { 
        \tempo 4 = 182

        \partial 4 timh4:16~ |

        \sect-no-break "Intro" "campanas 2-3"
        \abanico-rs | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        cymc4 \rs \rs \rs  | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | cb8 cb8 cb4 r4 cb8 cb8 | cb4 r8 cymc4. r4 |

        \sect "Coro" "campanas"
        cymc4 \rs \rs \rs | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |

        \sect "Voz" "cascara"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | cb4 r4 cb4 r4 | r2 r4 cymc4 |

        \sect "Coro" "campanas"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |

        \sect "Voz 2" "cascara"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | cb4 r4 cb4 r4 | r2 r4 cb4|
        cb8 cb8 cb4 r8 cb8 cb8 cb8 | r8 cb8 r8 cb8 r2 | r1 | r2 r4 cymc4 |

        \sect "Pregon/Coro" "campanas"
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "bell cue x7" |
        \bar ":|][|:"

        \sect "Mambo" "campanas"
        cymc4 \rs \rs \rs | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar ":|]"
        cb8 cb8 cb4 r8 cb8 cb8 cb8 | r8 cb8 r8 cb8 r2 | r1 | r2 r4 cymc4 |

        \sect "Pregon/Coro 2" "campanas"
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \textMark "fill out" \comp #4 \textEndMark "x5"  |
 
        \sect "Mambo 2" "ride"
        \bar ":|][|:"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x4" |
        \bar ":|][|:"
 
        \sect-no-break "Solos" "campanas"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x5" |
        \bar ":|]"

        \sect "Pregon/Coro 3" "campanas"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | \comp #4 | \abanico-long |

        \sect "Coda" "campanas"
        \abanico-rs | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||" \break
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | cb8 cb8 cb4 r4 cb8 cb8 | cb4 r8 cymc4. r4 |
        r1 | r1 | 

        \fine
    }
>>
