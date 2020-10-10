program main
    implicit none
    real , dimension(:,:), allocatable :: a
    integer :: n,i,j,rc,cc
    n=5
    allocate(a(n,2*n+1))

  a(1,1)=0
  a(1,2)=-1
  a(1,3)=2
  a(1,4)=-3
  a(1,5)=4
  a(1,6)=-38.5
  a(2,1)=2
  a(2,2)=3
  a(2,3)=-1
  a(2,4)=5
 a(2,5)=-2
 a(2,6)=32.4
 a(3,1)=-1
 a(3,2)=3
 a(3,3)=2
 a(3,4)=-5
 a(3,5)=1
 a(3,6)=-17.9
 a(4,1)=1
 a(4,2)=2
 a(4,3)=1
 a(4,4)=2
 a(4,5)=3
 a(4,6)=-13.9
 a(5,1)=-4
 a(5,2)=-6
 a(5,3)=-2
 a(5,4)=8
 a(5,5)=-1
 a(5,6)=4.9
    do i=1,n
        do j=n+2,2*n+1
            a(i,j)=0
    end do
    end do
    do i=1,n
        a(i,n+1+i)=1
    end do
    write(*,*)
    print*,"The augmented matrix entered is"
    call print(a,n,n+1)
    call jordon_solve(a,n)
    write(*,*)
    print*, "The value of x:"
    20 format(f9.3)
    do rc= 1,n
          write(*,20,advance='no') a(rc,n+1)
          write(*,*)
    end do

    print*,"The inverse of the matrix is:"
    do rc= 1,n
           do cc=n+2,2*n+1
                write(*,20,advance='no') a(rc,cc)
           end do
           write(*,*)
    end do
  end program main
