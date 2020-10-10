subroutine Inverse(a,a1)
    implicit none
    real,dimension(2,2),intent(in):: a
    real,dimension(2,2),intent(out):: a1
    real:: det
    det=((a(1,1)*a(2,2)) - (a(2,1)*a(1,2)))
    a1(1,1)= a(2,2)/det
    a1(1,2)= -a(1,2)/det
    a1(2,1)= -a(2,1)/det
    a1(2,2)= a(1,1)/det

end subroutine Inverse
