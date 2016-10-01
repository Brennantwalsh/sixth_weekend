# Create a thesaurus program. To create it, you will create two classes, Thesaurus and Entry.
# A Thesaurus will contain many Entries. An Entry contains three primary attributes:
# word, synonyms, and antonyms. Your application should contain the following features:
# 1. The ability to add new words to a Thesaurus.
# 2. The ability to delete a word from a Thesaurus. 
# 3. The ability to look up a word's synonyms.
# 4. The ability to look up a word's antonyms.
# 5. The ability to add a synonym to a word.
# 6. The ability to add an antonym to a word.
#
# Part of the challenge is to determine which functionality belongs in the Thesaurus class,
# and which belongs in the Entry class.
#
# And... test your functionality using RSpec!

class Thesaurus
  attr_accessor :log

  def initialize
    @log = []
  end

  def add_word(word)
    @log << Entry.new(word)
  end

  def delete_word(word)
    @log.each do |entry|
      if entry.word == word
        @log.delete(entry)
      end
    end 
  end

  def look_up_synonyms(word)
    @log.each do |entry|
      if entry.word == word
        return entry.synonyms
      end
    end
  end

  def look_up_antonyms(word)
    @log.each do |entry|
      if entry.word == word
        return entry.antonyms
      end
    end
  end
end

class Entry
  attr_reader :word, :synonyms, :antonyms

  def initialize(word)
    @word = word
    @synonyms = []
    @antonyms = []
  end

  def add_synonym(word)
    @synonyms << word
  end

  def add_antonym(word)
    @antonyms << word
  end
end




