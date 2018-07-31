# Add  code here!
require 'pry'

#takes in an integer argument and returns a boolean of whether or not that integer is a prime number
def prime?(n)
  sieve = []
  (2..n).each { |i| sieve[i] = i }
  (2..Math.sqrt(max)).each do |i|
  (i*i).step(max, i) { |j| sieve[j] = nil } if sieve[i]
  end
end
