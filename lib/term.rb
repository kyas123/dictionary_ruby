class Term

  attr_reader(:word, :definition)

  @@word_bank = []


  def Term.all
    @@word_bank
  end

  def initialize(attributes)
  @word = attributes[:word]
  @definition = attributes[:definition]
  end

  def add_word
    @@word_bank << self
  end

  def Term.search(search_term)
    result = ""
    @@word_bank.each do  | list |
      if search_term == list.word
        result = "#{list.word} - (def.) #{list.definition}"
      end
    end
    result
  end

end
