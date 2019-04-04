require_relative 'bike'

class DockingStation
  attr_reader :bike

  def initialize
    @bike = []
  end

    def release_bike
      fail "No bikes available" if empty?
      @bike.pop
    end


    def dock(bike)
      fail "Docking station is full" if full?
      @bike << bike
    end

    private

    def full?
      @bike.count >= 20
    end

    def empty?
      @bike.empty?
    end
end
