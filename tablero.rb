require_relative "free_cell"
require_relative "cell_x"
require_relative "cell_o"

class Tablero

    def initialize(size)
        cell = FreeCell.new
        @board = Array.new(size) {Array.new(size) {cell}}
    end

    def PlayX(fila, columna)
        self.CheckLimits(fila, columna)
        @board[fila][columna]=@board[fila][columna].SetX
    end

    def PlayO(fila, columna)
        self.CheckLimits(fila, columna)
        @board[fila][columna]= @board[fila][columna].SetO
    end

    def IsEmpty?
        @board.all? {|row| row.all? {|cell| cell.IsFree?}}
    end

    def IsFull?
        @board.all? {|row| row.none? {|cell| cell.IsFree?}}
    end

    def XIsWinner?
      self.RowWinner('X') || self.ColWinner('X') || self.DiagWinner('X')
    end

    def OIsWinner?
      self.RowWinner('O') || self.ColWinner('O')
    end

    def RowWinner (player)
      @board.any?{|row| row.all? {|cell| cell.Player == player}}
    end

    def ColWinner (player)
      @board.transpose.any?{|row| row.all? {|cell| cell.Player == player}}
    end

    def DiagWinner (player)
      (0..@board.size-1).collect {|i| @board[i][i]}.all? {|cell| cell.Player == player} ||
          (0..@board.size-1).collect {|i| @board[i][@board.size-1-i]}.all? {|cell| cell.Player == player}
    end

    def CheckLimits (fila, columna)
        if fila >= @board.size || columna >= @board.size
            raise "Posicion fuera de rango"
        end
    end

end
