class Board
    def initialize
        @board = [[' ',' ',' '],[' ',' ',' '],[' ',' ',' ']]
        @turn = 'X'
    end
    
    def play_x(i, j)
        if @turn == 'X'
            if @board[i][j] == ' '
                @board[i][j] = 'X'
                @turn = 'O'
            else
                puts "Please choose different location"
            end
        else
            puts "It's not your turn, fool!"
        end
    end
    
    def play_o(i, j)
        if @turn == 'O'
            if @board[i][j] == ' '
                @board[i][j] = 'O'
                @turn = 'X'
            else
                puts "Please choose different location"
            end
        else
            puts "It's not your turn, fool!"
        end
    end
    
    def check_horizontal(i)
        @board[i][0] != ' ' && @board[i][1] != ' ' && @board[i][2] != ' '
    end
    
    def check_vertical(j)
    end
    
    def check_diag1
    end
    
    def check_diag2
    end
    
    def win?
    end
    
    def to_s
        i = 0
        s = ""
        while i < @board.length
            s = s + "\n" + @board[i].join(" | ")
            i += 1
        end
        return s
    end
end
