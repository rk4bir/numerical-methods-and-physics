! Using Romberg method calculate the integration value
! of a given function y = f(x) = x. Given integration limit is 0 to 1.

PROGRAM RombergMethod
	INTEGER:: i, n1, n2
	REAL:: lowerLim, upperLim, h1, h2, sum1, sum2, sum, x
	WRITE(*,*)'Enter the lower limit: '
	READ(*,*) lowerLim
	WRITE(*,*)'Enter the upper limit: '
	READ(*,*) upperLim
	WRITE(*,*)'Enter the 1st step-size: '
	READ(*,*) h1
	h2 = h1/2.0
	n1 = (upperLim - lowerLim) / h1
	n2 = (upperLim - lowerLim) / h2
	! USING TRAPIZOIDAL METHOD**
	! calculating I 1
	sum1 = F(lowerLim) + F(upperLim) !y0 + yn
	DO i=i, n1-1, 1
		x = lowerLim + i*h1
		sum1 = sum1 + 2*F(x)
	END DO
	sum1 = (h1*sum1)/2.0
	!calculating I 2
	sum2 = F(lowerLim) + F(upperLim) !y0 + yn
	DO i=1, n2-1, 1
		x = lowerLim + i*h2
		sum2 = sum2 + 2*F(x)
	END DO
	sum2 = (h2*sum2)/2.0
	WRITE(*,*)'Integration value I1 =', sum1
	WRITE(*,*)'Integration value I2 =', sum2
	sum= sum2 + (sum1-sum2)/(1-(h1/h2)**2) !I = I + (I1 - I2)/(1-(h1/h2)^2)
	WRITE(*,*)'Calculated integration value is',sum
END PROGRAM
!defining the required function bellow...
FUNCTION F(p)
	REAL:: p
	F = p
END FUNCTION