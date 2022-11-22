upper = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z']
lower = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z']

function rotate(key::Int, phrase::Union{AbstractChar,AbstractString})
    upper_rot = circshift(upper, -key)
    lower_rot = circshift(lower, -key)
    mapping = Dict(zip([upper; lower], [upper_rot; lower_rot]))
    typeof(phrase) <: AbstractChar ? mapping[phrase] :
    join(
        char in keys(mapping) ? mapping[char] : char for char in phrase
    )
end

macro R13_str(str)
    rotate(13, str)
end

for n in 0:26
    @eval macro $(Symbol(:R, n, :_str))(s)
        rotate($n, s)
    end
end
