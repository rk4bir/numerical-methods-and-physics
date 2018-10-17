! A ball is thrown up into the air vertically at an initial speed of 100m/s. Write a
! program that will calculate its position for t = 1, 2, ... 5 sec. [Clue: h = ut-0.5gt 2 ]

PROGRAM position_find
	REAL:: u, t, g, h
	INTEGER:: i, n
	n = 5 !For looping
	u = 100 !m/s
	g = 9.81 !m/s 2
	DO i = 1, n, 1
		h = (u*i) - ( 0.5*g*(i**2) )
		WRITE(*,*)'At t=',i,'height is',h,’meter’
	END DO
END PROGRAM