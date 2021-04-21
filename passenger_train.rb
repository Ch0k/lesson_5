class PassengerTrain < Train
  include InstanceCounter
  @register_instance = 0
  def initialize(number)
    super
    @type = 'passenger'
  end
end