class Venue
  attr_reader :name,
              :capacity,
              :patrons

  def initialize(name, number)
    @name = name
    @capacity = number
    @patrons = []
  end

  def add_patron(person)
    @patrons << person
  end

  def yell_at_patrons
    @patrons.map do |patron|
      patron.upcase
    end
  end

  def over_capacity?
    number_of_patrons = @patrons.count
    number_of_patrons > @capacity
  end

  def kick_out
    @patrons.pop until @patrons.count == @capacity
  end
end
