require('rspec')
require('sinatra_prime')

describe('Prime#check') do
  it("Returns true if number is prime") do
    list = Prime.new(5)
    expect(list.check?).to eq(true)
  end

  it("returns a boolean if you use the attribute variable") do
    number = Prime.new(5)
    expect(number.check?).to eq(true)
  end

  it("returns a boolean if you use the attribute variable") do
    number = Prime.new(6)
    expect(number.check?).to eq(false)
  end


end
