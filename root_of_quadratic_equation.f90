! Write a program to calculate the roots of a quadratic equation.
! [ Hints: ax 2 + bx + c = 0 ]

PROGRAM roots
	REAL:: a, b, c, x1, x2
	COMPLEX:: c1, c2 !complex roots of the equation
	REAL:: D, sqrtD, temp1, temp2, absD, real_part, i1, i2
	WRITE(*,*)'Enter a, b & c'
	READ(*,*) a, b, cD = (b**2) - (4*a*c)
	IF( D==0 ) THEN
		sqrtD = SQRT(D) !square root of D
		temp1 = -b+sqrtD !for calculation of first root
		temp2 = -b-sqrtD !for calculation of second root
		x1 = temp1/(2*a)
		x2 = temp2/(2*a)
		WRITE(*,*)'Roots of the equation are',x1,'and',x2
	ELSE IF( D>0 ) THEN
		sqrtD = SQRT(D) !square root of D
		temp1 = -b+sqrtD !for calculation of first root
		temp2 = -b-sqrtD !for calculation of second root
		x1 = temp1/(2*a)
		x2 = temp2/(2*a)
		WRITE(*,*)'Roots of the equation are',x1,'and',x2
	ELSE IF( D<0 ) THEN
		absD = ABS(D) !Absolute value of D
		sqrtD = SQRT(absD) !square root of D
		real_part = (-b)/(2*a) !real part of both roots
		i1 = sqrtD/(2*a) !imaginary part of c1
		i2 = (-sqrtD)/(2*a) !imaginary part of c2
		c1 = CMPLX(real_part, i1)
		c2 = CMPLX(real_part, i2)
		WRITE(*,*)'Roots of the equation are',c1,'and',c2
	END IF
END PROGRAM