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

newTimbalesStaff = #(define-music-function
  (music)
  (ly:music?)
  #{
    \new DrumStaff \with {
        % instrumentName = "Timbales"
        drumStyleTable = #timbales-style
        \override StaffSymbol.line-count = #2
        \override TextScript.font-size = #-6
        \override TextScript.font-family = #'sans
    } { #music }
  #})


\paper {
    indent = 0
    ragged-bottom = ##t
}
