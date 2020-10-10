program main
implicit none
integer:: i
real:: x,f,tol
print*,"Enter the initial guess "
read *,x


tol = 0.0001
do i=1,1000
    print*, "Iteration no.",i
    call single_sub(x,f)
    print*,"X=" , x," Function value=",f
    if(abs(x-f) .le. tol) exit
    x=f
end do

print *,"The Solution is ",x

end program main
