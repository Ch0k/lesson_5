module InstanceCounter
  def self.included(base)
    base.extend ClassMethods
    base.include InstanceMethods
  end
  
  module ClassMethods
    def instances
      @register_instance
    end
    def instances=(value)
      @register_instance = value
    end
  end

  module InstanceMethods
    
    def register_instance 
      self.class.instances += 1
    end
  end
end