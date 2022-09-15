#{{PROBLEM}} Method Design Recipe
#1. Describe the Problem
#As a user
#So that I can manage my time
#I want to see an estimate of reading time 
#for a text, assuming that I can read 200 words a minute.



#2. Design the Method Signature
#Include the name of the method, its parameters, 
#return value, and side effects.

def calculate_reading_time(words)
    words = words.split(" ")
    if words.length == 0
        return 0
    elsif words.length < 200
        return 1
    end
	end

