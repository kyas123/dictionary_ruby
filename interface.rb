require ('./lib/term')
require ('pry')

def main_menu
  loop do
    puts "*** Main-menu ***"
    puts "[a] Add a new word"
    puts "[e] Edit dictionary"
    puts "[v] to view all words"
    puts "[s] to search for a word"
    puts "[x] Exit"
    user_choice = gets.chomp
    if user_choice == 'a'
      add_menu
    elsif user_choice == 'e'
      edit_menu
    elsif user_choice == 'v'
      list_words
    elsif user_choice == 's'
      puts "enter word to search."
      user_search = gets.chomp
      test = Term.search(user_search)
      puts "*** Result ***"
      puts test
    elsif user_choice == 'x'
      exit
    end
  end
end


def add_menu
  puts "Enter word\n"
  word = gets.chomp
  puts "Define '#{word}'\n"
  word_def = gets.chomp
  new_word = Term.new(:word => word, :definition => word_def)
  new_word.add_word
  puts "New word added"
  print "#{word} - (def.) #{word_def}\n\n"
end

def list_words
  Term.all.each_with_index do  |term, index|
    puts index.to_s + " #{term.word} - (def.) #{term.definition}"
  end
end

def edit_menu

end


# end

main_menu

