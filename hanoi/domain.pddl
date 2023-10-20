(define
	(domain sokoban)
	(:requirements :adl)
    (:types disk rod)
	(:predicates
		(on-rod ?x - disk ?y - rod)
		(bigger ?x ?y - disk)
	)
    (:action przesun-na-pusty 
        :parameters (?rod1 ?rod2 - rod ?klocek - disk)
        :precondition
        (and
            (forall (?k - disk) (not(on-rod ?k ?rod2)))
            (on-rod ?klocek ?rod1)
            (forall (?b - disk) (bigger ?b ?klocek))
		)
		:effect
		(and
			(not(on-rod ?klocek ?rod1))
            (on-rod ?klocek ?rod2)
		)
    )
    (:action przesun 
        :parameters (?rod1 ?rod2 - rod ?wiekszy ?mniejszy - disk)
        :precondition
        (and
            (on-rod ?wiekszy ?rod2)
            (on-rod ?mniejszy ?rod1)
            (not(= ?rod1 ?rod2))
            (forall (?k - disk)
                (not
                    (and
                        (on-rod ?k ?rod2)
                        (bigger ?wiekszy ?k)
                        (not (=?wiekszy ?k))
                    )
                )
            )
            (forall (?b - disk)
                (not
                    (and
                        (on-rod ?b ?rod1)
                        (bigger ?mniejszy ?b)
                        (not (=?mniejszy ?b))
                    )
                )
            )
		)
		:effect
		(and
			(not(on-rod ?mniejszy ?rod1))
            (on-rod ?mniejszy ?rod2)
		)
    )
    
)
