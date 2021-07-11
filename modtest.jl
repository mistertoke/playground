function starPrint(n::Int64)
    for r = 1:n
        for c = 1:r
            print("* ")
        end
        println()
    end
end

starPrint(5)