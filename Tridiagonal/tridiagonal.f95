subroutine tridiagonal(a,n)
    implicit none
    integer,intent(in)::n
    real,dimension(n,n+1), intent(inout)::a
    integer :: i,rowmax
    real:: tmp

    do i=1,n-1
        call Pivoting(n,a,i)
        tmp=a(i,i)
        a(i,i)=1
        a(i,i+1)=a(i,i+1)/tmp
        a(i,n+1)=a(i,n+1)/tmp
        a(i+1,n+1)=a(i+1,n+1)-(a(i+1,i)*a(i,n+1))
        a(i+1,i+1)=a(i+1,i+1)-(a(i+1,i)*a(i,i+1))

    end do
    a(n,n+1)=a(n,n+1)/a(n,n)
    a(n,n)=1
end subroutine tridiagonal
