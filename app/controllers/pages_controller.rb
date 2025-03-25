class PagesController < ApplicationController
  def rules
    render({ template: "game_templates/rules" })
  end

  def rock
    @player_move = "rock"
    @random_move = ["rock", "paper", "scissors"].sample
    @outcome = winner(@player_move, @random_move)

    render({ :template => "game_templates/play_rock" })
  end

  def paper
    @player_move = "paper"
    @random_move = ["rock", "paper", "scissors"].sample
    @outcome = winner(@player_move, @random_move)

    render({ :template => "game_templates/play_paper" })
  end

  def scissors
    @player_move = "scissors"
    @random_move = ["rock", "paper", "scissors"].sample
    @outcome = winner(@player_move, @random_move)

    render({ :template => "game_templates/play_scissors" })
  end

  private

  def winner(player, computer)
    if player == computer
      "We tied!"
    elsif (player == "rock" && computer == "scissors") ||
          (player == "paper" && computer == "rock") ||
          (player == "scissors" && computer == "paper")
      "We won!"
    else
      "We lost!"
    end
  end
end
