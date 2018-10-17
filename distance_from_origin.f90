! The distance of point(x,y) from the origin is r = ( x 2 +y 2 ) 1/2. 
! Write a program that asks for x & y; calculates r; and then writes whether the 
! point is inside, on or outside the circle of radius 5 with its center at the origin.

PROGRAM position_of_a_point
	INTEGER:: x, y, radius
	REAL:: r, temp
	radius = 5
	WRITE(*,*)'Input value of x & y'
	READ(*,*) x, y
	temp = (x**2) + (y**2)
	r = SQRT( temp )
	IF( r==radius ) THEN
		WRITE(*,*)'THE POINT IS ON THE CIRCLE'
	ELSE IF( r>radius ) THEN
		WRITE(*,*)'THE POINT IS OUTSIDE OF THE CIRCLE'
	ELSE IF( r<radius ) THEN
		WRITE(*,*)'THE POINT IS INSIDE THE CIRCLE'
	END IF
END PROGRAM