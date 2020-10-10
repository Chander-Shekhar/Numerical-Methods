subroutine Frontsub(a,n,y,l)
    implicit none
    integer, intent(in) :: n
    real, dimension(n,n+1), intent(inout) :: a,l
    real, dimension(n) , intent(inout) :: y
    real :: sum
    integer :: rowCount, columnCount
    sum=0
    y(1)= l(1,n+1)
    do rowCount= 2,n
        sum=0
        do columnCount=1,rowCount-1
            sum=sum+ a(rowCount, columnCount)* y(columnCount)
        end do
        y(rowCount)= ( a(rowCount,n+1) -sum)
    end do
    do rowCount=1,n
        a(rowCount,n+1)=y(rowCount)
    end do
end subroutine Frontsub
