subroutine func(a,n,index,x,x_gs)
    implicit none
    integer,intent(in):: index,n
    real,dimension(n),intent(inout):: x,x_gs
    real,dimension(n,n+1),intent(in)::a
    integer :: j
    do j=1,n
         if (j .ne. index) then
             x_gs(index) = x_gs(index) - a(index,j)*x(j)
         end if
    end do
end subroutine func
