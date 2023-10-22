(define
	(domain game)
	(:requirements :adl)
    (:types klocek pole pomieszczenie kolor pilka)
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
            (exists (?skad - pomieszczenie) 
                (and
                    (human ?skad)
                    (exists (?col - kolor) 
                        (and
                            (przejscie ?col ?skad ?dokad)
                            (exists (?inne - pomieszczenie) 
                                (exists (?drugie - pomieszczenie)
                                    (and
                                        (przejscie ?col ?inne ?drugie)
                                        (moge-isc ?inne ?drugie)
                                    )
                                )
                            )
                        )
                    )
                )
            )
        )
        :effect
		(and
			(not(human ?skad))
            (human ?dokad)
            (not(moge-isc ?inne ?drugie))
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
            (exists (?inny - pomieszczenie)
                (exists (?drugi - pomieszczenie)
                    (and
                        (not (moge-isc ?inny ?drugi))
                        (przejscie ?col ?inny ?drugi)
                    )
                )
            )
        )
        :effect
		(and
			(not(ball ?p ?room))
            (moge-isc ?inny ?drugi)
		)
    )

)
