class TextCompressor
  attr_reader :unique, :index

  def initialize(text)
    @unique = []
    @index = []
    words = text.split
    words.each do |word|
      # return index if exist or nil if not
      i = @unique.index(word)
      if i # push index if the word exist
        @index << i
      else # push the new word & push the its index
        @unique << word
        @index << unique.size - 1
      end
    end
  end
end

text = "This specification is the spec for a specification"
compressor = TextCompressor.new(text)

unique_word_array = compressor.unique
word_index = compressor.index

puts unique_word_array, word_index