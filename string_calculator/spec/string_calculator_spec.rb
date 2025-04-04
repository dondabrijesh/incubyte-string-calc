require_relative '../lib/string_calculator'

RSpec.describe StringCalculator do
  let(:calc) { described_class.new }

  it "returns 0 for empty input" do
    expect(calc.add("")).to eq(0)
  end

  it "returns the number for a single value" do
    expect(calc.add("4")).to eq(4)
  end

end
