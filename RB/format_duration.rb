# given an integer of seconds, return a more easily understood time duration (eg. format_duration(62) should return '1 minute and 2 seconds')

def format_duration(int)
    second_counter = int
    minute_counter = 0
    hour_counter = 0
    day_counter = 0
    year_counter = 0
    if second_counter == 0
        return "now"
    end
    while second_counter >= 60
        minute_counter = minute_counter + 1
        second_counter = second_counter - 60
    end
    while minute_counter >= 60
        hour_counter = hour_counter + 1
        minute_counter = minute_counter - 60
    end
    while hour_counter >= 24
        day_counter = day_counter + 1
        hour_counter = hour_counter - 24
    end
    while day_counter >= 365
        year_counter = year_counter + 1
        day_counter = day_counter - 365
    end 

    seconds = "#{second_counter} second"
    minutes = "#{minute_counter} minute"
    hours = "#{hour_counter} hour"
    days = "#{day_counter} day"
    years = "#{year_counter} year"

    output_array = []
    if year_counter != 0
        if year_counter > 1
            output_array.push(years+"s")
        else
        output_array.push(years)
        end
    end
    if day_counter != 0
        if day_counter > 1
            output_array.push(days+"s")
        else
        output_array.push(days)
        end
    end
    if hour_counter != 0
        if hour_counter > 1
            output_array.push(hours+"s")
        else
        output_array.push(hours)
        end
    end
    if minute_counter != 0
        if minute_counter > 1
            output_array.push(minutes+"s")
        else
        output_array.push(minutes)
        end
    end
    if second_counter != 0
        if second_counter > 1
            output_array.push(seconds+"s")
        else
        output_array.push(seconds)
        end
    end

    last_item = ""
    if output_array.length > 1
        last_item = output_array.pop
        result = output_array.join(", ") + " and #{last_item}"
    else
        result = output_array.join
    end

    return result
end

puts format_duration(415687651)

# refactoring would likely involve a method to add the 's' for plural instead of typing it out for each