subroutine Pivoting(a,n)
    implicit none
    integer,intent(in)::n
    real,dimension(n,n+1),intent(inout)::a
    integer::i,j,k
    real ::t

    do i=1,n
        do j = i+1, n
            if((abs(a(i,i))) .lt. (abs(a(j,i)))) then
                do k = 1, n+1
                    t = a(i,k)
                    a(i,k) = a(j,k)
                    a(j,k) = t
                end do
            end if
        end do
    end do
end subroutine Pivoting
