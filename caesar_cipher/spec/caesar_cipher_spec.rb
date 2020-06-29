require './lib/caesar_cipher'

describe "caesar_cipher method" do

  it "shifts each input letter to right by number given if positive" do
    expect(caesar_cipher("abc", 5)).to eq("fgh")
  end

  it "shifts each letter input to left by number given if negative" do
    expect(caesar_cipher("bcd", -1)).to eq("abc")
  end

  it "wraps around" do
    expect(caesar_cipher("xyz", 3)).to eq("abc")
  end

  it "works with uppercase" do
    expect(caesar_cipher("CAP", -3)).to eq("ZXM")
  end

  it "works with large number" do
    expect(caesar_cipher("Caesar", 209)).to eq("Dbftbs")
  end

  it "leaves spaces non-alphabetic characters untouched" do
    expect(caesar_cipher("It's testing!", 1)).to eq("Ju't uftujoh!")
  end

end