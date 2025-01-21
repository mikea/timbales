newDrumVoice = #(define-music-function
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

