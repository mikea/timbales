\version "2.24.2"
\include "common/all.ly"
\include "charts/common.ly"

date = #(strftime "%Y-%m-%d" (localtime (current-time)))

\header {
  title = "Lazaro y su Microfono"
  composer = "Mayito Fernandez"
  subsubtitle = "(Cha-Cha-Cha)"
  instrument = "Timbales"
  tagline = \markup { "Lazaro y su Microfono - https://github.com/mikea/timbales - " \date }
}

\newTimbalesStaff <<
    \newDrumVoiceOne \drummode { 
        \override Score.BarNumber.break-visibility = ##(#f #t #t)

        % intro
        \bar "[|:" 
        \comp #4 | \comp #4 | \comp #4 | r2 timh8 timh8 timh16 timh16 r8 |
        \bar "||" 
        \comp #4 | \comp #4 | \rs r8 timh8 r8 timh8 r8 timh8 | r4 r8 timh8 r8 timh8 r4 |
        \bar "||" 

        \sect "A" ""
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \rs \rs timh4^> timh4^> | timh4^> r2. | timh4^> r4 timh8^> timh8^> timh8^> timh8^> |

        \sect "B" ""
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \rs \rs timh8^> timh4^> timh8^> | \rs \rs timh8^> timh4^> timh8^> | r4 r8 timh4.^> timh4:16 |

        \bar ":|][|:" 

        \sect "C" ""
        \comp #4 | \comp #4 | \comp #4 | r8 timh4 timh4. timh4:16 |
        \comp #4 | \comp #4 | \comp #4 | r8 timh4 timh4. timh4:16 |
        
        \bar ":|][|:" 

        \sect "D" "Flute solo"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |

        \sect "E" "Piano Solo"
        \bar "[|:-||" 
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar ":|]" 
        \comp #4 | cb16 cb16 cb16 cb16 cb4 cb16 cb16 cb16 cb16 cb4 |

        \sect "F" "Mambo"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |

        \sect "G" "Coro/Pregon"
        \bar "[|:-||" 
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |

        \bar ":|][|:" 

        \sect "H" "Flute Solo"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar ":|]" 

        \sect "I" "Flute Solo II"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |

        \sect "J" "(open)"
        \bar "[|:-||" 
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar ":|][|:" 
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar ":|]" 

        \sect "K" "(on cue)"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar "[|:-||" 
        \comp #4 | \comp #4 | \comp #4 | \comp #4 |
        \bar ":|]" 
        \comp #4 | timh8 timh8 r8 timh4 timh8 timh4 | r4 r8 timh8 timh4 r8 timh16 timh16 | timh4 r2. |

        \fine
    }
>>
