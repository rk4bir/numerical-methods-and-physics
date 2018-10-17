! Write a program that reads a two digit integer from the file namely
! ‘NUMBER.DAT’ , calculate its square and write on computer's screen.

PROGRAM square_from_file
	INTEGER:: x, sqx
	OPEN(UNIT = 1, FILE=' NUMBER.DAT', STATUS = 'OLD')
	READ(1, 101) x
	101 FORMAT(I2)
	sqx = x*x
	WRITE(*,*)'The square of the number in the file is',sqx
END PROGRAM