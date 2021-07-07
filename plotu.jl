using Plots
gr(aspect_ratio=:equal, legend=false, dpi=250)

d, h = 800, 600  # pixel density (= image width) and image height
n, r = 100, 500  # number of iterations and escape radius (r > 2)

x = range(0, 2, length=d+1)
y = range(0, 2 * h / d, length=h+1)

A, B = (x .- 1)' .* ones(h+1), ones(d+1)' .* (y .- h / d)
C = 2.0 * (A + B * im) .- 0.5

Z, dZ = zero(C), zero(C)
S, T, D = zeros(size(C)), zeros(size(C)), zeros(size(C))

for k = 1:n
    M = abs.(Z) .< r
    S[M], T[M] = S[M] + exp.(-abs.(Z[M])), T[M] .+ 1
    Z[M], dZ[M] = Z[M] .^ 2 + C[M], 2 * Z[M] .* dZ[M] .+ 1
end

heatmap(S .^ 0.1, c=:jet)
savefig("Mandelbrot_set_1.png")

heatmap(T .^ 0.1, c=:jet)
savefig("Mandelbrot_set_2.png")

N = abs.(Z) .> r  # normalized iteration count
T[N] = T[N] - log2.(log.(abs.(Z[N])) / log(r))

heatmap(T .^ 0.1, c=:jet)
savefig("Mandelbrot_set_3.png")

N = abs.(Z) .> 2  # exterior distance estimation
D[N] = 0.5 * log.(abs.(Z[N])) .* abs.(Z[N]) ./ abs.(dZ[N])

heatmap(D .^ 0.1, c=:jet)
savefig("Mandelbrot_set_4.png")</lang>

A small change in the code above creates Mercator maps of the Mandelbrot set (the zoom pictures are missing, however).
<lang julia>using Plots
gr(aspect_ratio=:equal, legend=false, dpi=250)

d, h = 400, 2200  # pixel density (= image width) and image height
n, r = 800, 1000  # number of iterations and escape radius (r > 2)

x = range(0, 2, length=d+1)
y = range(0, 2 * h / d, length=h+1)

A, B = (x * pi)' .* ones(h+1), ones(d+1)' .* (y * pi)
C = 2.0 * exp.((A + B * im) * im) .- 0.74366367740001 .+ 0.131863214401 * im

Z, dZ = zero(C), zero(C)
S, T, D = zeros(size(C)), zeros(size(C)), zeros(size(C))

for k = 1:n
    M = abs.(Z) .< r
    S[M], T[M] = S[M] + exp.(-abs.(Z[M])), T[M] .+ 1
    Z[M], dZ[M] = Z[M] .^ 2 + C[M], 2 * Z[M] .* dZ[M] .+ 1
end

heatmap(-S' .^ 0.1, c=:nipy_spectral)
savefig("Mercator_map_1.png")

heatmap(-T' .^ 0.1, c=:nipy_spectral)
savefig("Mercator_map_2.png")

N = abs.(Z) .> r  # normalized iteration count
T[N] = T[N] - log2.(log.(abs.(Z[N])) / log(r))

heatmap(-T' .^ 0.1, c=:nipy_spectral)
savefig("Mercator_map_3.png")

N = abs.(Z) .> 2  # exterior distance estimation
D[N] = 0.5 * log.(abs.(Z[N])) .* abs.(Z[N]) ./ abs.(dZ[N])

heatmap(D' .^ 0.1, c=:nipy_spectral)
savefig("Mercator_map_4.png")

