! Using modified Euler method calculate the value of afunction,
! dy/dx = -y; y(0) = 1, at x = 0.04

PROGRAM modifiedEuler
	REAL:: x(10), y(10), h, to_b_found
	INTEGER:: n, i
	WRITE(*,*)'Enter initial value of x & corresponding y(x): '
	READ(*,*) x(1), y(1) !in Euler's rules x(1) & y(1) is x(0) & y(0)
	WRITE(*,*)'Enter the value at which result to be calculate: '
	READ(*,*) to_b_found
	WRITE(*,*)'Enter the value of *step-size[n must be an integer]: '
	READ(*,*) h
	n = REAL(to_b_found - x(1))/h !number of steps
	!Calculating the value of x & corresponding function value
	DO i=1, n, 1
		x(i+1) = x(i) + h
		y(i+1) = y(i) + h*f(x(i), y(i))
	END DO
	!Printing out the result
	WRITE(*, 101)'The result of the program is =',y(i)
	101 FORMAT((A), 1X, F10.4)
END PROGRAM

!Function
FUNCTION f(x,y)
REAL:: y, x
f = -y
END FUNCTION