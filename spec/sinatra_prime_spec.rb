require('rspec')
require('sinatra_prime')

describe('Stuff#check') do
  it("Returns true if number is prime") do
    list = Prime.new(5)
    expect(list.check).to eq(true)
  end

  it("returns true if you use the attribute variable") do
    number = Prime.new(@number)
    expect(list.check).to eq(true)
  end


end
