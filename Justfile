alias w := watch
alias b := build

watch +WATCH_TARGET='build':
    watchexec -rc -w . --ignore "pdf/*" --print-events -- just {{WATCH_TARGET}}


build: (_build "basics.ly") (_build "bell.ly") (_build "solo.ly") (_build "fills.ly") (_build "cha-cha-cha.ly") charts

_build TARGET:
    mkdir -p pdf
    lilypond -o pdf {{TARGET}}

charts: (_build "charts/escucha-el-ritmo.ly") (_build "charts/fuego-en-el-23.ly") (_build "charts/la-rebelion.ly") (_build "charts/lazaro-y-su-microfono.ly")