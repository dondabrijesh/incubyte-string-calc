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

end
