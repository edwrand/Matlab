api = [];
fpi = 0;
for n = 0:nthroot
     fpi = fpi + (((-1/3)^n)/((2*n)+1));
end
api(N) = fpi*((12)^(0.5))
pi_approximation_3 = api(N)+0