require_relative "turno_x"
require_relative "turno_o"
require_relative "turno_game_over"
require_relative "turno"

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
    @turno.PlayX(@tablero, fila, columna)
    @turno = Turno.GetNext(@tablero,@turno)
    #@turno = @turno.Next
  end

  def PlayO(fila, columna)
    @turno.PlayO(@tablero, fila, columna)
    @turno = Turno.GetNext(@tablero,@turno)
    #@turno = @turno.Next
  end

  def IsDraw?
    @tablero.IsFull? && !XIsWinner? && !OIsWinner?
  end

  def XIsWinner?
    @tablero.XIsWinner?
  end

  def OIsWinner?
    @tablero.OIsWinner?
  end

end