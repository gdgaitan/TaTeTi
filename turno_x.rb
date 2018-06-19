require_relative 'turno.rb'

class TurnoX < Turno

  def initialize
  end

  def NextIsX?
    true
  end

  def NextIsO?
    false
  end

  def Next
    TurnoO.new
  end

  def PlayX (tablero, fila, columna)
    tablero.PlayX(fila, columna)
  end

  def PlayO (tablero, fila, columna)
    raise "Es el turno de X"
  end

  def self.CanHandle? (tablero, turno)
    !tablero.IsFull? && turno.NextIsO?
  end
end