\version "2.24.2"

\include "common/all.ly"

date = #(strftime "%Y-%m-%d" (localtime (current-time)))

\header {
  title = "Exercises"
  instrument = "Timbales"
  tagline = \markup { \date "https://mikea.github.io/timbales/" }
}


\newTimbalesStaff \newDrumVoiceOne \drummode { 
    \bar "[|:"
    timh16_"R" timh16_"R" timh16_"L" timh16_"L" timh16_"R"^>
    timh16_"L" timh16_"L" timh16_"R" timh16_"R" timh16_"L"^>
    timh16_"R" timh16_"R" timh16_"L" timh16_"L" timh16_"R"^>
    timh16_"L" timh16_"L" timh16_"R" timh16_"R" timh16_"L"^>
    timh16_"R" timh16_"R" timh16_"L" timh16_"L" timh16_"R"^>
    timh16_"L" timh16_"L" timh16_"R" timh16_"R" timh16_"L"^>
    timh16_"R" timh16_"R" timh16_"L" timh16_"L" timh16_"R"^>
    timh16_"L" timh16_"L" timh16_"R" timh16_"R" timh16_"L"^>
    timh16_"R" timh16_"R" timh16_"L" timh16_"L" timh16_"R"^>
    timh16_"L" timh16_"L" timh16_"R" timh16_"R" timh16_"L"^>
    timh16_"R" timh16_"R" timh16_"L" timh16_"L" timh16_"R"^>
    timh16_"L" timh16_"L" timh16_"R" timh16_"R" timh16_"L"^>
    timh16_"R" timh16_"R" timh16_"L" timh16_"L" timh16_"R"^>
    timh16_"L" timh16_"L" timh16_"R" timh16_"R" timh16_"L"^>
    timh16_"R" timh16_"R" timh16_"L" timh16_"L" timh16_"R"^>
    timh16_"L" timh16_"L" timh16_"R" timh16_"R" timh16_"L"^>
    \bar ":|]" 
}

\newTimbalesStaff \newDrumVoiceOne \drummode { 
    \bar "[|:"
    timh16_"R" timh16_"R" timh16_"L" timh16_"L" timh16_"R"^> timh16_"L"^>
    timh16_"R" timh16_"R" timh16_"L" timh16_"L" timh16_"R"^> timh16_"L"^>
    timh16_"R" timh16_"R" timh16_"L" timh16_"L" timh16_"R"^> timh16_"L"^>
    timh16_"R" timh16_"R" timh16_"L" timh16_"L" timh16_"R"^> timh16_"L"^>
    timh16_"R" timh16_"R" timh16_"L" timh16_"L" timh16_"R"^> timh16_"L"^>
    timh16_"R" timh16_"R" timh16_"L" timh16_"L" timh16_"R"^> timh16_"L"^>
    timh16_"R" timh16_"R" timh16_"L" timh16_"L" timh16_"R"^> timh16_"L"^>
    timh16_"R" timh16_"R" timh16_"L" timh16_"L" timh16_"R"^> timh16_"L"^>
    \bar ":|]" 
}

\newTimbalesStaff \newDrumVoiceOne \drummode { 
  \bar "[|:"
  timh16_"R" timh16_"R" timh16_"L" timh16_"L" timh16_"R"^> timh16_"R"^>
  timh16_"L" timh16_"L" timh16_"R" timh16_"R" timh16_"L"^> timh16_"L"^>
  timh16_"R" timh16_"R" timh16_"L" timh16_"L" timh16_"R"^> timh16_"R"^>
  timh16_"L" timh16_"L" timh16_"R" timh16_"R" timh16_"L"^> timh16_"L"^>
  timh16_"R" timh16_"R" timh16_"L" timh16_"L" timh16_"R"^> timh16_"R"^>
  timh16_"L" timh16_"L" timh16_"R" timh16_"R" timh16_"L"^> timh16_"L"^>
  timh16_"R" timh16_"R" timh16_"L" timh16_"L" timh16_"R"^> timh16_"R"^>
  timh16_"L" timh16_"L" timh16_"R" timh16_"R" timh16_"L"^> timh16_"L"^>
  \bar ":|]" 
}