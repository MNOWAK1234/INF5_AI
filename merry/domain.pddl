(define
	(domain game)
	(:requirements :adl)
    (:types klocek pole pomieszczenie)
	(:predicates
		(human ?x - pomieszczenie)
		(rozwiaz ?x - pomieszczenie)
        (postawiony ?x - klocek ?y - pole)
        (somsiad ?x ?y - pole)
        (zielone ?x ?y - pomieszczenie)
        (czerwone ?x ?y - pomieszczenie)
        (pomaranczowe ?x ?y - pomieszczenie)
        (niebieskie ?x ?y - pomieszczenie)
        (rozowe ?x ?y - pomieszczenie)
        (barwa ?x - pilka ?y - kolor)
        (ball ?x - pilka ?y - pomieszczenie)
        (moge-isc ?x ?y - pomieszczenie)
	)

    (:action przesun
        :parameters (?k - klocek)
        :precondition
        (and
            (exist (?skad - pole) (postawiony ?k ?skad)
            (exist (?dokad - pole) 
                (and
                    (somsiad ?skad ?dokad)
                    (not(exist (?block - klocek) (postawiony ?block ?dokad)))
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
            exist (?from ?to - pomieszczenie)
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
            
        )
        :effect
		(and
			(not(human ?skad))
            (human ?dokad)
		)
    )

)
