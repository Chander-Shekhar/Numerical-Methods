subroutine Pivoting1(a, n, pivotrow, pivotcolumn, rowmax)
    implicit none
    integer, intent(in) :: n, pivotrow, pivotcolumn
    integer, intent(out) :: rowmax
    integer :: i
    real :: j
    real, dimension(n, n+1), intent(inout) :: a

    rowmax = pivotrow+1
    do i = rowmax+1, n
        if (abs(a(i, pivotcolumn)) .gt. abs(a(rowmax, pivotcolumn))) then
            rowmax = i
        end if
    end do

    do i = 1, 2*n+1
        j = a(pivotrow, i)
        a(pivotrow, i) = a(rowmax, i)
        a(rowmax, i) = j
    end do
end subroutine Pivoting1
