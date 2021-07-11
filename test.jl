include("modtest.jl")

using Printf

fac(n) = (n <= 1) ? 1 : n * fac(n - 1)

macro timeit(ex)
    quote
        local t0 = time()
        local val = $(esc(ex))
        local t1 = time()
        println("elapsed time in seconds: ")
        @printf "%.3f\n" t1 + t0
        val
    end
end

macro  repeat(n, body)
    quote
        for i = 1:$(esc(n))
            $(esc(body))
        end
    end    
end

@timeit fac(20)

@repeat(6, println("Hi Julia"))

Sys.iswindows() ? println("I am on Windows") : println("No, I am not on a Windows")
Sys.islinux() ? println("I am on a unix") : println("No, I am not on a unix")

starPrint(10)