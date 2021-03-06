require_relative 'turno.rb'

class TurnoO < Turno

  def initialize
  end

  def NextIsX?
    false
  end

  def NextIsO?
    true
  end

  def PlayX (tablero, fila, columna)
    raise "Es el turno de O"
  end

  def PlayO (tablero, fila, columna)
    tablero.PlayO(fila, columna)
  end

  def self.CanHandle? (tablero, turno)
    !tablero.IsFull? && !tablero.XIsWinner? && !tablero.OIsWinner? && turno.NextIsX?
  end

end