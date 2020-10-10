program main
    implicit none
real:: x1,x2,f1,f2,tol
integer:: i
print *, "Enter x1"
read *,x1
print*,"Enter x2"
read *,x2
tol=0.00000000000001

do i=1,1000
    print*, "Iteration no.",i
    call My_funcs(x1,x2,f1,f2)
    print*,"X1=" , x1," Function1 value=",f1
    print*,"X2=" ,x2," Function2 value=",f2
    if((abs(x1-f1) .le. tol) .and. (abs(x2-f2) .le. tol) ) exit
    x1=f1
    x2=f2
end do

end program main
