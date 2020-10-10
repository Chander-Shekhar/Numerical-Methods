subroutine print(a,row,col)
    implicit none
    integer,intent(in):: row,col
    real,dimension(row,col):: a
    integer :: rc, cc
    20 format(f9.3)
    do rc= 1,row
           do cc=1,col
                write(*,20,advance='no') a(rc,cc)
           end do
           write(*,*)
    end do
end subroutine print
