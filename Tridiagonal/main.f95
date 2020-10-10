program main
    implicit none
    real , dimension(:,:), allocatable :: a
    real, dimension(:), allocatable :: x
    integer :: n
    n=5
    allocate(a(n,n+1))
    allocate(x(n))
   a(1,1)=3
  a(1,2)=-1
  a(1,3)=0
  a(1,4)=0
  a(1,5)=0
  a(1,6)=2
  a(2,1)=-1
  a(2,2)=3
  a(2,3)=-1
  a(2,4)=0
 a(2,5)=0
 a(2,6)=1
 a(3,1)=0
 a(3,2)=-1
 a(3,3)=3
 a(3,4)=-1
 a(3,5)=0
 a(3,6)=1
 a(4,1)=0
 a(4,2)=0
 a(4,3)=-1
 a(4,4)=3
 a(4,5)=-1
 a(4,6)=1
 a(5,1)=0
 a(5,2)=0
 a(5,3)=0
 a(5,4)=-1
 a(5,5)=3
 a(5,6)=2

    write(*,*)
    print*,"The augmented matrix entered is"
    call print(a,n,n+1)
    call tridiagonal(a,n)
    call Backsub(a,n,x)
    write(*,*)
    print*, "The value of x:"
    call print(x,n,1)
end program main
