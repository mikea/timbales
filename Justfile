alias w := watch

watch +WATCH_TARGET='build':
    watchexec -rc -w . --ignore "pdf/*" --print-events -- just {{WATCH_TARGET}}


build: basics bell solo

_build TARGET:
    mkdir -p pdf
    lilypond -o pdf {{TARGET}}

basics: (_build "basics.ly")
bell: (_build "bell.ly")
solo: (_build "solo.ly")
