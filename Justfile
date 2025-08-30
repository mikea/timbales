alias w := watch
alias b := build

watch +WATCH_TARGET='build':
    watchexec -rc -w . --ignore "pdf/*" --print-events -- just {{WATCH_TARGET}}


build: _concat charts

_build TARGET:
    mkdir -p pdf
    lilypond -o pdf {{TARGET}}

charts: (_build "charts/escucha-el-ritmo.ly") (_build "charts/fuego-en-el-23.ly") (_build "charts/la-rebelion.ly") (_build "charts/lazaro-y-su-microfono.ly")  (_build "charts/changuito-se-boto.ly") (_build "charts/yambeque.ly") (_build "charts/numero-6.ly")  (_build "charts/usted-abuso.ly")

_concat: (_build "basics.ly") (_build "intros.ly") (_build "bell.ly") (_build "solo.ly") (_build "fills.ly") (_build "cha-cha-cha.ly") (_build "lh.ly") (_build "exercises.ly") (_build "contracampana.ly")
    gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile=pdf/all.pdf pdf/basics.pdf pdf/intros.pdf pdf/cascareo.pdf pdf/contracampana.pdf pdf/cha-cha-cha.pdf pdf/bell.pdf pdf/fills.pdf pdf/solo.pdf pdf/exercises.pdf pdf/lh.pdf
