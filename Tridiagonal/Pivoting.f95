subroutine Pivoting(n,a,j)
    implicit none
    integer,intent(in)::n
    integer::i,j,k
    real,dimension(n,n+1),intent(inout)::a
    real,dimension(n+1)::temp

    k=j
    do i=j,n,1
        if(abs(a(i,j)) .gt. abs(a(k,j))) then
            k=i
        end if
    end do

    do i=1,n+1,1
        temp(i)=a(j,i)
    end do
    do i=1,n+1,1
        a(j,i)=a(k,i)
    end do

    do i=1,n+1,1
        a(k,i)=temp(i)
    end do
end subroutine Pivoting
