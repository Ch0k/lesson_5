
class Station
  include InstanceCounter
  attr_reader :name, :trains
  @@all = []
  @@register_instance = 0
  # Имеет название, которое указывается при ее создании
  def initialize(name)
    @name = name
    @trains = []
    @@all << self
    #self.class.instancess
    register_instance
    
  end
 # def register_instance
  #  @@register_instance += 1
  #end

  #def self.instances
   # @@register_instance
  #end

  # Может принимать поезда (по одному за раз)
  def reception(train)
    @trains << train
  end

  # Может возвращать список всех поездов на станции, находящиеся в текущий 
  # момент

  # Может возвращать список поездов на станции по типу (см. ниже): 
  # кол-во грузовых, пассажирских
  def train_list_type(type)
    @trains.filter{|train| train.type == type}
  end

  # Может отправлять поезда (по одному за раз, при этом, 
  # поезд удаляется из списка поездов, находящихся на станции).  
  def send_train(train)
    @trains.delete(train)
  end

  def self.all
    @@all.each{|station| puts station.name}
  end
end
