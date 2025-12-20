%% http://lsr.di.unimi.it/LSR/Item?id=566

% The new @code{add-grace-property}. Thanks David Kastrup.
% see also : http://lilypond.1069038.n5.nabble.com/flam-snippet-not-working-td149310.html

#(define (add-grace-property context-name grob sym val)
   "Set @var{sym}=@var{val} for @var{grob} in @var{context-name}."
   (define (set-prop context)
    (let* ((current (ly:context-property context 'graceSettings))
            (new-settings (append current 
                                  (list (list context-name grob sym val)))))
      (ly:context-set-property! context 'graceSettings new-settings)))
      
  (make-apply-context set-prop))

%% Return repeated single notes or chords, depending on @var{print-chord?}
%% If @var{print-chord?} is set @code{#f}, the first written note is taken.
%% The Number of repeats is set by @var{lngth}
%% Only notes are returned. Other stuff like @code{Script}, @code{Fingering} 
%% is thrown away. Articulations can be preserved or cleared.
#(define (grace-from-main-note print-chord? remove-articulations? lngth music)
  (let* ((elts (ly:music-property music 'elements))
         (has-duration? 
           (lambda (x) (ly:duration? (ly:music-property x 'duration))))
         ;; If the whole chord should be printed catch Notes only.
         ;; If the first written note should be printed catch it.
         ;; Otherwise, don't touch the music.
         (mus (cond ((and (music-is-of-type? music 'event-chord) print-chord?)
                     (make-event-chord (event-chord-notes music)))
                    ((music-is-of-type? music 'event-chord)
                     (first (event-chord-notes music)))
                    (else music)))
         ;; Set duration of note, optionally clear 'articulations.
         (note (map-some-music
                  (lambda (m)
                    (and (has-duration? m)
                         (begin
                           (set! (ly:music-property m 'duration)
                                 (ly:make-duration (if (> lngth 1) 4 3) 0 1 1))
                           (if remove-articulations?
                               (set! (ly:music-property m 'articulations) '())
                               #f)
                           m)))
                  (ly:music-deep-copy mus)))
         (next-note (ly:music-deep-copy note))
         (last-note (ly:music-deep-copy note))
         ;; Create a list of notes for use with (> lngth 1)
         (m-list 
           (flatten-list 
             (list note 
                   (make-list (max 0 (- lngth 2)) next-note) 
                   last-note))))
  ;; Return a single note if (= lngth 1 ).
  ;; Insert Beam for (> lngth 1) and return the result.
  (cond ((= lngth 1 )
           note)
        ((> lngth 1)
           (list-set!  m-list 0
             (begin
                (ly:music-set-property! 
                    note 
                    'articulations
                    (list (make-music
                           'BeamEvent
                           'span-direction -1)))
                 note))          
           (list-set!  m-list (- lngth 1)
             (begin
                (ly:music-set-property! 
                    last-note 
                    'articulations
                    (list (make-music
                           'BeamEvent
                           'span-direction 1)))
                last-note))
            (make-sequential-music m-list))
         ;; fall back
         (else (make-sequential-music '()))
            )))

graceRepeat =
#(define-music-function (chord-repeat? remove-articulations? how-much note) 
  ((boolean? #f) (boolean? #t) integer? ly:music?)
  "Return @var{note} preceded by repeated and beamed grace-notes. The number of
  grace-notes is specified by @var{how-much}.
  If @var{note} is a chord the first written note of it is used.
  If @var{chord-repeat?} is specified the whole chord is repeated during 
  @code{GraceMusic}. 
  If @var{remove-articulations?} is @code{#t} the grace
  notes have articulations removed."
  #{
    % \acciaccatura 
    \slurDown
    \acciaccatura {  $(grace-from-main-note chord-repeat? remove-articulations? how-much note) }
    \slurNeutral
    $note 
  #})
  
flam = 
#(define-music-function (music)(ly:music?)
  "Return @var{music} preceded by 1 grace-note"
  #{ \graceRepeat ##f ##t #1 $music #})

drag =
#(define-music-function (music)(ly:music?)
  "Return @var{music} preceded by 2 grace-notes"
  #{ \graceRepeat ##f ##t 2 $music #})

ruff =
#(define-music-function (music)(ly:music?)
  "Return @var{music} preceded by 3 grace-notes"
  #{ \graceRepeat ##f ##t #3 $music #})

rruff =
#(define-music-function (music)(ly:music?)
  "Return @var{music} preceded by 4 grace-notes"
  #{ \graceRepeat ##f ##t #4 $music #})


flam-art = 
#(define-music-function (music)(ly:music?)
  "Return @var{music} preceded by 1 grace note with original articulation"
  #{ \graceRepeat ##f ##f #1 $music #})
