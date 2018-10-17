! Using Simpson one-third method find the integral of
! ∫ydx ; y = f(x) = x.

PROGRAM SimpsonMethod
	INTEGER:: i, n
	REAL:: lowerLim, upperLim, h, sum1, sum2, sum, x
	WRITE(*,*)'Enter the lower limit: '
	READ(*,*) lowerLim
	WRITE(*,*)'Enter the upper limit: '
	READ(*,*) upperLim
	WRITE(*,*)'Enter the *step-size [n must be an integer]: '
	READ(*,*) h
	n = (upperLim - lowerLim) / h
	sum1 = F(lowerLim) + F(upperLim) !y0 + yn
	!calculating>> 4(y1+y3+y5...) & 4(y2+y4+y6...)
	sum2 = 0
	DO i=1, n-1, 1
		x = lowerLim + i*h
		IF(MOD(i, 2) == 0) THEN
			sum2 = sum2 + 2*F(x)
		ELSE IF(MOD(i, 2) == 1) THEN
			sum2 = sum2 + 4*F(x)
		END IF
	END DO
	sum = (h*(sum1 + sum2))/3.0
	WRITE(*,*)'Integration value is', sum
END PROGRAM

!The required function is being defined here
FUNCTION F(p)
REAL:: p
F = p
END FUNCTION