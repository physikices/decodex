program palindromes
  use, intrinsic :: iso_fortran_env, only : input_unit, iostat_end

  implicit none
  character(len=1024) buffer, msg
  integer istat
  logical :: result

  do
    read(unit=input_unit, fmt=*, iostat=istat, iomsg=msg) buffer
    if (istat == iostat_end) exit ! fixme aparentemente esta linha nao esta funcionando 
    result = is_palindrome(buffer)
    if (result .eqv. .true.) then
      print*, "GREAT! It is an palindrome"
    else
      print*, "Ok! But this is not an palindrome"
    end if
    exit
  end do

  contains

  function is_palindrome(phrase) result(palindrome)
    implicit none
    character(len=*), intent(in) :: phrase
    logical :: palindrome
    integer :: i, n

    n = len_trim(phrase)
    palindrome = .true.
    do i = 1, n/2
      if (phrase(i:i) /= phrase(n-i+1:n-i+1)) then
        palindrome = .false.
        exit
      end if
    end do
  end function is_palindrome

end program palindromes
