subroutine gauss(a,n,x)
    implicit none
    integer, intent(in) :: n
    real, dimension(n,n+1), intent(inout) :: a
    real, dimension(n) , intent(out) :: x
    integer :: pr,pc
    real :: pivot, factor
    integer :: rc, cc, sc

    do sc =1,n-1,1
        pr= sc
        pc=sc
        call Pivoting(n,a,sc)
        pivot= a(pr,pc)
            do rc= pr+1,n
                factor=a(rc,pc)/pivot
                    do cc=pc,n+1
                        a(rc,cc) = a(rc,cc) - (factor * a(pr,cc))
                    end do
            end do
    end do

    call Backsub(a,n,x)

end subroutine gauss
