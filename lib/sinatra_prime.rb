
# class Prime
#   def initialize(number)
#     @number = number
#     @number_array = (2..@number).to_a
#     binding.pry
#   end
#   def check
#     prime = 2
#     while prime < @number
#       @number_array.reject! {|i|(i % prime === 0 and i != prime)}
#       prime = prime + 1
#     end
#   end
#   if @number_array.last == @number
#     true
#   else
#     false
#   end
# end

class Prime
  def initialize (number)
  @number = number
  end
  def check
    number_array = (2..@number).to_a
    prime = 2
    while prime < @number
      number_array.reject! {|i|(i % prime === 0 and i != prime)}
      prime = prime + 1
    end
    number_array.include?(@number)
  end
end
