subroutine print(ans,row,col)
    implicit none
    integer,intent(in):: row,col
    real,dimension(row,col):: ans
    integer :: rc, cc
    20 format(f7.3)
    do rc= 1,row
           do cc=1,col
                write(*,20,advance='no') ans(rc,cc)
           end do
           write(*,*)
    end do
end subroutine print
