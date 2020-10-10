subroutine multi(x,n1,m1,y,n2,m2,ans)
    implicit none
    integer,intent(in)::n1,m1,n2,m2
    real,dimension(n1,m1),intent(in)::x
    real,dimension(n2,m2),intent(in)::y
    real,dimension(n1,m2),intent(out)::ans
    integer::i,j,k
    do i=1,n1
        do j=1,m2
            do k=1,m1
                ans(i,j)=ans(i,j)+x(i,k)*y(k,j)
            end do
       end do
   end do
end subroutine multi
