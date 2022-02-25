; this is how i learn clips
; https://kcir.pwr.edu.pl/~witold/ai/CLIPS_tutorial/CLIPS_tutorial_1.html

(defrule duck
	(animal-is duck)
	=> 
	(printout t "hey, this is a duck" crlf)
)

(defrule is-it-a-duck
	(animal-has webbed-feet)
	(animal-has feathers)
	=>
  (assert (animal-is duck))
)
