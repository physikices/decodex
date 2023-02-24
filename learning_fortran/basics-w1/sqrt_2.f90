program sqrt_2
  use, intrinsic :: iso_fortran_env, only : sp => real32, dp => real64

  implicit none

  print*, sqrt(2.0_sp)**2 /= 2.0_sp
  print*, sqrt(2.0_dp)**2 == 2.0_dp

  

end program sqrt_2
