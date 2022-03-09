# Your code goes here!
class Anagram
attr_reader :keyword
    def initialize(keyword)
        @keyword = keyword
    end

    def match(arr)
        answer_arr = []
        arr.each do |word|
            word_arr = word.chars.sort
            keyword_sorted = @keyword.chars.sort
            if word_arr == keyword_sorted
                answer_arr.push(word)
            end
        end
        answer_arr
    end

end


listen = Anagram.new("listen")
listen.match(%w[enlists google inlets banana])
