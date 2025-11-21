oddHeaderMarkup = \markup
\fill-line {
  ""
  \unless \on-first-page-of-part \fromproperty #'header:instrument
  \if \should-print-page-number \fromproperty #'page:page-number-string
}

%% evenHeaderMarkup would inherit the value of
%% oddHeaderMarkup if it were not defined here
evenHeaderMarkup = \markup
\fill-line {
  \if \should-print-page-number \fromproperty #'page:page-number-string
  \unless \on-first-page-of-part \fromproperty #'header:instrument
  ""
}
