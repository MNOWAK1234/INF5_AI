(define (problem Hanoi)
	(:domain towers)
	(:objects k1 k2 k3 k4 k5 - disk
            x y z - rod)
	(:init
		(on-rod k1 x)
		(on-rod k2 x)
		(on-rod k3 x)
		(on-rod k4 x)
		(on-rod k5 x)
        (bigger k5 k4)
        (bigger k5 k3)
        (bigger k5 k2)
        (bigger k5 k1)
        (bigger k4 k3)
        (bigger k4 k2)
        (bigger k4 k1)
        (bigger k3 k2)
        (bigger k3 k1)
        (bigger k2 k1)
        
        (bigger k1 k1)
        (bigger k2 k2)
        (bigger k3 k3)
        (bigger k4 k4)
        (bigger k5 k5)
	)
	(:goal
		(and
		    (on-rod k1 z)
		    (on-rod k2 z)
		    (on-rod k3 z)
		    (on-rod k4 z)
		    (on-rod k5 z)
		)
	)
)
