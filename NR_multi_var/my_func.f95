subroutine my_func(x1,f1,x2,f2)
    implicit none
    real,intent(in):: x1,x2
    real,intent(out):: f1,f2
    f1= 4-(8*x1) + (4*x2) - (2*(x1**3))
    f2 = 1-(4*x1) + (3*x2) + (x2**2)
end subroutine my_func
