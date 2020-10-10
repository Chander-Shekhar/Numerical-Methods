subroutine del_calc(y,n,dy,d2y,d3y)
    implicit none
    integer,intent(in)::n
    real,dimension(n),intent(in)::y
    real,dimension(n-1),intent(inout)::dy
    real,dimension(n-2),intent(inout)::d2y
    real,dimension(n-3),intent(inout)::d3y
    integer::i
    do i=1,n-1
        dy(i)=y(i+1)-y(i)
    end do
    do i=1,n-2
        d2y(i)=dy(i+1)-dy(i)
    end do
    do i=1,n-2
        d3y(i)=d2y(i+1)-d2y(i)
    end do
end subroutine del_calc
