function raindrops(number)
    sound = ""
    if number % 3 == 0
        sound *= "Pling"
    end
    if number % 5 == 0
        sound *= "Plang"
    end
    if number % 7 == 0
        sound *= "Plong"
    end

    length(sound) > 0 ? sound : string(number)
end
