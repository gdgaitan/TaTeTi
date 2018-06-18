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

  def Next
    TurnoX.new
  end

end