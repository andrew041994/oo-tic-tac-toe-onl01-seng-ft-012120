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












end
