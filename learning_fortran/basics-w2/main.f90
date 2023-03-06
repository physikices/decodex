program reshape_test

  implicit none
  integer, dimension(3, 4) :: data
  integer :: i

  data = reshape( [(i, i=1, 12)], [3, 4] )
  
  print*, data

end program reshape_test
