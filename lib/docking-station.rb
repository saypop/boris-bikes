require_relative 'bike'
class DockingStation

  attr_reader :dock

  # # An older version
  # def release_bike
  #   Bike.new
  # end

  def initialize
    @dock = []
  end

  # updated under the assumption that docks start empty
  def release_bike
    fail 'No bikes available' if empty?
    @bike = @dock.pop
  end

  def dock(bike)
    fail 'Dockstation is full' if full? # (not future proof code as dockstation capacity can only be 1)
    @dock << bike
    @dock[-1]
  end

  # not required because this is what attr_reader does
  # def bike
  #   @bike
  # end

  private
  def full?
    @dock.size >= 20
  end

  def empty?
    @dock.empty?
  end

end
