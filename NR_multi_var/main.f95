program main
    implicit none
    real,dimension(2,2)::a,a1
    real:: x1,x2,f1,f2,tol
    real,dimension(2)::b
    integer:: i
    print *, "Enter x1"
    read *,x1
    print *,"Enter x2"
    read *,x2
    tol=0.0001
    do i=1,1000
        print *,"Iteration No.",i
        call my_func(x1,f1,x2,f2)
        call Jacobian(x1,x2,a)
        call Inverse(a,a1)
        call Multi(a1,f1,f2,b)
        x1=x1-b(1)
        x2=x2-b(2)
        if((abs(b(1)) .le. tol) .and. (abs(b(2)) .le. tol)) exit
    end do
    print*,"The solution is:",x1,x2

end program main
