class Cell

  def Initialize
    raise NotImplementedError.new("#{self.class.name}#Initialize is an abstract method.")
  end

  def SetX
    raise NotImplementedError.new("#{self.class.name}#SetX is an abstract method.")
  end

  def SetO
    raise NotImplementedError.new("#{self.class.name}#SetO is an abstract method.")
  end

  def IsX?
    raise NotImplementedError.new("#{self.class.name}#IsX is an abstract method.")
  end

  def IsO?
    raise NotImplementedError.new("#{self.class.name}#IsO is an abstract method.")
  end

  def IsFree?
    raise NotImplementedError.new("#{self.class.name}#IsFree is an abstract method.")
  end

  def Player
    @symbol
  end

end