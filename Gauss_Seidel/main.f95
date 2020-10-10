program main
    implicit none
    real , dimension(:,:), allocatable :: a
    real, dimension(:), allocatable :: x,tmp
    integer :: n,i,j,check=0
    real::tol
    n=5
    allocate(a(n,n+1))
    allocate(x(n))
    allocate(tmp(n))
   a(1,1)=15
  a(1,2)=-1
  a(1,3)=2
  a(1,4)=-3
  a(1,5)=4
  a(1,6)=8
  a(2,1)=2
  a(2,2)=23
  a(2,3)=-1
  a(2,4)=5
 a(2,5)=-2
 a(2,6)=82.4
 a(3,1)=-1
 a(3,2)=3
 a(3,3)=92
 a(3,4)=-5
 a(3,5)=1
 a(3,6)=-764.9
 a(4,1)=1
 a(4,2)=2
 a(4,3)=1
 a(4,4)=27
 a(4,5)=3
 a(4,6)=-8.9
 a(5,1)=-4
 a(5,2)=-6
 a(5,3)=-2
 a(5,4)=8
 a(5,5)=41
 a(5,6)=-201.9
    write(*,*)
    write(*,*)"Enter the initial Guess"
    do i=1,n
        write(*,*)"Enter the x(",i,") element"
        read*,x(i)
    end do
    write(*,*)"Enter the tolerance"
    read*,tol
    print*,"The augmented matrix before is"
    call print(a,n,n+1)
    call Pivoting(a,n)
    do j=1,n
        tmp(j)=x(j)
    end do
    do i=1,100
        check=0
        do j=1,n
            x(j)=a(j,n+1)
            call func(a,n,j,x)
            x(j)=x(j)/a(j,j)
        end do
        do j=1,n
            if(abs(tmp(j)-x(j)) .lt. tol) check=check+1
        end do
        if(check .eq. n) exit
       do j=1,n
        tmp(j)=x(j)
    end do
    end do


    write(*,*)
    print*,"In Iteration No.",i
    print*, "The value of x:"
    call print(x,n,1)
end program main
