(define
	(domain game)
	(:requirements :adl)
    (:types klocek pole pomieszczenie)
	(:predicates
		(human ?x - pomieszczenie)
		(rozwiaz ?x - pomieszczenie)
        (postawiony ?x - klocek ?y - pole)
        (somsiad ?x ?y - pole)
        (przejscie ?k - kolor ?x ?y - pomieszczenie)
        (barwa ?x - pilka ?y - kolor)
        (ball ?x - pilka ?y - pomieszczenie)
        (moge-isc ?x ?y - pomieszczenie)
	)

    (:action przesun
        :parameters (?k - klocek)
        :precondition
        (and
            (exists (?skad - pole) (postawiony ?k ?skad))
            (exists (?dokad - pole) 
                (and
                    (somsiad ?skad ?dokad)
                    (not(exists (?block - klocek) (postawiony ?block ?dokad)))
                )
            )
		)
		:effect
		(and
			(not(postawiony ?k ?skad))
            (postawiony ?k ?dokad)
		)
    )

    (:action idz
        :parameters (?dokad - pomieszczenie)
        :precondition
        (and
            (exists (?skad - pomieszczenie) (human ?skad))
            (exists (?col - pomieszczenie) (przejscie ?col ?skad ?dokad))
        )
        :effect
		(and
			(not(human ?skad))
            (human ?dokad)
		)
    )

    (:action wez
        :parameters (?col - kolor)
        :precondition
        (and
            (exists (?room - pomieszczenie) (human ?room))
            (exists (?p - pilka) 
                (and
                    (barwa ?p ?col)
                    (ball ?p ?room)
                )
            )
        )
        :effect
		(and
			(not(ball ?p ?room))
            (when 
		        (exists (?pierwszy - pomieszczenie)
                    (exists (?drugi - pomieszczenie) 
                        (and
                            (przejscie ?col ?pierwszy ?drugi)
                            (not (= ?pierwszy ?drugi))
                            (not (moge-isc ?pierwszy ?drugi))
                        )
                    )
                );; warunek
		        (moge-isc ?pierwszy ?drugi) ;; akcja
	        )
		)
    )

)
