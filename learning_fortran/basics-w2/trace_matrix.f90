program trace_matrix

  implicit none
  integer, parameter :: rows = 6, cols = 6
  real, dimension(rows, cols) :: matriz
  integer :: i, j

  ! print*, 'entre com os valores i(linha) e j(coluna):'
  ! read*, rows, cols

  matriz = reshape([ ((j, j=1, size(matriz, 2)), i=1, size(matriz, 1 ))], shape(matriz))
  do i = 1, size(matriz, 1)
    print*, matriz(i, :)
  end do
  print '(/, A, F5.2)', 'traço = ', trace(matriz)

  contains

  real function trace(matriz)
    use, intrinsic :: iso_fortran_env, only : error_unit
    implicit none
    real, dimension(:, :), intent(in) :: matriz
    integer :: i

    if (size(matriz, dim=1) /= size(matriz,   2)) then
      write (unit=error_unit, fmt='(A)') 'error: can not compute trace of a non-square matrix'
      stop 1
    end if
    trace = 0.0
    do i = 1, size(matriz,  1)
      trace = trace + matriz(i, i)
    end do

  end function trace


end program trace_matrix
