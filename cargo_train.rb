class CargoTrain < Train
  include InstanceCounter
  @register_instance = 0
  def initialize(number)
    super
    @type = 'cargo'
  end
end