build: (_build "bell.ly") (_build "basics.ly") 

_build TARGET:
    mkdir -p pdf
    lilypond -o pdf {{TARGET}}