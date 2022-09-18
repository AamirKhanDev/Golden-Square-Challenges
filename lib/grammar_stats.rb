class GrammarStats
    def initialize
      @pass = 0
      @fail = 0
    end
  
    def check(text) # text is a string
      # Returns true or false depending on whether the text begins with a capital
      # letter and ends with a sentence-ending punctuation mark.
      if text.match?(/^[A-Z].*\W$/)
        @pass += 1
        true
      else
        @fail += 1
        false
      end
    end

    def percentage_good
      # Returns as an integer the percentage of texts checked so far that passed
      # the check defined in the `check` method. The number 55 represents 55%.
      total = @pass + @fail
      @pass / total.to_f * 100
    end
end

