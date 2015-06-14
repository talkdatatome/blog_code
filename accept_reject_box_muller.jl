# Box-Muller test
Nsim = 500000000

function f(N)
    for i = 1:N
        r = rand(2)
        theta = 2*pi*r[1]
        r2 = -2*log(r[2])
    
        x = sqrt(r2)*cos(theta)
        y = sqrt(r2)*sin(theta)
    end
end

@time f(Nsim)
