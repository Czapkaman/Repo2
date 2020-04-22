using repo2, Test

f(x) = x^2
ff(x) = 2*x
@test fun(f, ff, -1, 1) == 0.0
f(x) = x^3
ff(x) = 3*(x^2)
@test isnan(fun(f, ff, -1, 1))