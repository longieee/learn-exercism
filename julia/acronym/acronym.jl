function acronym(phrase)
    join(uppercase(strip(char, '_')[1]) for char in split(phrase, r" |-", keepempty=false))
end
