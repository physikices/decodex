program do_fatorial 
  implicit none
  integer, parameter :: max_n = 10
  integer :: i

  do i = 1, max_n
    print*, i, factorial(i)
  end do

  contains 

  function factorial(n) result(fac)
    implicit none
    integer, intent(in) :: n
    integer :: fac
    integer :: i

    fac = 1
    do i = 2, n
      fac = fac*i
    end do
  end function factorial

end program do_fatorial 
