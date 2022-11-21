"Your optional docstring here"
function distance(a, b)
    length(a) == length(b) ?
    count(x -> x[1] != x[2], zip(a, b)) : throw(ArgumentError("Strands must be of equal length!"))
end
