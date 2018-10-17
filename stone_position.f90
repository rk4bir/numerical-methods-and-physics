! A stone is dropped from a height of 800m. Write a program to calculate it's
! position at 1 sec intervals for 10 seconds. [ Use: g=9.8m/s 2 ]

PROGRAM position_of_stone
	REAL:: g, y, x !x is to be find i.e. position of stone from earth's surface
	INTEGER:: i, t, h !h is given i.e h=800m
	h = 800
	t = 10
	g = 9.8
	DO i = 1, t, 1
		y = 0.5*g*(i**2)
		x = 800 - y
		WRITE(*,'( (A),1X,I1,1X,(A),1X,F5.1 )') 'At time=',i,'position from Earth is',x
	END DO
END PROGRAM