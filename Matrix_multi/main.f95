program main
    implicit none
    real,dimension(:,:),allocatable ::a,x,ans
    integer :: n1,m1,n2,m2,i,j,k
    real:: sum=0
    write(*,*)"enter dimensions of matrices."
    read *,n1,m1,n2,m2
    if(m1 .ne. n2) then
        print*,"Please enter valid matrices to multiply"
        return
    end if
    allocate(a(n1,m1))
    allocate(x(n2,m2))
    allocate(ans(n1,m2))

    write(*,*)"enter values of matrix 1."
    do i=1,n1
        do j=1,m1
            read *,a(i,j)
        end do
    end do

    write(*,*)"enter values of matrix 2."
    do i=1,n2,1
        do j=1,m2,1
            read *,a(i,j)
        end do
    end do

    do j=1,n1,1
        do k=1,m2,1

           do i=1,m1,1
                sum=sum+a(j,i)*x(i,k)
           end do
        ans(j,k)=sum
        sum=0
        end do
    end do

    call print(ans,n1,m2)



end program main

