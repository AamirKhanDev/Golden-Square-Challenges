def make_snippet(input)
    words = input.split(" ")
    if words.length <= 5
        return input
    else
        return words[0,5].join(" ") + "..."
    end
end

