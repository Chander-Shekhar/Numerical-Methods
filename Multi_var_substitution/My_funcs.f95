subroutine My_funcs(x1,x2,f1,f2)
 implicit none
 real :: x1,x2,f1,f2
 f1= x1+ (4 -(8*x1) + (4*x2) - (2*x1*x1*x1))/20
 f2= x2- (1-(4*x1) + (3*x2) + (x2*x2))/24

end subroutine My_funcs
