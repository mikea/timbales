\version "2.24.2"
\include "charts/common.ly"

date = #(strftime "%Y-%m-%d" (localtime (current-time)))

\header {
  title = "Baila y Confía"
  subsubtitle = "(Salsa)"
  composer = "Andy Rubal"
  instrument = "Timbales"
  tagline = \markup { "Baila y Confía - https://mikea.github.io/timbales/ - " \date }
}

\newTimbalesStaff <<
    \newDrumVoiceOne \drummode { 
        \tempo 4 = 196
        

        \sect "Intro" "(clave 2-3)" 
        \comp #4 | r8 cymc8 \rs \rs \rs | \comp #4 | \rs r8 cymc8 r8 cymc8 \rs | \bar "||"
        \rs r8 cymc8 r8 cymc8 \rs | \rs r8 cymc8 cymc4 \rs | \comp #4 | \rs \rs \rs cymc4~ | \bar "||"
        \sectionLabel "(campanas 2-3)"
        cymc4 \rs \rs \rs | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \rs \rs cymc4 cymc4 | \bar "||"
        cymc4 \rs \rs \rs | \comp #4 | 

        \sect "A" "Voz (cascara 2-3)" 
\repeat volta 4 {
        \bar "[|:-||"
        \comp #4 | \comp #4 |
    \alternative {    
        \volta 1,2,3 { \comp #4  | \comp #4 | \bar ":|]" }
        \volta 4 { | \rs \rs \rs \only-last r8 \drag timh8 | r8 timl8 cymc2 \rs | \bar "||" }
    }
}
        \sect-no-break "B" "(cascara 2-3)" 
        cymc4. cymc4. r4 | r8 cymc8 cymc4^. r2 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \rs cymc2 \rs | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \rs \rs \drag timh4 timh8 timh | \bar "||"
        \comp #4 | \comp #4 | <<timh4 timl>> <<timh4 timl>> <<timh2 timl>> | \ghost cymc2 \ghost cymc2 | \bar "||"

        \sect "C" "Pregon/Choro (1 - cascara, 2-4 campanas 2-3)" 
\repeat volta 4 {
        \bar "[|:-||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | 
    \alternative {    
        \volta 1 { r4 r8 <<cb8 timl>> <<cb8 timl>> <<cb8 timl>> cymc4 \laissezVibrer |\bar ":|]" }
        \volta 2 { <<cb8 timl>> <<cb8 timl>> <<cb8 timl>> <<cb8 timl>> <<cb8 timl>> cymc4. \laissezVibrer |\bar ":|]" }
        \volta 3,4 { \comp #4 | \bar ":|]" }
    }
}

        \sect "D" "Mambo 1 (campanas 2-3)" 
        \bar "[|:-||"
        cymc4 \rs \rs \rs | \comp #4 | r8 \only-second cymc8 \rs \rs \rs | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \comp #4 | \bar "||"

        \bar ":|][|:"

        \sect "E" "Perc Solos (campanas 2-3)" 
\repeat volta 2 {
        \comp #4 | \comp #4 | \comp #4 | \rs r8 \ghost cymc4 \ghost cymc4 r8 | \bar "||"
        \comp #4 | \comp #4 | 
    \alternative {    
        \volta 1 { \comp #4 | \rs r8 cymc4 r8 \rs | \bar ":|]" }
        \volta 2 { r8 <<cb8 timl>> <<cb8 timl>> <<cb8 timl>> <<cb8 timl>> <<cb8 timl>> <<cb8 timl>> <<cb8 timl>>| <<cb8 timl>> <<cb8 timl>> <<cb8 timl>> <<cb8 timl>> <<cb8 timl>> <<cb8 timl>> <<cb8 timl>> <<cb8 timl>> | \bar "||" }
    }   
}

        \sect "F" "Mambo 2 (campanas 2-3)" 
        \bar "[|:-||"
        \only-first cymc4 \rs \rs \rs | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \bar ":|][|:"
        r8 cymc8 cymc4 r8 cymc8 cymc4 | \comp #4 | r8 cymc8 cymc4 r8 cymc8 cymc4 | \comp #4 | \bar "||"
        \bar ":|]"

        \sect "G" "Break" 
        \drag timh4 r4 cymc2 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \drag timh4 timl4 <<cb8 timl>> <<cb8 timh>> <<cb8 timl>> <<cb8 timh>> | \bar "||"

        \sect "H" "Guitar Solo (campanas 2-3)" 
        \bar "[|:-||"
        \only-first cymc4 \rs \rs \rs | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \bar ":|][|:"
        r8 cymc8 cymc4 r8 cymc8 cymc4 | \comp #4 | r8 cymc8 cymc4 r8 cymc8 cymc4 | \comp #4 | \bar "||"
        \bar ":|]"

        \sect "I" "Break" 
        \drag timh4 r4 cymc2 | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \comp #4 | \drag timh4 timl4 <<cb8 timl>> <<cb8 timl>> <<cb8 timl>> <<cb8 timl>> | \bar "||"

        \sect "J" "Trumpet Solo (campanas 2-3)" 
        \bar "[|:-||"
        \only-first cymc4 \rs \rs \rs | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \bar ":|][|:"
        r8 cymc8 cymc4 r8 cymc8 cymc4 | \comp #4 | r8 cymc8 cymc4 r8 cymc8 cymc4 | \comp #4 | \bar "||"
        \bar ":|][|:"

        \sect "K" "Choro (campanas 2-3)" 
\autoLineBreaksOff
        \comp #4 | \comp #4 | \comp #4 | \comp #4 \textEndMark "x3" | \bar "||"
        \bar ":|]"
        r8 cymc4 cymc4 r8 \rs | \comp #4 | \comp #4 | \comp #4 | \bar "||"
        \comp #4 | \comp #4 | \tuplet 3/2 { timl4 timh4 timl4 } \tuplet 3/2 { timl4 timh4 timl4 } | 
        timl4 r8 cb16 cb16 cb8 cb8 cymc4^. | \bar "||"

        \bar "|."

    }
>>
 