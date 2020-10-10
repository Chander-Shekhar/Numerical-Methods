subroutine Multi(a1,f1,f2,b)
    implicit none
    real,dimension(2,2),intent(in)::a1
    real,intent(in):: f1,f2
    real,dimension(2),intent(out):: b

    b(1)= a1(1,1)*f1 + a1(1,2)*f2
    b(2)= a1(2,1)*f1 + a1(2,2)*f2
end subroutine Multi
