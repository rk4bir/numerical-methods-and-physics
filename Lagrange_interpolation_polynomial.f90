! PROBLEM: Using Lagrange interpolation polynomial of the first
! and second order evaluate ln2 on bunch of data given as-
!
! x  <-->  y
! 1	 <-->  0
! 4	 <-->  1.386294
! 6  <-->  1.791760
!

PROGRAM LagrangeFormula
	REAL:: x(10), y(20), p, sum, x4result
	INTEGER:: i, j, n
	WRITE(*,*)'Enter the number of known function values: '
	READ(*,*) n
	WRITE(*,*)'Enter value of x & corresponding function value:'
	DO i=1, n, 1
		READ(*, *) x(i), y(i)
	END DO
	WRITE(*,*)'Enter x for which function value is to be calculate'
	READ(*,*) x4result
	
	!Calculating the result using couple of loops
	sum = 0
	DO i=1, n, 1
		p = 1.0
		DO j=1, n, 1
			IF( i /= j) THEN
				p = p*((x4result-x(j))/(x(i)-x(j))) !(x-x j )/(x i -x j )
			END IF
		END DO
		sum = sum + p*y(i)
	END DO
	WRITE(*,101) 'The function value at x =',x4result, ' is ',sum
	101 FORMAT((A), F7.4, (A), F7.4)
END PROGRAM