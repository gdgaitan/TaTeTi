class CellX < Cell

  def Initialize
    @symbol = "X"
  end

  def SetX
    raise "La celda esta ocupada"
  end

  def SetO
    raise "La celda esta ocupada"
  end

  def IsX?
    true
  end

  def IsO?
    false
  end

  def IsFree?
    false
  end

end