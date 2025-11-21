
\paper {
    indent = 0
    ragged-bottom = ##t

    % https://github.com/lilypond/lilypond/blob/3912f0666ad13985d5d75772f685babb694a19af/ly/titling-init.ly#L108C1-L122C2

    oddHeaderMarkup = \markup
    \fill-line {
        ""
        \unless \on-first-page-of-part \fromproperty #'header:title
        \if \should-print-page-number \fromproperty #'page:page-number-string
    }

    evenHeaderMarkup = \markup
    \fill-line {
        \if \should-print-page-number \fromproperty #'page:page-number-string
        \unless \on-first-page-of-part \fromproperty #'header:title
        ""
    }
}