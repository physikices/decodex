program matrix

  implicit none
  integer, parameter :: rows = 3, cols = 5
  real, dimension(rows, cols) :: A
  integer :: i, j
  real :: total

  A = reshape([ (((i - 1)*size(A, dim=2) + j, j=1, size(A, dim=2)), i=1, size(A, dim=1)) ], shape(A))

  do i = 1, size(A, dim=1)
    print*, A(i, :)
  end do

  total = 0
  do j = 1, size(A, dim=2)
    do i = 1, size(A, dim=1), 1
      total = total + A(i, j)**2
    end do
  end do
  print '(/, A, F10.2)', 'total = ', total

end program matrix
