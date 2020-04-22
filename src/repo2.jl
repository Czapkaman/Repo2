module repo2

function fun(f, ff, x1, x2)
       Y_a = f(x1)
       Y_b = f(x2)
       P_a = ff(x1)
       P_b = ff(x2)
       e = x2-x1
       z = 3*(Y_a - Y_b)/e + P_a + P_b
       w = (z^2 - P_a * P_b)^(1/2)
       d = (e*(P_b + w - z))/(P_b - P_a + 2*w)
       x_m = x2 - d
       if isnan(x_m)
           println("There is no minimum between x1 and x2 for function f(x) with derivative ff(x)")
       end
       return x_m
       end

export fun

end # module