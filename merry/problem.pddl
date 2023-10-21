(define (problem Merry)
	(:domain game)
	(:objects klocek1 klocek2 klocek3 klocek4 klocek5 klocek6 klocek7 klocek8 - klocek
            pole1 pole2 pole3 pole4 pole5 pole6 pole7 pole8 pole9 - pole
            niebieski rozowy zielony czerwony pomaranczowy - kolor
            a b c d e f g h i - pomieszczenie
            one two three four five six seven eight nine ten eleven twelve thirteen fourteen - pilka)
	(:init
		(ball one a)
		(ball two b)
		(ball three c)
		(ball four c)
		(ball five d)
		(ball six d)
		(ball seven e)
		(ball eight e)
		(ball nine f)
		(ball ten f)
		(ball eleven h)
		(ball twelve h)
		(ball thirteen i)
		(ball fourteen i)

		(barwa one zielony)
		(barwa two rozowy)
		(barwa three zolty)
		(barwa four niebieski)
		(barwa five zielony)
		(barwa six czerwony)
		(barwa seven niebieski)
		(barwa eight zielony)
		(barwa nine niebieski)
		(barwa ten niebieski)
		(barwa eleven zielony)
		(barwa twelve czerwony)
		(barwa thirteen zolty)
		(barwa fourteen niebieski)
        
        (postawiony klocek1 pole3)
		(postawiony klocek2 pole8)
		(postawiony klocek3 pole6)
		(postawiony klocek4 pole2)
		(postawiony klocek5 pole1)
		(postawiony klocek6 pole9)
		(postawiony klocek7 pole7)
		(postawiony klocek8 pole4)

        (somsiad pole1 pole2)
        (somsiad pole1 pole4)
        (somsiad pole2 pole1)
        (somsiad pole2 pole3)
        (somsiad pole2 pole5)
        (somsiad pole3 pole2)
        (somsiad pole3 pole6)
        (somsiad pole4 pole1)
        (somsiad pole4 pole5)
        (somsiad pole4 pole7)
        (somsiad pole5 pole2)
        (somsiad pole5 pole4)
        (somsiad pole5 pole6)
        (somsiad pole5 pole8)
        (somsiad pole6 pole3)
        (somsiad pole6 pole5)
        (somsiad pole6 pole9)
        (somsiad pole7 pole4)
        (somsiad pole7 pole8)
        (somsiad pole8 pole5)
        (somsiad pole8 pole7)
        (somsiad pole8 pole9)
        (somsiad pole9 pole6)
        (somsiad pole9 pole8)

        (human f)
        (rozwiaz a)

        (zielone c e)
        (zielone e c)
        (zielone d f)
        (zielone f d)
        (czerwone a c)
        (czerwone c a)
        (czerwone h e)
        (czerwone e h)
        (rozowe f g)
        (pomaranczowe a b)
        (pomaranczowe b d)
        (niebieskie e f)
        (niebieskie f e)
        (niebieskie f i)
        (niebieskie i f)
        (niebieskie h i)
        (niebieskie i h)
	)
	(:goal
		(and
		    (postawiony klocek1 pole1)
		    (postawiony klocek2 pole2)
		    (postawiony klocek3 pole3)
		    (postawiony klocek4 pole4)
		    (postawiony klocek5 pole5)
		    (postawiony klocek6 pole6)
		    (postawiony klocek7 pole7)
		    (postawiony klocek8 pole8)
		)
	)
)
