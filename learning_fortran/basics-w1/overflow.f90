program overflow
  use, intrinsic :: iso_fortran_env, only :INT8 
  implicit none
  integer(kind=INT8) :: val
  integer :: i

  val = 7
  do i = 1, 16
    print*, val
    val =  val - 1
  end do
end program overflow
