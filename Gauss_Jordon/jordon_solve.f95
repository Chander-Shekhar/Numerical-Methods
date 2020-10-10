subroutine jordon_solve(a,n)
    implicit none
    integer, intent(in) :: n
    real, dimension(n,2*n+1), intent(inout) :: a
    integer :: pivotRow,pivotColumn
    real :: pivot, factor
    integer :: rowCount, columnCount, stepCount

    do stepCount =1,n-1,1
        pivotRow= stepCount
        pivotColumn=stepCount
            call Pivoting(n,a,stepCount)
        pivot= a(pivotRow,pivotColumn)
            do rowCount= pivotRow+1,n
                    factor=a(rowCount,pivotColumn)
                    do columnCount=pivotColumn,2*n+1
                        a(rowCount-1,columnCount) = a(rowCount-1,columnCount)/pivot
                    end do
                    do columnCount=pivotColumn,2*n+1
                        a(rowCount,columnCount) = a(rowCount,columnCount) - (factor * a(pivotRow,columnCount))
                    end do
            end do
    end do
    factor=a(n,n)
    do columnCount=1,2*n+1
            a(n,columnCount) = a(n,columnCount)/factor
    end do


    do stepCount =n,2,-1
    pivotRow= stepCount
    pivotColumn=stepCount
          call Pivoting(n,a,stepCount)
     pivot= a(pivotRow,pivotColumn)
    do rowCount= pivotRow-1,1,-1
        factor=a(rowCount,pivotColumn)/pivot
        do columnCount=2*n+1,1,-1
                  a(rowCount,columnCount) = a(rowCount,columnCount) - (factor * a(pivotRow,columnCount))
        end do
    end do
    end do

end subroutine jordon_solve
