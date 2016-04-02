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
            if
                @board[i][0] == 'X' && @board[i][1] == 'X' && @board[i][2] == 'X' or
                @board[i][0] == 'O' && @board[i][1] == 'O' && @board[i][2] == 'O'
                check = true
            end
            i += 1
        end
        return check
    end
    
    def combined
        i = 0
        j = 0 
        check = false
        while i < @board.length # horizontal
            if
                @board[i][0] == 'X' && @board[i][1] == 'X' && @board[i][2] == 'X' or
                @board[i][0] == 'O' && @board[i][1] == 'O' && @board[i][2] == 'O'
                check = true
            end
            i += 1
        end
        
        while j < @board.length # vertical
            if
                @board[0][j] == 'X' && @board[1][j] == 'X' && @board[2][j] == 'X' or
                @board[0][j] == 'O' && @board[1][j] == 'O' && @board[2][j] == 'O'
                check = true
            end
            j += 1
        end
        return check
    end
    
    def check_vertical
        j = 0
        check = false
        while j < @board.length
            if
                @board[0][j] == 'X' && @board[1][j] == 'X' && @board[2][j] == 'X' or
                @board[0][j] == 'O' && @board[1][j] == 'O' && @board[2][j] == 'O'
                check = true
            end
            j += 1
        end
        return check
    end
    
    def check_diag1
    end
    
    def diag
        (@board[0][0] == 'X' && @board[1][1] == 'X' && @board[2][2] == 'X' or
        @board[0][2] == 'X' && @board[1][1] == 'X' && @board[2][0] == 'X') or
        (@board[0][0] == 'O' && @board[1][1] == 'O' && @board[2][2] == 'O' or
        @board[0][2] == 'O' && @board[1][1] == 'O' && @board[2][0] == 'O')
                
    end
    
    def check_diag2
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
    
    def win? # Not working!
        if @board.combined == true || @board.diag == true
            puts "You win!"
        end
        
    end
end

board = Board.new
board.play_x(0,0)
board.play_o(1,0)
board.play_x(0,1)
board.play_o(2,0)
board.play_x(0,2)


puts board.to_s

puts board.win?
#puts board.check_horizontal
#puts board.check_vertical
#puts board.diag
#puts board.combined
#puts board.check_diag1
#puts board.check_diag2