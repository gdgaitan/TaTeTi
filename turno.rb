class Turno

  def initialize()
    #raise NotImplementedError.new("#{self.class.name}#initialize is an abstract method.")
  end

  def NextIsX?
    raise NotImplementedError.new("#{self.class.name}#NextIsX is an abstract method.")
  end

  def NextIsO?
    raise NotImplementedError.new("#{self.class.name}#NextIsO is an abstract method.")
  end

  def PlayX (tablero, fila, columna)
    raise NotImplementedError.new("#{self.class.name}#PlayX is an abstract method.")
  end

  def PlayO (tablero, fila, columna)
    raise NotImplementedError.new("#{self.class.name}#PlayO is an abstract method.")
  end

  def self.CanHandle? (tablero, turno)
    raise NotImplementedError.new("#{self.class.name}#CanHandle is an abstract method.")
  end

  def self.GetNext (tablero, turno)
    descendants = [TurnoX, TurnoO, TurnoGameOver] #ObjectSpace.each_object(::Class).select {|klass| klass < self}
    descendants.find {|turn| turn.CanHandle?(tablero, turno)}.new
  end


end
