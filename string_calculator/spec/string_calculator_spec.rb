require_relative '../lib/string_calculator'

RSpec.describe StringCalculator do
  let(:calc) { described_class.new }

  it "returns 0 for empty input" do
    expect(calc.add("")).to eq(0)
  end

  it "returns the number for a single value" do
    expect(calc.add("4")).to eq(4)
  end

  it "adds two numbers separated by comma" do
    expect(calc.add("2,5")).to eq(7)
  end

  it "adds multiple numbers" do
    expect(calc.add("1,2,3,4,5")).to eq(15)
  end

  it "handles newlines as delimiters" do
    expect(calc.add("1\n2,3")).to eq(6)
  end

  it "handles custom single-character delimiter" do
    expect(calc.add("//;\n1;2")).to eq(3)
  end

  it "raises error for negative numbers" do
    expect { calc.add("1,-3,4,-9") }.to raise_error("negative numbers not allowed: -3, -9")
  end

  it "handles input with multiple lines and mixed delimiters" do
    expect(calc.add("1\n2\n3,4")).to eq(10)
  end

  it "treats spaces as part of the number string" do
    expect(calc.add(" 1 , 2 ")).to eq(3) 
  end

  it "handles custom delimiter with special character" do
    expect(calc.add("//$\n1$2$3")).to eq(6)
  end

  it "raises error with correct message for single negative" do
    expect { calc.add("-1") }.to raise_error("negative numbers not allowed: -1")
  end

  it "works with multi-digit numbers" do
    expect(calc.add("10,20,30")).to eq(60)
  end

  it "handles custom delimiter that is a digit" do
    expect(calc.add("//9\n19")).to eq(1) 
  end

  it "handles newline right after delimiter declaration" do
    expect(calc.add("//;\n")).to eq(0)
  end

  it "raises error with mixed delimiter and negative" do
    expect {
      calc.add("//;\n-1;2;-3")
    }.to raise_error("negative numbers not allowed: -1, -3")
  end
end
