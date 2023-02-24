program leap_year

  implicit none
  integer :: year
  logical :: result

  print*, "Which year is a leap year:"
  read*, year
  result = is_leap(year)
  if (result .eqv. .true.) then
    print*, "Yep! This year is leap"
  else
    print*, "Is not a leap year"
  end if

contains

  logical function is_leap(testYear) 
    implicit none
    integer :: testYear 

    if (testYear <= 1592) then
      print*, "Gregorian calendar was not yet introduced!"
      print*, "Try again..."
      stop
    end if

    if (mod(testYear, 4) == 0) then
      if (mod(testYear, 100) == 0) then
        if (mod(testYear, 400) == 0) then
          is_leap = .true.
        else
          is_leap = .false.
        end if
      else
        is_leap = .true.
      end if
    else
      is_leap = .false.
    end if
  end function is_leap


end program leap_year
