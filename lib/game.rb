require_relative "player"
require_relative "board"

class Game
    attr_accessor :player1
    attr_accessor :player2
    attr_accessor :grid

    def initialize(name, name2)
        @player1 = Player.new(name, "X")
        @player2 = Player.new(name2, "O")
        @grid = BoardCase.new
    end

    def showing_grid_state
      grid.display_grid
    end

    def storing_players_answers(player)
      puts "#{player. name}, à toi de jouer"
      player.place_sign
    end 

    def assigning_sign_to_grid(players_answers,player)
      col_index = 0
      case players_answers[0]
      when "A" then col_index = 0
      when "B" then col_index = 1
      when "C" then col_index = 2
      end

      row_index = 0
      case players_answers[1]
      when "1" then row_index = 0
      when "2" then row_index = 1
      when "3" then row_index = 2
      end
      if grid.grid[col_index][row_index] == " "
        grid.grid[col_index][row_index] = player.sign
      else
        puts "Not an empty case, you skip a turn"
      end
    end

    def win_con(player)
        grid.grid.each do |row|
          return true if row.all? { |slot| slot == player.sign }
        end
    
        (0..2).each do |col_index|
          return true if grid.grid.all? { |row| row[col_index] == player.sign }
        end
    
        
        return true if (0..2).all? { |index| grid.grid[index][index] == player.sign }  
        return true if (0..2).all? { |index| grid.grid[index][2 - index] == player.sign }
    
        return false
    end
    
    def draw
      grid.grid.all? { |row| row.none? { |cell| cell == " " } }
    end

    def still_ongoing?(player)
      if win_con(player)
        return false
      else
        return true
      end
    end

end
