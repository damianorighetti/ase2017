---
title: Let's try TDD with Ruby
layout: page
---

This is an adaptation of a popular TDD _Kata_, an exercise to learn TDD that we will use to also refresh our knowledge of Ruby.

Download the exercises here: [calculator.rb]({{ site.baseurl }}/exercises/calculator.rb), [calculator_spec.rb]({{ site.baseurl }}/exercises/calculator_spec.rb)

## Rules
* Work in pairs
* Do one task at a time, learning to work incrementally
* Switch roles every 15 minutes
* Start with the simplest test case of an empty string and move to 1 and two numbers
* Remember to solve things **as simply as possible** so that you force yourself to write tests you did not think about
* Remember to refactor after each passing test

## Setting up

Install `rspec` by running `gem install rspec`

Create two files:
* `calculator.rb` for your implementation of the string calculator
* `calculator_spec.rb` for your tests. The first line must be `require './calculator.rb'`

To run your tests execute `rspec -c calculator_spec.rb`.

Refer to [the documentation of RSpec](http://www.relishapp.com/rspec/) for any question.

## Exercise

### 1. A simple String calculator with a "add" method

Create a simple String calculator with a method `add(string)` that accepts a string. The method can take 0, 1 or 2 numbers, and will return their sum:
* when the input is an empty string it should return 0
* when the input is one number it should return that number
* when the input is two numbers separated by a comma, it should return the sum of those numbers
* when the input is three numbers separated by a comma, it should return the sum of those numbers

You can start like this:

```ruby title:"calculator_spec.rb"
require './calculator'

context 'when the input is an empty string' do
  it 'should return 0' { expect(add("")).to eq(0) }
end
```
```ruby title:"calculator.rb"
def add(string)
  0
end
```

If the test is green you can refactor and continue to the next requirement.

```ruby title:"calculator_spec.rb" start:6 mark:9
context 'when the input is "1"' do
  it 'should return 1' { expect(add("1")).to eq(1) }
end
# can you think of more examples for this?
```

```ruby title:"calculator.rb" mark:8
def add(string)
  string.to_i
end
# is this enough to pass the test?
```

### 2. More numbers

Allow the Add method to handle an unknown amount of numbers (hint: look for the method `split` on Ruby-Doc)

### 3. Allow "\n"

Allow the Add method to handle new lines between numbers (instead of commas):
* the following input is ok:  "1\n2,3"  (will equal 6)
* the following input is NOT ok:  "1,\n" (no need to prove it - just clarifying)

### 4. More delimiters

Support different delimiters
* to change a delimiter, the beginning of the string will contain a separate line that looks like this:   "//[delimiter]\n[numbers…]" for example "//;\n1;2" should return three where the default delimiter is ‘;’.
* the first line is optional. all existing scenarios should still be supported

### 5. Negatives not allowed

Calling `add` with a negative number will throw an exception "negatives not allowed" - and the negative that was passed. If there are multiple negatives, show all of them in the exception message
