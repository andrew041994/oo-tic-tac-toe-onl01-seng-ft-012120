class TicTacToe


WIN_COMBINATIONS = [
                      [0, 1, 2],
                      [3, 4, 5],
                      [6, 7, 8],
                      [0, 3, 6],
                      [1, 4, 7],
                      [2, 5, 8],
                      [0, 4, 8],
                      [2, 4, 6]
                                  ]
        def initialize
          @board=[" ", " ", " ", " ", " ", " ", " ", " ", " "]
        end

        def display_board
          puts "#{@board[0]} |" "#{@board[1]} |" "#{@baord[2]}"

          puts "#{@board[3]} |" "#{@board[4]} |" "#{@baord[5]}"

          puts "#{@board[6]} |" "#{@board[7]} |" "#{@baord[8]}"
        end

end
