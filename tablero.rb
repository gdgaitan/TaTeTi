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

    def CheckLimits (fila, columna)
        if fila >= @board.size || columna >= @board.size
            raise "Posicion fuera de rango"
        end
    end

end
