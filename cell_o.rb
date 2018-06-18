class CellO < Cell
  def Initialize
    @symbol = "O"
  end

  def SetX
    raise "La celda esta ocupada"
  end

  def SetO
    raise "La celda esta ocupada"
  end

  def IsX?
    false
  end

  def IsO?
    true
  end

  def IsFree?
    false
  end

end