! Two vectors are A = a1 i + a2 j + a3 k & B = b1 i + b2 j + b3 k. Write a program
! that reads a1, a2, a3 & b1, b2, b3 and calculates the sum of A & B vectors.

PROGRAM vector_add
	INTEGER:: a(3), b(3), c(3), n ! c(3) is the sum of A & B vector
	n = 3
	WRITE(*,*)'Enter the elements of A vector'
	READ(*,*) (a(i), i=1,n,1)
	WRITE(*,*)'Enter the elements of B vector'
	READ(*,*) (b(i), i=1,n,1)
	WRITE(*,*)'Sum of the two vectors is'
	DO i = 1, n, 1
		c(i) = a(i) + b(i)
	END DO
	WRITE(*,*)'Sum of the two vectors is',c(1),'i',c(2),'j',c(3),'k'
END PROGRAM