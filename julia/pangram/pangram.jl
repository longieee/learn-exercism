"""
    ispangram(input)

Return `true` if `input` contains every alphabetic character (case insensitive).

"""
function ispangram(input)
    length(setdiff(Set("thequickbrownfoxjumpsoverthelazydog"), Set(lowercase(input)))) == 0
end

