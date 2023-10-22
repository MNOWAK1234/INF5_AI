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
		(barwa three pomaranczowy)
		(barwa four niebieski)
		(barwa five zielony)
		(barwa six czerwony)
		(barwa seven niebieski)
		(barwa eight zielony)
		(barwa nine niebieski)
		(barwa ten niebieski)
		(barwa eleven zielony)
		(barwa twelve czerwony)
		(barwa thirteen pomaranczowy)
		(barwa fourteen niebieski)
        
        (postawiony klocek1 pole3)
		(postawiony klocek2 pole8)
		(postawiony klocek3 pole6)
		(postawiony klocek4 pole2)
		(postawiony klocek5 pole1)
		(postawiony klocek6 pole9)
		(postawiony klocek7 pole7)
		(postawiony klocek8 pole4)

        (puste pole5)

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

        (przejscie zielony c e)
        (przejscie zielony e c)
        (przejscie zielony d f)
        (przejscie zielony f d)
        (przejscie czerwony a c)
        (przejscie czerwony c a)
        (przejscie czerwony h e)
        (przejscie czerwony e h)
        (przejscie rozowy f g)
        (przejscie pomaranczowy a b)
        (przejscie pomaranczowy b d)
        (przejscie niebieski e f)
        (przejscie niebieski f e)
        (przejscie niebieski f i)
        (przejscie niebieski i f)
        (przejscie niebieski h i)
        (przejscie niebieski i h)
	)
	(:goal
		(and
		    (postawiony klocek1 pole1)
		    ;(postawiony klocek2 pole2)
		    ;(postawiony klocek3 pole3)
		    ;(postawiony klocek4 pole4)
		    ;(postawiony klocek5 pole5)
		    ;(postawiony klocek6 pole6)
		    ;(postawiony klocek7 pole7)
		    ;(postawiony klocek8 pole8)
            (human g)
		)
	)
)
