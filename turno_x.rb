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

  def PlayX (tablero, fila, columna)
    tablero.PlayX(fila, columna)
  end

  def PlayO (tablero, fila, columna)
    raise "Es el turno de X"
  end

  def self.CanHandle? (tablero, turno)
    !tablero.IsFull? && !tablero.XIsWinner? && !tablero.OIsWinner? && turno.NextIsO?
  end
end