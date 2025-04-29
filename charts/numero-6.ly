\version "2.24.2"
\include "charts/common.ly"

date = #(strftime "%Y-%m-%d" (localtime (current-time)))

\header {
  title = "Numero 6"
  composer = "Bobby Rodrigues & La Compania"
  subsubtitle = "(Salsa)"
  instrument = "Timbales"
  tagline = \markup { "Numero 6 - https://github.com/mikea/timbales - " \date }
}

\newTimbalesStaff <<
    \newDrumVoiceOne \drummode { 
        % \tempo 4 = 175

        % intro
        \textMark "2-3 cascara"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \rs \rs r8 cb8 r8 cb8 | \comp #4  | \rs \rs r8 cb8 r8 cb8 | \rs r8 timh4.^> timh4:16 |


        \bar "[|:-||"

        % A
        \sect "A" "Verse"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |

        \bar ":|]" 

        % B
        \sect "B" ""
        \rs r8 cymc8 \rs \rs | \rs r8 cymc8 \rs \rs | \rs r8 cymc8 \rs \rs | \rs r8 cymc8 \rs \rs |
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | \comp #4 | timh4 timl r4 timh4:16 |

        \bar "||"

        % C
        \sect "C" "Verse"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |

        \bar "[|:-||"

        % D
        \sect "D" ""
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |

        \bar ":|][|:" 

        % E
        \sect "E" "Coro (bell)"
        \comp #4 | \comp #4 | 
        \rs \rs \rs \textMark "1st time" r8 <<timh8 cb8>> | r8 <<timh8 cb8>> <<timh4 cb4>> r4 <<timl4 cb4>> |
        \bar "||"
        \sectionLabel "Pregon"
        <<timl8 cb8>> <<timl8 cb8>> r4 r4 r8 \textMark "fill" timh16 16 | timh8 timh16 16 timh4^> \rs <<timh4~ cymc4~>> | <<timh4 cymc4>> \rs \rs \rs | \comp #4 |
        \bar ":|]" 
        \rbar
        \break
        \sectionLabel "Last Coro"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |

        \sectionLabel "Mambo (4x)"
        \rbar
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |

        \bar ":|][|:" 

        % F
        \sect "F" "Coro"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar "||"
        \sectionLabel "Pregon"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |

        \bar ":|][|:" 

        % G
        \sect "G" "Coro+Trumpet (3x)"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \sectionLabel "Hablado (5x)"
        \bar ":|][|:" \rbar
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar ":|][|:" \rbar
        \sectionLabel "Mona"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar ":|][|:" \rbar
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |

        \bar ":|][|:" 

        % I
        \sect "I" "Pregon/Coro (open)"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |

        \bar ":|]" 

        % Coda
        \sect "Coda" "cascara"
        \comp #4 |  \rs \rs r8 cb8 r8 cb8 | \comp #4 | r8 cb8 r8 cb8  \rs  \rs  |
        \bar "||"
        \sectionLabel "bell"
        \comp #4 | \comp #4 | \comp #4 | <<timl4 timh4>> <<timl8 timh8>> <<timl8 timh8>> r2 |

        \fine
    }
>>
