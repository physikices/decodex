program subarrays
  implicit none
  integer :: i
  integer, dimension(10) :: A = [ (i, i = 1, 10) ]
  character(len=10), parameter :: fmt = '(10i3)'

  ! escreve todo o vetor A
  print fmt, A
  ! escreve do 4 indice ao 7 (4->7)
  print fmt, A(4:7)
  ! escreve do 1->7
  print fmt, A(:7)
  ! escreve do 4-> em diante
  print fmt, A(4:)
  ! escreve do 4->7 de 2 em 2
  print fmt, A(4:7:2)
  ! escreve do 4-> em diante de 2 em 2
  print fmt, A(4::2)
  ! escreve do 1->7 de 2 em 2
  print fmt, A(:7:2)
  ! escreve do 7->4 de 1 em 1
  print fmt, A(7:4:-1)

end program subarrays
