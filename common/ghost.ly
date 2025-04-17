ghost = #(define-music-function (music) (ly:music?) 
#{ 
    \tweak font-size -2
    \parenthesize $music 
#})
