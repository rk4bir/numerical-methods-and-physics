! Two vectors of dimension 3 are given by,
! A = a1 + a2 + a3
! B = b1 + b2 + b3
! Write a program that reads the two vectors and find the dot product of the two vectors.

PROGRAM vector_add
	INTEGER:: a(3), b(3), ab, n ! ab is the result
	n = 3
	WRITE(*,*)'Enter the elements of A vector'
	READ(*,*) (a(i), i=1,n,1)
	WRITE(*,*)'Enter the elements of B vector'
	READ(*,*) (b(i), i=1,n,1)
	ab = 0
	DO i = 1, n, 1
		ab = ab + ( a(i)*b(i) )
	END DO
	WRITE(*,*)' A.B = ',ab
END PROGRAM