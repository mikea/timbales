newDrumVoiceOne = #(define-music-function
  (music)
  (ly:music?)
  #{
    \new DrumVoice \with {
        \voiceOne
        % Smaller NoteHead
        $(add-grace-property 'Voice 'NoteHead 'font-size -6)
        % Smaller Flag
        $(add-grace-property 'Voice 'Flag 'font-size -6)
        % Shorter Stems for unbeamed Stems
        $(add-grace-property 'Voice 'Stem 'length 3)
        % Shorter Stems for beamed stems
        $(add-grace-property 'Voice 'Stem 'details '((beamed-lengths . (2))))
        % Beams less thick
        $(add-grace-property 'Voice 'Beam 'beam-thickness 0.35)
        % Beams closer together
        $(add-grace-property 'Voice 'Beam 'length-fraction 0.7)
    } { #music }
  #})

newDrumVoiceTwo = #(define-music-function
  (music)
  (ly:music?)
  #{
    \new DrumVoice \with {
        \voiceTwo
        % Smaller NoteHead
        $(add-grace-property 'Voice 'NoteHead 'font-size -6)
        % Smaller Flag
        $(add-grace-property 'Voice 'Flag 'font-size -6)
        % Shorter Stems for unbeamed Stems
        $(add-grace-property 'Voice 'Stem 'length 3)
        % Shorter Stems for beamed stems
        $(add-grace-property 'Voice 'Stem 'details '((beamed-lengths . (2))))
        % Beams less thick
        $(add-grace-property 'Voice 'Beam 'beam-thickness 0.35)
        % Beams closer together
        $(add-grace-property 'Voice 'Beam 'length-fraction 0.7)
    } { #music }
  #})


#(define mytimbales `(
        (losidestick cross #f -1)
        (lotimbale () #f -1)
        (cowbell triangle #f 2)
        (hisidestick cross #f 1)
        (hitimbale () #f 1)
        (crashcymbal xcircle #f 3)
        (claves harmonic-black #f 2)
        (lowoodblock  harmonic-black #f -2)
))

newTimbalesStaff = #(define-music-function
  (music)
  (ly:music?)
  #{
    \new DrumStaff \with {
        % instrumentName = "Timbales"
        drumStyleTable = #(alist->hash-table mytimbales)
        \override StaffSymbol.line-count = #2
        \override TextScript.font-size = #-6
        \override TextScript.font-family = #'sans
    } { #music }
  #})


\paper {
    indent = 0
    ragged-bottom = ##t
}
