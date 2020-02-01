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

          puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
          puts "-----------"
          puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
          puts "-----------"
          puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
          puts "-----------"
        end

        def input_to_index(input)
          i = input.to_i - 1
          i
        end

        def move(index, token = "X")
          @board[index] = token
        end

        def position_taken?(i)
            if @board[i] == "X"
              true
            elsif @board[i] == "O"
              true
            else
              false
            end
        end

        def valid_move?(i)
          i = i.to_i 
          if i.between?(0,8) && !position_taken?(i)
            true
          else
            false
          end
        end

        def turn_count
          count = 0

          @board.each do|i|
              if i == "X"
                count += 1
              elsif i == "O"
                 count += 1
              end
            end
            count
        end

        def current_player

            if turn_count % 2 == 0
              "X"
            else
              "O"
            end
        end

        def turn
          puts "Enter a number between 1-9"
          input = gets
          input_to_index(input)
          if valid_move?(input) == true
            move && display_board
          else
            puts "Enter a number between 1-9"
          end


        end




        # Ask the user for their move by specifying a position between 1-9.
        # Receive the user's input.
        # Translate that input into an index value.
        # If the move is valid, make the move and display the board.
        # If the move is invalid, ask for a new move until a valid move is received.


        # ask for input
        # get input
        # translate input into index
        # if index is valid
        #   make the move for index
        #   show the board
        # else
        #   ask for input again
        # end




end
