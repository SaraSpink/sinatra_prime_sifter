require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/sinatra_prime')
require('pry')

get('/') do
  erb(:input)
end

get('/output') do
  @number = params.fetch("number").to_i
  list = Prime.new(@number)
  if list.check?
    @string_to_display = "This number is prime"
  else
    @string_to_display = "This is NOT a prime number"
  end

  erb(:output)
  
end
