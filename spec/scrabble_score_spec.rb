require ("rspec")
require ("scrabble_score")
require ("pry")

describe ('String#scrabble')do
  it("returns a scrabble score for a letter") do
  expect("a".scrabble()).to(eq(1))
end
  it("returns a scrabble score for two letters") do
    expect("at".scrabble()).to(eq(2))
  end
  it("returns a scrabble score for two letters with different score values") do
    expect("az".scrabble()).to(eq(11))
  end
  it("returns a scrabble score for a word") do
    expect("defenestrate".scrabble()).to(eq(16))
  end
end
