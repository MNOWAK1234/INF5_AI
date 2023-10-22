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
                                        (przejscie (?col ?inne ?drugie))
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
