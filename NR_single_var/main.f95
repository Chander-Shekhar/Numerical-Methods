program main
implicit none
real:: x,f,f1,tol
integer:: i
print *, "Enter x"
read *,x
tol=0.0000001
do i=1,1000
 print*, "Iteration no.",i
 call my_func(x,f,f1)
 print*, "X=",x ," Function value=",f
 if(abs(f/f1) .le. tol) exit
 x= x -(f/f1)
end do
end program main
