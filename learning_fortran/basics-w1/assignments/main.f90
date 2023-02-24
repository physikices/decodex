! Write a program that for given values of x0, r and number of iterations prints the number of the iteration n and the value of xn
! to standard output. Run the application for a number of times for different values of x0 and r, compare the behavior for r =
! 0.5, 1.5, 2.5, 3.3, 3.52, 3.55. Creat plots using your favorite plotting program. 

program logistic_map
  use, intrinsic :: iso_fortran_env, only : dp => real64
  implicit none
  integer, parameter :: nr_x_values = 100, nr_r_values = 200, nr_iterations = 10000
  real, parameter :: x_min = 0.0_dp, x_max = 1.0_dp, r_min = 0.5_dp, r_max = 4.0_dp
  real(kind=dp), dimension(nr_x_values, nr_r_values) :: X, R, result
  real :: delta_x, delta_r
  integer :: i, j, unit_nr
  character(len=50), parameter :: filename = 'logistic_map.dat'

  ! file
  open ( newunit=unit_nr, file=filename, access='sequential', action='write', status='replace', form='formatted' )

  ! init X
  delta_x = (x_max - x_min)/nr_x_values
  X(:, 1) = [(x_min+i*delta_x, i=1, nr_x_values)]
  do i = 2, nr_r_values
    X(:, i) = X(:, 1)
  end do

  ! init R 
  delta_r = (r_max - r_min)/nr_r_values
  R(1, :) = [(r_min+i*delta_r, i=1, nr_r_values)]
  do i = 2, nr_x_values
    R(i, :) = R(1, :)
  end do

  !result
  result = iterate_map(X, R, nr_iterations)
  do i = 1, nr_x_values
    do j = 1, nr_r_values
      write (unit=unit_nr, fmt='(2F12.9)') R(i, j), result(i, j)
      print*, R(i, j), result(i, j)
    end do
  end do

  contains

  elemental function iterate_map(x0, r, nr_steps) result(xn)
    implicit none
    real(kind=dp), value :: x0, r
    integer, value :: nr_steps
    real(kind=dp) :: xn
    integer :: i

    xn = x0
    do i = 1, nr_steps
      xn = r*xn*(1.0_dp - xn)
    end do

  end function iterate_map

end program logistic_map
