
class Turno

  def initialize()
    raise NotImplementedError.new("#{self.class.name}#initialize is an abstract method.")
  end

  def NextIsX?
    raise NotImplementedError.new("#{self.class.name}#NextIsX is an abstract method.")
  end

  def NextIsO?
    raise NotImplementedError.new("#{self.class.name}#NextIsO is an abstract method.")
  end

  def Next
    raise NotImplementedError.new("#{self.class.name}#Next is an abstract method.")
  end
end
