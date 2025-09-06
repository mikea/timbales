alias w := watch
alias b := build

default: build

watch +WATCH_TARGET='build':
    watchexec -rc -w . --ignore "pdf/*" --print-events -- just {{WATCH_TARGET}}


build: notes charts

notes:
    find . -maxdepth 1 -type f -name "*.ly" -exec just _build {} \;
    gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile=pdf/all.pdf \
        pdf/basics.pdf \
        pdf/intros.pdf \
        pdf/cascareo.pdf \
        pdf/contracampana.pdf \
        pdf/cha-cha-cha.pdf \
        pdf/bell.pdf \
        pdf/fills.pdf \
        pdf/solo.pdf \
        pdf/exercises.pdf \
        pdf/lh.pdf

charts: 
    find charts -maxdepth 1 -type f -name "*.ly" -exec just _build {} \;

_build TARGET:
    mkdir -p pdf
    lilypond -o pdf {{TARGET}}
