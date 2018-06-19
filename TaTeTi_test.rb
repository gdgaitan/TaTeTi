require 'test/unit'
require_relative "tablero"
require_relative "game"

class TaTeTiTest < Test::Unit::TestCase

  def setup
    # Do nothing
  end

  def teardown
    # Do nothing
  end

  def test01EmptyBoard
    assert_true(Game.new(3).BoardIsEmpty?)
  end

  def test02GameStartsWithX
    game = Game.new(3)
    assert_true(game.NextIsX?)
    assert_false(game.NextIsO?)
  end

  def test03PlayedXBoardIsNotEmptyAndTurnIsO
    game = Game.new(3)
    game.PlayX(1, 1)
    assert_false(game.BoardIsEmpty?)
    assert_false(game.NextIsX?)
    assert_true(game.NextIsO?)
  end

  def test04CheckBoardLimits
    game = Game.new(3)
    begin
      game.PlayX(3, 1)
      assert(fase,"Debio fallar por fuera de rango")
    rescue Exception => ex
      assert_equal("Posicion fuera de rango", ex.message)
      assert_true(game.BoardIsEmpty?)
      assert_true(game.NextIsX?)
    end
  end

  def test05CheckEmptyCell
    game = Game.new(3)
    game.PlayX(1,1)
    begin
      game.PlayO(1, 1)
      assert(false,"Debio fallar por celda ocupada")
    rescue Exception => ex
      assert_equal("La celda esta ocupada", ex.message)
      assert_true(game.NextIsO?)
    end
  end

  def test06CheckTurnoX
    game = Game.new(3)
    begin
      game.PlayO(1, 2)
      assert(false,"Debio fallar por turno de X")
    rescue Exception => ex
      assert_equal("Es el turno de X", ex.message)
      assert_true(game.NextIsX?)
    end
  end

  def test07CheckTurnoO
    game = Game.new(3)
    game.PlayX(1,1)
    begin
      game.PlayX(1, 2)
      assert(false,"Debio fallar por turno de O")
    rescue Exception => ex
      assert_equal("Es el turno de O", ex.message)
      assert_true(game.NextIsO?)
    end
  end

  def test08
    game = Game.new(3)
    game.PlayX(0,0)
    game.PlayO(1,1)
    game.PlayX(0,1)
    game.PlayO(0,2)
    game.PlayX(2,0)
    game.PlayO(1,0)
    game.PlayX(1,2)
    game.PlayO(2,1)
    game.PlayX(2,2)
    begin
      game.PlayO(1, 2)
      assert(false,"Debio fallar por juego finalizado")
    rescue Exception => ex
      assert_equal("El juego ha finalizado", ex.message)
      assert_true(game.IsDraw?)
    end
  end

end