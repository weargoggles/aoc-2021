lines = readlines("inputs/1-1.txt")
pars(i) = parse(Int64, i)
depths = map(pars, lines)
println(sum(x[2] > x[1] for x=zip(depths, Iterators.drop(depths, 1))))


println(sum(x[2] > x[1] for x=zip(depths, Iterators.drop(depths, 3))))