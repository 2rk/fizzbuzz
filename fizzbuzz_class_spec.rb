require 'rspec'

class FizzBuzz

  attr_reader :the_number
  def initialize value
    @the_number = value
  end

  def fizz?
    @the_number % 3 == 0
  end

  def buzz?
    @the_number % 5 == 0
  end
end

describe FizzBuzz do
  it 'should return fizz using 9 if divisible by 3' do
    fizzbuzz = FizzBuzz.new(9)
    expect(fizzbuzz.fizz?).to be_truthy
  end
  it 'should return fizz using 3 if divisible by 3' do
    fizzbuzz = FizzBuzz.new(3)
    expect(fizzbuzz.fizz?).to be_truthy
  end

  it 'should return fizz if divisible by 3' do
    fizzbuzz = FizzBuzz.new(10)
    expect(fizzbuzz.fizz?).to be_falsey
  end

  it 'should return the number it receives' do
    fizzbuzz = FizzBuzz.new(33)
    expect(fizzbuzz.the_number).to eq(33)
  end
end

1.upto(100).each do |number|
  number_instance = FizzBuzz.new(number)

  case
    when number_instance.fizz? && number_instance.buzz?
      puts 'fizzbuzz'
    when number_instance.fizz?
      puts 'fizz'
    when number_instance.buzz?
      puts 'buzz'
    else
      puts number
  end
end
