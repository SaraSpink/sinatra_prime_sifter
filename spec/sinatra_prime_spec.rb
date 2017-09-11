require('rspec')
require('sinatra_prime')

describe('Stuff#check') do
  it("Returns true if number is prime") do
    list = Prime.new(5)
    expect(list.check).to eq(true)
  end


end
