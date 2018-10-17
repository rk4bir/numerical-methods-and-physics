! Write a program that calculates sum (to 3-decimal places) of the series is 1/1 + 1/3 +
! 1/5 + ... + 1/n.

PROGRAM sum_of_series
	INTEGER:: n, i
	REAL:: sum
	WRITE(*,*)'ENTER THE VALUE OF n'
	READ(*,*) n
	sum = 0
	DO i = 1, n, 2
		sum = sum + (1.0/i)
	END DO
	WRITE(*,101)'Sum of the series is',sum101 FORMAT((A), 1X, F5.3)
END PROGRAM