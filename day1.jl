lines = readlines("inputs/1-1.txt")
depths = map(Base.Fix1(parse, Int64), lines)
println(sum(x[2] > x[1] for x=zip(depths, Iterators.drop(depths, 1))))


println(sum(x[2] > x[1] for x=zip(depths, Iterators.drop(depths, 3))))
