program array_initialization

  implicit none
  integer, dimension(5) :: A, B, C
  integer :: i

  A = 13
  B = [ 2, 3, 5, 7, 11 ]
  C = [ (2**i, i=0, 4) ]

  print*, A
  print*, B
  print*, C

end program array_initialization
