class Person
  def self.species
    "Homo Sapien"
  end
end

class Person
  class << self
    def species
      "Homo Sapien"
    end
  end
end

class << Person
  def species
    "Homo Sapien"
  end
end

Person.instance_eval do
  def species
    "Homo Sapien"
  end
end

def Person.species
  "Homo Sapien"
end
# 1234567891011121314151617181920212223242526272829
#
# All five of these snippets define a Person.species that returns Homo Sapien. Now consider another set of snippets:

class Person
  def name
    "Matz"
  end
end

Person.class_eval do
  def name
    "Matz"
  end
end
