require_relative 'guess'

describe WordGuess do
  let(:game) { WordGuess.new("unicorn") }

  it "stores word given on initialization" do
    expect(game.word_array).to eq ["u","n","i","c","o","r","n"]
  end

  it "Guess a letter" do
    game.guess_letter?("u")
    expect(game.board_array).to eq ["u","_","_","_","_","_","_"]
  end

  it "Guess a letter that is duplicate in word" do
    game.guess_letter?("n")
    expect(game.board_array).to eq ["_","n","_","_","_","_","n"]
  end

  it "Number of guesses after duplicate guesses" do
    game.guess_letter?("n")
    game.guess_letter?("n")
    game.guess_letter?("n")
    game.guess_letter?("o")
    game.guess_letter?("z")
    game.guess_letter?("z")
    game.guess_letter?("z")
    expect(game.num_of_guesses).to eq 3
  end

  it "Prints the board" do
    game.print_board
    expect(game.print_board).to eq ["_","_","_","_","_","_","_"]
  end

  it "Check if game over due to correct guesses" do
    game.guess_letter?("u")
    game.guess_letter?("n")
    game.guess_letter?("i")
    game.guess_letter?("c")
    game.guess_letter?("o")
    game.guess_letter?("r")
    game.guess_letter?("n")
    game.game_over?
    expect(game.is_over).to eq true
  end

  it "Check if game over due to too many guesses" do
    game.guess_letter?("z")
    game.guess_letter?("n")
    game.guess_letter?("g")
    game.guess_letter?("c")
    game.guess_letter?("o")
    game.guess_letter?("f")
    game.guess_letter?("w")
    game.game_over?
    expect(game.is_over).to eq true
  end

  it "Check if game is not over" do
    game.guess_letter?("z")
    game.guess_letter?("n")
    game.guess_letter?("g")
    game.game_over?
    expect(game.is_over).to eq false
  end

end