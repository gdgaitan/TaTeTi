require_relative 'turno.rb'

class TurnoGameOver < Turno

  def initialize
  end

  def NextIsX?
    false
  end

  def NextIsO?
    false
  end

  def PlayX (tablero, fila, columna)
    raise "El juego ha finalizado"
  end

  def PlayO (tablero, fila, columna)
    raise "El juego ha finalizado"
  end

  def self.CanHandle? (tablero, turno)
    tablero.IsFull? || tablero.XIsWinner? || tablero.OIsWinner?
  end

end