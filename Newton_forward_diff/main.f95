program main
    implicit none
    real,dimension(:),allocatable::x,y,dy,d2y,d3y
    integer::n,i
    real::a,ans
    n=4
   allocate(x(n))
   allocate(y(n))
   allocate(dy(n-1))
   allocate(d2y(n-2))
   allocate(d3y(n-3))
   print*,"Enter the value of x"
   read*,a
   a=a-4
    do i=1,4
        x(i)=i
    end do
    y(1)=7
    y(2)=17
    y(3)=53
    y(4)=157
    call del_calc(y,n,dy,d2y,d3y)
    call print(dy,n-1,1)
    ans=y(n)+ a*dy(n-1) + (a*(a+1)*d2y(n-2))/2 + (a*(a+1)*(a+2)*d3y(n-3))/6
    print*,"y(x) at x=",a+1,"is ",ans
end program main
