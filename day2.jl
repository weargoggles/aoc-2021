using DelimitedFiles

ins_2_vec(ins) = [ins[1] == "forward" ? ins[2] : 0, ins[1] == "forward" ? 0 : (ins[1] == "up" ? -1 : 1) * ins[2]]
position = mapfoldl(ins_2_vec, +, eachrow(readdlm("inputs/2-1.txt", ' ', Any, '\n')))
println(position[1] * position[2])

function aimfolder(a::Vector{Int64}, i::Vector{Int64})
    if i[1] != 0 # forwards
        a[1] += i[1]
        a[2] += a[3] * i[1]
    else # aim up or down
        a[3] += i[2]
    end
    return a
end

position2 = mapfoldl(ins_2_vec, aimfolder, eachrow(readdlm("inputs/2-1.txt", ' ', Any, '\n')); init=[0, 0, 0])
println(position2)
println(position2[1]*position2[2])