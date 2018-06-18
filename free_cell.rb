require_relative "cell"
class FreeCell < Cell

  def Initialize
    @symbol = "-"
  end

  def SetX
    CellX.new
  end

  def SetO
    CellO.new
  end

  def IsX?
    false
  end

  def IsO?
    false
  end

  def IsFree?
    true
  end

end