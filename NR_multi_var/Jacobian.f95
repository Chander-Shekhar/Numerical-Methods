subroutine Jacobian(x1,x2,a)
    implicit none
    real,intent(in):: x1,x2
    real,dimension(2,2),intent(out):: a

    a(1,1)= -8 -(6*(x1**2))
    a(1,2)= 4
    a(2,1)= -4
    a(2,2)= 3 + (2*x2)
end subroutine Jacobian
