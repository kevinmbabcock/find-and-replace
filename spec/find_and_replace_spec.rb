require('rspec')
require('find_and_replace')
require('pry')

describe('find_and_replace') do
  it('replace word world with word universe') do
    expect("hello world".find_and_replace("world", "universe")).to(eq("hello universe"))
  end
end
