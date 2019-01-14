def time_string(timer)
    return Time.at(timer).utc.strftime ("%H:%M:%S")
end