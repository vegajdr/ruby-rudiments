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
                puts "Please choose a different location"
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
    
    def check_horizontal
        i = 0
        check = false
        while i < @board.length
            @board[i][0] == 'X' && @board[i][1] == 'X' && @board[i][2] == 'X' or
            @board[i][0] == 'O' && @board[i][1] == 'O' && @board[i][2] == 'O'
            check = true
            i += 1
        end
        return check
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
