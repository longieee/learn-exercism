"""
    is_leap_year(year)

Return `true` if `year` is a leap year in the gregorian calendar.

"""
function is_leap_year(year)
    # on every year that is evenly divisible by 4
    year % 4 == 0 ?
    (
        # except every year that is evenly divisible by 100
        year % 100 == 0 ?
        # unless the year is also evenly divisible by 400
        year % 400 == 0 ? true : false
        : true
    ) : false
end

