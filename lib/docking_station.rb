require_relative 'bike'

class DockingStation

  DEFAULT_CAPACITY = 20

  attr_reader :capacity
  attr_reader :bikes

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

    def release_bike
      fail "No bikes available" if empty?
      bike = @bikes.pop
      fail "Bike is broken" if bike.broken
      bike
    end


    def dock(bike)
      fail "Docking station full" if full?
      @bikes << bike
    end


    private


    def full?
      @bikes.count >= @capacity
    end

    def empty?
      @bikes.empty?
    end
end
