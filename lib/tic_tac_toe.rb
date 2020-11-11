class TicTacToe
  def initialize
    @board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  end

  WIN_COMBINATIONS = [0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [2,4,6]


    def display_board
      print " #{@board[0]} | #{@board[1]} | #{@board[2]} "
      print "-----------"
      print " #{@board[3]} | #{@board[4]} | #{@board[5]} "
      print "-----------"
      print " #{@board[6]} | #{@board[7]} | #{@board[8]} "
    end

    def input_to_index(input)
      input.to_i - 1
    end

    def move(input, token = "X")
      @board[input] = token
    end

    def position_taken?(input)
      if @board[input] == " "
        return false
      else return true
      end
    end

    def valid_move?(input)
      if input <= 8
        position_taken?(input) == false
      else false
      end
    end

    def turn_count
      count = 0
      @board.each do |i|
        if i == "X" || i == "O"
          count += 1
        end
      end
        count
    end

    def current_player
      if turn_count.even?
        return "X"
      else return "O"
      end
    end

    def turn(input)
      puts "Please enter your move between 1-9"
      input = gets.strip
    end


end
