program max_array 

  implicit none
  integer, dimension(3, 4) :: A
  integer :: i, j
  character(len=10), parameter :: fmt = '(A,4I13)'

  A = reshape( [(((i - 1)*size(A, 2) + j, j=1, size(A, 2)), i=1, size(A, 1))], shape(A) ) - 8
  do i = 1, size(A, 1)
    print*, A(i, :) 
  end do

  print fmt, 'maximum = ', maxval(A)
  print fmt, 'column maximum = ', maxval(A, dim=1)
  print fmt, 'row maximum = ', maxval(A, dim=2)
  print fmt, 'maximum odd element = ', maxval(A, mask=mod(A, 2) /= 0)
  print fmt, 'column maximum negative element = ', maxval(A, dim=1, mask=A < 0)
  print fmt, 'maxloc = ', maxloc(A)
  print fmt, 'column maxloc = ', maxloc(A, dim=1)

end program max_array 
