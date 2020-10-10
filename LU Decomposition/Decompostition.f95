subroutine Decomposition(a,n,l)
    implicit none
    integer, intent(in) :: n
    real, dimension(n,n+1), intent(inout) :: a,l
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
              l(rc,pc)=factor
              do cc=pc,n+1
                    a(rc,cc) = a(rc,cc) - (factor * a(pr,cc))
              end do
         end do
    end do
    do cc=1,n
        do rc=1,n
        if(cc .eq. rc) l(cc,rc)=1
        if(cc .lt. rc) l(cc,rc)=0
        end do
    end do
    do cc=1,n
        l(cc,n+1)=a(cc,n+1)
    end do

end subroutine Decomposition
