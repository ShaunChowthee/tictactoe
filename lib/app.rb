require_relative "board.rb"
require_relative "player.rb"
require_relative "game.rb"
new_game = Game.new("P1", "P2")
new_game.showing_grid_state

while true
    p_answers = new_game.storing_players_answers(new_game.player1)
    new_game.assigning_sign_to_grid(p_answers, new_game.player1)
    new_game.showing_grid_state
    if new_game.draw
        puts "DUROOOO"
        break
    end
    if new_game.win_con(new_game.player1)
        puts "#{new_game.player1.name} wins"
        break
    end
    p_answers = new_game.storing_players_answers(new_game.player2)
    new_game.assigning_sign_to_grid(p_answers, new_game.player2)
    new_game.showing_grid_state
    if new_game.draw
        puts "DUROOOO"
        break
    end
    if new_game.win_con(new_game.player2)
        puts "#{new_game.player2.name} wins"
        break
    end
end
