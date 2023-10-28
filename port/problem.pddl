(define (problem paczki)
    (:domain port)
    (:objects
        samochod - auto
        pole1 pole2 pole3 pole4 - miejsce
        one1 two1 three1 three2 four1 - zuraw
        jeden1 jeden2 dwa1 trzy1 trzy2 cztery1 - sterta
        a b c d e f paletaA1 paletaA2 paletaB1 paletaC1 paletaC2 paletaD1 - paczka
    )
    (:init
        (somsiad pole1 pole2)
        (somsiad pole2 pole1)
        (somsiad pole2 pole3)
        (somsiad pole3 pole2)
        (somsiad pole3 pole4)
        (somsiad pole4 pole3)
        (somsiad pole4 pole1)
        (somsiad pole1 pole4)
        
        (gdzie-sterta jeden1 pole1)
        (gdzie-sterta jeden2 pole1)
        (gdzie-sterta dwa1 pole2)
        (gdzie-sterta trzy1 pole3)
        (gdzie-sterta trzy2 pole3)
        (gdzie-sterta cztery1 pole4)

        (gdzie-zuraw one1 pole1)
        (gdzie-zuraw two1 pole2)
        (gdzie-zuraw three1 pole3)
        (gdzie-zuraw three2 pole3)
        (gdzie-zuraw four1 pole4)

        (na d paletaA1)
        (na a d)
        (na e paletaA2)
        (na b e)
        (na f paletaD1)
        (na c f)

        (na-gorze paletaB1)
        (na-gorze paletaC1)
        (na-gorze paletaC2)
        (na-gorze a)
        (na-gorze b)
        (na-gorze c)

        (robot auto pole2)
        (puste auto)

        (wolny one1)
        (wolny two1)
        (wolny three1)
        (wolny three2)
        (wolny four1)
    )
    (:goal
        (and
            (na a paletaD1)
            (na b a)
            (na c b)
            (na d c)
            (na e d)
            (na f e)
        )
    )
)
