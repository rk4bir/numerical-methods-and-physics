! Using Trapizoidal method calculate the integral of
! ∫ydx; y = f(x) = x.

PROGRAM TrapizoidalMethod
	INTEGER:: i, n
	REAL:: lowerLim, upperLim, h, sum1, sum2, sum, x
	WRITE(*,*)'Enter the lower limit: '
	READ(*,*) lowerLim
	WRITE(*,*)'Enter the upper limit: '
	READ(*,*) upperLim
	WRITE(*,*)'Enter the *step-size[n must be an integer]: '
	READ(*,*) h
	n = (upperLim - lowerLim) / h
	sum1 = F(lowerLim) + F(upperLim) !y0 + yn
	!calculating 2(y1+y2+y3+...+y(n-1)
	sum2 = 0
	DO i=1, n-1, 1
		x = lowerLim + i*h
		sum2 = sum2 + 2*F(x)
	END DO
	sum = (h*(sum1 + sum2))/2.0
	WRITE(*,*)'Integration value is', sum
END PROGRAM

!defining the required function
FUNCTION F(p)
	REAL:: p
	F = p
END FUNCTION