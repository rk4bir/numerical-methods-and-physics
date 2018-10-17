! Write a program that calculates sum of the series 2 2 + 4 2 + 6 2 + ... + (2n) 2

PROGRAM sum_series
	INTEGER:: i, n, sum
	WRITE(*,*)'ENTER THE VALUE OF n'
	READ(*,*) n
	sum = 0
	DO i = 1, n, 1
		sum = sum + ( (2*i)**2 )
	END DO
	WRITE(*,*)'Sum of the series is',sum
END PROGRAM