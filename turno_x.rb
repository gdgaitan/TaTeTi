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

end