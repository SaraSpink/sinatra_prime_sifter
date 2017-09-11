require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/sinatra_prime')
require('pry')

get('/') do
  erb(:input)
end

get('/output') do
  @number = params.fetch("number")
  Prime.new(@number)
  # if list.check?
  #   @string_to_display = "This number is prime"
  # else
  #   @string_to_display = "This is NOT a prime number"
  # end

  erb(:output)
  # @length = params.fetch("length")
  # @width = params.fetch("width")
  # rectangle = Rectangle.new(@length, @width)
  # if rectangle.square?
  #   @string_to_display = "This is a square."
  # else
  #   @string_to_display = "This is not a square."
  # end
  # erb(:output)
end
