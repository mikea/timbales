\version "2.24.2"

\paper {
    indent = 0
}

date = #(strftime "%Y-%m-%d" (localtime (current-time)))

\header {
  title = "Bell Patterns"
  tagline = \markup { \date "https://github.com/mikea/timbales" }
}

%% 2-3


\new DrumStaff \with {
    % instrumentName = "Timbales"
    drumStyleTable = #timbales-style
    \override StaffSymbol.line-count = #2
} <<
    \new DrumVoice { \voiceOne \drummode { 
        \sectionLabel "2-3"
        \bar ".|:"
        % cascara
        cb4-> cb4-> cb8 cb8-> r8 cb8 | cb4-> cb8 cb8-> r8 cb8-> r8 cb8 |
        \bar ":..:"
        % mambo
        cb4-> cb4-> cb8 cb8 cb8 cb8-> | r8 cb8 cb8 cb8 cb4-> cb8 cb8 |
        \bar ":..:"
        \break

        cb4-> cb4-> cb4-> cb4-> | cb4-> cb8 cb8 cb4-> cb4-> |
        \bar ":..:"
        cb4-> cb4-> cb4-> cb4-> | cb4-> cb8 cb8-> r8 cb8-> r8 cb8 |
        \bar ":..:"
        \break

        cb4-> cb4-> cb4-> cb8 cb8 | cb4-> cb8 cb8 cb4-> cb4-> |
        \bar ":..:"
        cb4-> cb4-> cb4-> cb8 cb8 | cb4-> cb8 cb8 cb4-> cb8 cb8 |
        \bar ":..:"
        \break

        cb4-> cb4-> cb4-> cb8 cb8-> | r8 cb8 cb8 cb8 cb4-> cb8 cb8 |
        \bar ":..:"
        cb4-> cb4-> cb8 cb8 cb8 cb8 | cb4-> cb8 cb8 cb4-> cb8 cb8 |
        \bar ":..:"
        \break

        cb4-> cb4-> cb8 cb8 cb8 cb8 | cb4-> cb8 cb8-> r8 cb8 cb8 cb8 |
        \bar ":..:"
        cb4-> cb4-> cb8 cb8-> r8 cb8 | cb4-> cb8 cb8 cb4-> cb8 cb8 |
        \bar ":..:"
        \break

        cb4-> cb4-> cb8 cb8-> r8 cb8 | cb4-> cb8 cb8-> r8 cb8-> r8 cb8 |
        \bar ":..:"
        cb4-> cb4-> cb8 cb8-> r8 cb8-> | r8 cb8 cb8 cb8 cb4-> cb8 cb8 |
        \bar ":..:"
        \break

        cb4-> cb4-> cb8 cb8-> r8 cb8-> | r8 cb8 cb8 cb8-> r8 cb8-> r8 cb8 |
        \bar ":..:"
        cb4-> cb4-> cb8 cb8-> r8 cb8-> | r8 cb8 cb8 cb8-> r8 cb8-> r8 cb8 |
        \bar ":..:"
        \break

        cb4-> cb8 cb8 cb8 cb8 cb8 cb8-> | r8 cb8 cb8 cb8 cb4-> cb8 cb8 |
        \bar ":..:"
        cb8 cb8 cb4-> cb8 cb8 cb8 cb8-> | r8 cb8 cb8 cb8 cb4-> cb8 cb8 |
        \break
        \bar ":|."
    }}
    \new DrumVoice { \voiceTwo  \drummode {
        r4 ssl ssl r | ssl4. ssl4. ssl4 |
        r4 ssl ssl r | ssl4. ssl4. ssl4 |
        r4 ssl ssl r | ssl4. ssl4. ssl4 |
        r4 ssl ssl r | ssl4. ssl4. ssl4 |
        r4 ssl ssl r | ssl4. ssl4. ssl4 |
        r4 ssl ssl r | ssl4. ssl4. ssl4 |
        r4 ssl ssl r | ssl4. ssl4. ssl4 |
        r4 ssl ssl r | ssl4. ssl4. ssl4 |
        r4 ssl ssl r | ssl4. ssl4. ssl4 |
        r4 ssl ssl r | ssl4. ssl4. ssl4 |
        r4 ssl ssl r | ssl4. ssl4. ssl4 |
        r4 ssl ssl r | ssl4. ssl4. ssl4 |
        r4 ssl ssl r | ssl4. ssl4. ssl4 |
        r4 ssl ssl r | ssl4. ssl4. ssl4 |
        r4 ssl ssl r | ssl4. ssl4. ssl4 |
        r4 ssl ssl r | ssl4. ssl4. ssl4 |
    }}
>>
