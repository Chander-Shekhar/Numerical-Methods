subroutine Backsub(a,n,x)
    implicit none
    integer, intent(in) :: n
    real, dimension(n,n+1), intent(inout) :: a
    real, dimension(n) , intent(out) :: x
    real :: sum
    integer :: rowCount
    sum=0
    x(n)= a(n,n+1)
    do rowCount= n-1,1,-1
            sum=a(rowCount,rowCount+1)*x(rowCount+1)
            x(rowCount)= a(rowCount,n+1) -sum
            sum=0
    end do
end subroutine Backsub
