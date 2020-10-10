subroutine func(a,n,index,x,tmp)
    implicit none
    integer,intent(in):: index,n
    real,dimension(n),intent(inout):: x,tmp
    real,dimension(n,n+1),intent(in)::a

    integer :: j
    do j=1,n
         if (j .ne. index) then
             x(index) = x(index) - a(index,j)*tmp(j)
         end if
    end do
end subroutine func
