subroutine my_func(x,f,f1)
    implicit none
    real,intent(in):: x
    real,intent(out):: f,f1
    f= x- ((1.0/3.0)*exp(x))
    f1 = 1 - ((1.0/3.0)*exp(x))
end subroutine my_func
