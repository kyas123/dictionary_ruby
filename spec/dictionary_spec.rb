require 'term'
require 'rspec'

describe Term do
  it 'initializes an instance of Term' do
    test_term = Term.new({:word => "carrot", :definition => 'a orange vegetable'})
    expect(test_term).to be_an_instance_of Term
  end

  it 'adds an object including word and definition' do
    test_term = Term.new({:word => "carrot", :definition => "a orange vegetable"})
    word_bank = test_term.add_word
    expect(Term.all).to eq [test_term]
  end

end
