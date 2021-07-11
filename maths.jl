using DifferentialEquations
using Plots; gr()

f(u, p, t) = 0.98u
u0 = 1.0
tspan = (0.0, 1.0)
prob = ODEProblem(f, u0, tspan)

sol = solve(prob)

print(sol)
plot(sol)
gui()