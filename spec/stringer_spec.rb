require "spec_helper"

RSpec.describe Stringer do
  it "has a version number" do
    expect(Stringer::VERSION).not_to be nil
  end

  it "concatenates undefined number of strings with a space" do 
    expect(Stringer.spacify "Oscar", "Vazquez", "Zweig", "Olasaba", "Hernandez", "Ricardo", "Mendoza").to eq("Oscar Vazquez Zweig Olasaba Hernandez Ricardo Mendoza")
  end

  context "testing minify" do
	  it "minify works if less than max" do 
	    expect(Stringer.minify("Hello, I'm learning how to create a gem", 10)).to eq("Hello, I'm...")
	  end

	  it "minify works if greater than max" do 
	    expect(Stringer.minify("Hello", 10)).to eq("Hello")
	  end

  end


  it "tests replacify" do
    expect(Stringer.replacify("I can't do this", "can't", "can")).to eq("I can do this")
  end

  it "tests tokenize" do
    expect(Stringer.tokenize("I love to code")).to eq(["I", "love", "to", "code"])
  end


  it "tests removify" do
    expect(Stringer.removify("I'm not a developer", "not")).to eq("I'm a developer")
  end


end
