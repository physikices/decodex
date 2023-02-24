program while_factorial
  implicit none

  integer :: p = 5

  print*, fac(p)
  print*, p
  contains 
  integer function fac(n)
    integer :: n 
    integer :: i

    fac = 1
    do while (n > 1)
      fac = fac*n
      n = n - 1
    end do
  end function fac
end program while_factorial
