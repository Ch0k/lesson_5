class CargoTrain < Train
  @register_instance = 0
  def initialize(number)
    super
    @type = 'cargo'
  end
  def add_wagon(wagon)
    @wagon << wagon if wagon.type == self.type
  end
end