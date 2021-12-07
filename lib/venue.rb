class Venue
  attr_reader :name,
              :capacity,
              :patrons

  def initialize(name, number)
    @name = name
    @capacity = number
    @patrons = []
  end
end
