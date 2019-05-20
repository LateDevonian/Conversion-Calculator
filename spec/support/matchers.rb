RSpec::Matchers.define :any do |matcher|
  match do |actual|
    actual.any? do |item|
      matcher.matches?(item)
    end
  end
end
