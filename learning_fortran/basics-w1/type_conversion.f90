program type_conversion
  use, intrinsic :: iso_fortran_env, only : I32 => int32, I64 => int64

  implicit none  
  integer(kind=I32) :: i_32
  integer(kind=I64) :: i_64

  i_32 = 2**10
  i_64 = int(i_32, kind=I64)

  print*, i_64

end program type_conversion
