! A Fermi equation is given by
! y = 1 / 1 + e^(x−b)/a
! Write a program that will ask for a & b and calculate value of y for x=1,2,...20.

PROGRAM Fermi_equation
	INTEGER:: a, b, x
	REAL:: y, temp1, temp2, temp3 !temp1,2,3 are to reduce calculation complexity
	x = 20
	WRITE(*,*)'Enter a & b'
	READ(*,*) a, b
	DO i = 1, x, 1
		temp1 = REAL(i-b)/a
		temp2 = EXP(temp1)
		temp3 = 1 + temp2
		y = 1.0/temp3
		WRITE(*,*)'y=',y
	END DO
END PROGRAM