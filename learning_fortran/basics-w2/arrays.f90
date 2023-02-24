program arrays

  implicit none
  integer :: i, j
  real, dimension(3) :: vector, vector1, vector2
  real, dimension(2, 3) :: matrix1
  real, dimension(3, 2) :: matrix2
  real, dimension(2, 2) :: matrix3

  vector = 1.0
  print*, vector
  vector(2) = 5.7
  vector(1) = 2*vector(2)
  print*, vector
  print*, 3.0 + vector
  print*, 2.5*vector
  print*, vector**2
  print*, dot_product(vector, vector) 

  vector1 = [ 3.0, 5.0, 7.0 ]
  vector2 = [ (0.5*i - 1.0, i=1, 3) ]
  print*, vector1
  print*, vector2
  print*, vector1 + vector2
  print*, vector1*vector2
  print*, dot_product(vector1, vector2)
  print*, size(vector1)
  print*, sum(vector1)
  
  print*, "***BLOCO de matrizes!***"

  matrix1 = reshape([ 2.0, 3.0, 5.0, 7.0, 11.0, 13.0 ], shape(matrix1)) 
  do i = 1, size(matrix1, 1)
    print*, matrix1(i, :)  
  end do
  matrix2 = reshape([ ((i-2*j, i=1, 2), j=1, 3) ], shape(matrix2)) 
  do i = 1, size(matrix2, 1)
    print*, matrix2(i, :)  
  end do
  print*, size(matrix2)
  print*, size(matrix2, 1), size(matrix2, 2)
  matrix3 = matmul(matrix1, matrix2)
  do i = 1, size(matrix3, dim=1)
    print*, matrix3(i, :)
  end do

end program arrays
