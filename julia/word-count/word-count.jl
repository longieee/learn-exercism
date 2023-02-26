function wordcount(sentence)
    str = lowercase(sentence)
    str = strip(replace(str, r"[^[:alnum:]']+" => " "))
    str = replace(str, r"\s'|'\s|'$" => " ")
    words = split(str)

    Dict(word => count(==(word), words) for word in unique(words))
end