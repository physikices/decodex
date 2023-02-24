program complex_kind
  use, intrinsic :: iso_fortran_env, only : dp => real64

  implicit none

  complex(kind=dp) :: z1, z2, z3
  real(kind=dp) :: re, im

  z1 = (-0.622772_dp, 0.42193_dp)
  ! cmplx gera um numero complexo
  z2 = cmplx(re, im, kind=dp)
  ! conjg calcula o complexo conjugado de um numero complexo
  z3 = conjg(z1)

  print*, z1
  print*, z2
  print*, z3

end program complex_kind
