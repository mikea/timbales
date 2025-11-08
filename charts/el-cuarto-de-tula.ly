\version "2.24.2"
\include "charts/common.ly"

date = #(strftime "%Y-%m-%d" (localtime (current-time)))

\header {
  title = "El Cuarto De Tula"
  subsubtitle = "(Cubano)"
  composer = "Sergio González Siaba"
  arranger = "perf. Steve Forss"
  opus = "https://youtu.be/FziwJMvfp3c"
  instrument = "Timbales"
  tagline = \markup { "Title - https://mikea.github.io/timbales/ - " \date }
}

makePercent =
#(define-music-function (parser location note) (ly:music?)
   "Make a percent repeat the same length as NOTE."
   (make-music 'PercentEvent
               'length (ly:music-length note)))


\newTimbalesStaff <<
    \newDrumVoiceOne \drummode { 

        \tempo 4 = 200

        \partial 4 { \drag timh4^> } |

        \sect-no-break "Intro1" "Sax (cascara 2-3)"

\repeat volta 2 {
        \bar "[|:-||"
        \makePercent { s1 | s1 | s1 | s1 } | \bar "."
        \makePercent { s1 | s1 | s1 } | 
        \alternative {
          \volta 1 {\comp #4 | \bar ":|]" }
          \volta 2 {\rs \rs \rs \ruff timh4^> | \bar "." }
        }
}

        \sect "A1" "Voz (cascara 2-3)"

\repeat volta 2 {
        \bar "[|:-||"
        \makePercent { s1 | s1 | s1 | s1 } | \bar "."
        \makePercent { s1 | s1 | s1 } | 
        \alternative {
          \volta 1 {\comp #4 | \bar ":|]" }
          \volta 2 {\rs \rs \rs \ruff timh4^> | \bar "." }
        }
}

        timh4^> \rs \rs \rs | \makePercent { s1 | s1 | s1 } | \bar "."
        \makePercent { s1 | s1 | s1 } | \rs \rs \rs \ruff timh4^>| \bar "."

        \sect "Intro2" "(cascara 2-3)"

        \makePercent { s1 | s1 | s1 | s1 } | \bar "."
        \makePercent { s1 | s1 | s1 } | \rs \rs r8 timh8^> timh4^> | \bar "."

        \makePercent { s1 | s1 | s1 } | \rs \rs r8 \drag timl8 timl4 | \bar "."
        \comp #4 | \rs \rs \rs timh4^> | \comp #4 | \rs <<timl8 cb8>> <<timl8 cb8>> r8 <<timl8 cb8>> \flam timh4^> | \bar "."

        \sect "A2" "Voz (cascara 2-3)"

\repeat volta 2 {
        \bar "[|:-||"
        \makePercent { s1 | s1 | s1 | s1 } | \bar "."
        \makePercent { s1 | s1 | s1 } | 
        \alternative {
          \volta 1 {\comp #4 | \bar ":|]" }
          \volta 2 {\rs \rs \rs \drag timh4^> | \bar "." }
        }
}

        timh4^> \rs \rs \rs| \makePercent { s1 | s1 | s1 } | \bar "."
        \makePercent { s1 | s1 | s1 } | \rs r8 timh8^> r8 timh8^> timh4^> | \bar "."

        \sect "B" "Coro 1 (campana 2-3)"

        \override Score.BarNumber.break-visibility = ##(#f #f #t)

        timh4^> \rs \rs \rs | \makePercent { s1 | s1 | s1 } | \bar "."
        \makePercent { s1 | s1 | s1 | s1 } | \bar "."

        \textMark "Sax Solo 1"
        \makePercent { s1 | s1 | s1 | s1 } | \bar "."
        \makePercent { s1 | s1 | s1 | s1 } | \bar "."
        
        \break

        \textMark "Coro 2"
        \makePercent { s1 | s1 | s1 | s1 } | \bar "."
        \makePercent { s1 | s1 | s1 } | r8 timl8  timl8 timl8 timl4 timh4  | \bar "."

        \textMark "Sax Solo 2"
        \flam timh4^> \rs \rs \rs | \makePercent { s1 | s1 | s1 } | \bar "."
        \makePercent { s1 | s1 | s1 | s1 } | \bar "."
        \break

        \textMark "Coro 3"
        <<cymc4 timh>> \rs \rs \rs | \makePercent { s1 | s1 | s1 } | \bar "."
        \makePercent { s1 | s1 | s1 } | \rs \rs \rs timh4^> | \bar "."

        \textMark "Sax Solo 3"
        \makePercent { s1 | s1 | s1 | s1 } | \bar "."
        \makePercent { s1 | s1 | s1 | s1 } | \bar "."

        \sect "C" "Sax Solo (campana 2-3)"

        \override Score.BarNumber.break-visibility = ##(#f #f #t)
        
        % 1
        \makePercent { s1 | s1 | s1 | s1 } | \bar "."
        \makePercent { s1 | s1 | s1 } | \rs \rs r8 timl8 timl4 | \bar "."

        % 9
        timh4^> \rs \rs \rs | \makePercent { s1 | s1 | s1 } | \bar "."
        \makePercent { s1 | s1 | s1 | s1 } | \bar "."

        % 17
        \makePercent { s1 | s1 | s1 | s1 } | \bar "."
        \break
        \makePercent { s1 | s1 | s1 | s1 } | \bar "."

        % 25
        \makePercent { s1 | s1 | s1 | s1 } | \bar "."
        \makePercent { s1 | s1 | s1 } | \rs r8 timh8^> timh4^> timh8^> timh8^> | \bar "."

        % 33
        timh4^> <<cymc4 timh>> \rs \rs | \makePercent { s1 | s1 | s1 } | \bar "."
        \makePercent { s1 | s1 | s1 | s1 } | \bar "."

        \break
        % 41
        \makePercent { s1 | s1 | s1 | s1 } | \bar "."
        \makePercent { s1 | s1 | s1 } | \rs r8 timl8 timl4 timl8:16 timl8 | \bar "."

        % 49
        timl4 timl4^> \rs \rs | \makePercent { s1 | s1 | s1 } | \bar "."
        \makePercent { s1 | s1 | s1 | s1 } | \bar "."

        \sect "D" "Piano Solo"
        \override Score.BarNumber.break-visibility = ##(#f #f #t)

        % 1
        \comp #4 | \comp #4 | \rs <<cb4 timl>> <<cb4 timl>> r4 | \ruff timh4^> r8 timh8^> r4 timl4 | \bar "."

        \sectionLabel "cascara 2-3"
        \makePercent { s1 | s1 | s1 | s1 } | \bar "."
        \makePercent { s1 | s1 | s1 | s1 } | \bar "."

        \makePercent { s1 | s1 | s1 | s1 } | \bar "."
        \makePercent { s1 | s1 | s1 | s1 } | \bar "."
        \break

        \makePercent { s1 | s1 | s1 | s1 } | \bar "."
        \makePercent { s1 | s1 | s1 | s1 } | \bar "."

        \makePercent { s1 | s1 | s1 | s1 } | \bar "."
        \makePercent { s1 | s1 | s1 } | \rs \rs \rs \ruff timh4^> | \bar "."

        timh4^> \rs \rs \rs | \makePercent { s1 | s1 | s1 } | \bar "."
        \makePercent { s1 | s1 | s1 | s1 } | \bar "."

        \break

        \makePercent { s1 | s1 | s1 | s1 } | \bar "."
        \makePercent { s1 | s1 | s1 | s1 } | \bar "."

        \makePercent { s1 | s1 | s1 | s1 } | \bar "."
        \makePercent { s1 | s1 | s1 | s1 } | \bar "."

        \makePercent { s1 | s1 | s1 | s1 } | \bar "."
        \makePercent { s1 | s1 | s1 } | timh4^> r4 timh8^> timh8^> timh4^> | \bar "."

        \sect "E" "Mambo (campana 2-3)"
        \override Score.BarNumber.break-visibility = ##(#f #f #t)

        % 1
        <<cymc4 timh4>> \rs \rs \rs | \makePercent { s1 | s1 | s1 } | \bar "."
        \makePercent { s1 | s1 | s1 | s1 } | \bar "."

        % 9
        \makePercent { s1 | s1 | s1 | s1 } | \bar "."
        \makePercent { s1 | s1 } | 
        \rs <<cymc4 timh>> cb4 <<cymc4 timh>> | cb4 <<cymc4 timh>> timh8 timh8 timh8^> timh8^> | \bar "."

        % 17
        <<timh4^> cymc>> \rs \rs \rs | \makePercent { s1 | s1 | s1 } | \bar "."
        \break
        \makePercent { s1 | s1 | s1 | s1 } | \bar "."

        % 25
        \makePercent { s1 | s1 | s1 | s1 } | \bar "."
        \makePercent { s1 | s1 | s1 | s1 } | \bar "."

        % 33
        \makePercent { s1 | s1 | s1 | s1 } | \bar "."
        \makePercent { s1 | s1 | s1 | s1 } | \bar "."

        \sect "F" "Coro1 (campana 2-3)"

        % 1
        cymc4 \rs \rs \rs | \makePercent {| s1 | s1 | s1 } | \bar "."
        \makePercent { s1 | s1  } \rs \rs \rs \flam timh8^> timh8^> | r8 timh8^> timh4^> timh4^> timh4^> | \bar "."

        % 9
        \sectionLabel "Sax Solo1 (double campana )"
        cymc4 \rs \rs \rs | \makePercent {| s1 | s1 | s1 } | \bar "."
        \makePercent { s1 | s1 | s1 | s1 } | \bar "."

        \break

        % 17
        \sectionLabel "Coro 2"
        cymc4 \rs \rs \rs | \makePercent {| s1 | s1 | s1 } | \bar "."
        \makePercent { s1 | s1 | s1 | } r8 timh8^>  r4 timh4^> timh8^> timh8^> | \bar "."

        % 25
        \sectionLabel "Sax Solo2"
        cymc4 \rs \rs \rs | \makePercent {| s1 | s1 | s1 } | \bar "."
        \makePercent { s1 | s1 | s1 |} r8 timh8^>  r4 timh4^> timh8^> timh8^> | \bar "."

        \break

        % 33
        \sectionLabel "Last Coro"
        cymc4 \rs \rs \rs | \makePercent {| s1 | s1 | } r8 timh8^> r8 timh8^> timh4^> timh4^>  | \bar "."
        % 37

        timl4 timh4 cymc2 |

        \bar "|."
    }
>>
