require_relative "turno_x"
require_relative "turno_o"

class Game

  def initialize(size)
    @tablero = Tablero.new(size)
    @turno = TurnoX.new
  end

  def NextIsX?
    @turno.NextIsX?
  end

  def NextIsO?
    @turno.NextIsO?
  end

  def BoardIsEmpty?
    @tablero.IsEmpty?
  end

  def PlayX(fila, columna)
    @tablero.PlayX(fila, columna)
    @turno = @turno.Next
  end

  def PlayO(fila, columna)
    @tablero.PlayO(fila, columna)
    @turno = @turno.Next
  end

end