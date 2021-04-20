module InstanceCounter
  def self.included(base)
    base.extend ClassMethods
    base.include InstanceMethods
  end
  
  module ClassMethods

    def instances
      @@register_instance
    end
  end

  module InstanceMethods

    protected

    def register_instance 
      @@register_instance += 1
    end

  end
end