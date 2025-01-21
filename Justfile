alias w := watch

watch +WATCH_TARGET='build':
    watchexec -rc -w . --ignore "pdf/*" --print-events -- just {{WATCH_TARGET}}


build: (_build "basics.ly") (_build "bell.ly") (_build "solo.ly") (_build "fills.ly")

_build TARGET:
    mkdir -p pdf
    lilypond -o pdf {{TARGET}}
