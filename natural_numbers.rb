# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000

#project Euler 1

class NaturalNumber

  def initialize(num)
    @numbers = []
    collect_numbers(num)
  end

  def collect_numbers(num)
    (1...num).each do |i|
      if i % 3 == 0 || i % 5 == 0
        @numbers << i
      end
    end
  end

  def number_count
    @numbers.count
  end

end

number = NaturalNumber.new(1000)

puts "The # of natural numbers that are multiples of 3 or 5 are #{number.number_count}"
