require('rspec')
require('find_and_replace')
require('pry')

describe('find_and_replace') do
  it('replace word world with word universe') do
    expect("hello world".find_and_replace("world", "universe")).to(eq("hello universe"))
  end
  it('takes into account partial matches and replace word cathedral with word doghedral') do
    expect("cat to the cathedral".find_and_replace("cat", "dog")).to(eq("dog to the doghedral"))
  end
  it("replaces every instance of a substring with the replacement") do
    expect("word from a wordsmith worded with a word".find_and_replace("word", "string")).to(eq("string from a stringsmith stringed with a string"))
  end
end
