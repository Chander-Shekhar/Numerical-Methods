program main
    implicit none
    real,dimension(2) :: a,b
    integer:: n,i
    real,dimension(:),allocatable::y
    real,dimension(:,:),allocatable::x
    real,dimension(:,:),allocatable::xt
    real,dimension(2,2)::ans
    real::det
    n=7
    allocate(x(n,2))
    allocate(y(n))
    allocate(xt(2,n))
    open(1,file="new.txt")
    do i=1,n
        x(i,1)=1
        read(1,*) x(i,2),y(i)
    end do
    do i=1,n
        xt(1,i)=1
        xt(2,i)=x(i,2)
    end do
    call multi(xt,2,n,x,n,2,ans)
    call multi(xt,2,n,y,n,1,b)
    det=ans(1,1)*ans(2,2) - ans(2,1)*ans(1,2)
    a(1)=ans(2,2)*b(1) - ans(1,2)*b(2)
    a(2)= ans(1,1)*b(2) - ans(2,1)*b(1)
    a(1)=a(1)/det
    a(2)=a(2)/det
    print*,"a1=",a(2)
    print*,"a0=",a(1)
    call print(xt,2,n)
    close(1)
end program main
