function secret_handshake(code)
    if code ≥ 32
        return []
    end

    handshake = Dict(
        1 => "wink",
        10 => "double blink",
        100 => "close your eyes",
        1000 => "jump"
    )

    base2 = digits(code, base=2) |> join
    idx = findall('1', base2)
    decoded = 10 .^ (idx .- 1)

    if 10000 in decoded
        deleteat!(decoded, findall(x -> x == 10000, decoded))
        decoded = reverse(decoded)
    end

    get.(Ref(handshake), decoded, missing)

end
