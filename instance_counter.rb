module InstanceCounter

  @@instances = 0

  @register_instance = 0

  def instances=(value)
    @@instances = value
  end

  def instances
    @@instances
  end

  def register_instance 
    @register_instance
  end

  def register_instance=(value)
    @register_instance = value
  end

end