big-segno = \textMark \markup {\fontsize #5 \segno}
fine = \textMark \markup {\fontsize #5 Fine}
big-coda = \textEndMark \markup {\fontsize #5 \coda}


inline-text = #(define-music-function (parser location m) (markup?)
  #{
    \stopStaff
    
    \once \override NoteHead.stencil = #ly:text-interface::print
    \once \override NoteHead.text = \markup \lower #1 { \fontsize #4 \bold \italic $m }
    c1

    \noBreak
    \bar ""

    \startStaff

  #})

dc-al-coda = \inline-text \markup { D.C. al Coda }
ds-al-coda = \inline-text \markup { D.S. al Coda }
ds-al-fine = \inline-text \markup { D.S. al Fine }
ds = \inline-text \markup { D.S. }
dc = \inline-text \markup { D.C. }

inline-coda = \inline-text \markup \lower #1.33 {\fontsize #5 \coda}

repeat-text = #(define-music-function (text) (string?)
  #{
    \textMark \markup { \italic #text }
  #}
)

only-first = \repeat-text "1st"
only-last = \repeat-text "last"
only-second = \repeat-text "2nd"
