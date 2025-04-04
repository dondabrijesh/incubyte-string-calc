# String Calculator - TDD Kata in Ruby

This is a Ruby implementation of the classic **String Calculator Kata**, built following Test-Driven Development (TDD) principles.

---

## Features

- Handles comma `,` and newline `\n` as default delimiters
- Supports custom delimiters with `//[delimiter]\n`
- Throws exceptions for negative numbers with full list of negatives
- Accepts any number of integers
- Fully tested with RSpec

---

## Folder Structure

string_calculator/
├── lib/
│   └── string_calculator.rb
├── spec/
│   └── string_calculator_spec.rb
├── bin/
│   └── console
├── Gemfile

---

## Running Tests

1. Install dependencies:

```bash
bundle install

2. Run tests:
bundle exec rspec

Running From Console

chmod +x string_calculator/bin/console
./string_calculator/bin/console

Enter a string of numbers (or type 'exit' to quit): 1,2
Result: 3
Enter a string of numbers (or type 'exit' to quit): //;\n2;3
Result: 5
Enter a string of numbers (or type 'exit' to quit): -1,2,-3
Error: negative numbers not allowed: -1, -3

---

Kata Practice Goal:
This project is a great practice for:

TDD (Test-Driven Development)

Simple parser logic

Handling edge cases and errors

Clean Ruby OOP design
