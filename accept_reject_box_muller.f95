program box_muller
implicit none

real, parameter :: pi = 3.1415927
real :: r(2), theta, r2, x, y, start, finish
integer :: Nsim, i

call cpu_time(start)
Nsim = 500000000

do i=1, Nsim, 1
    
call random_number(r)

theta   = 2*pi*r(1)
r2      = -2*log(r(2))

x       = sqrt(r2)*cos(theta)
y       = sqrt(r2)*sin(theta)

end do
call cpu_time(finish)

write (*,*) finish-start
end program box_muller
