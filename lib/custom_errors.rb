class Person
  attr_accessor :partner, :name

  def initialize(name)
    @name = name
  end

  def get_married(person)
    if person.is_a?(Person)
      self.partner = person
      person.partner = self
    else
      raise PartnerError.new("You must give the get_married method an argument of an instance of the Person class!")
    end
  end

  class PartnerError < StandardError
    def message
      "You must give the get_married method an argument of an instance of the Person class!"
    end
  end
end
