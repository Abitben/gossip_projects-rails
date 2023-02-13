class WelcomeController < ApplicationController
  def welcome
    all_gossips = []
    (Gossip.all).each do |instance|
      all_gossips << instance
    end
    render :welcome, locals: { all_gossips: all_gossips }
  end
  
  
  def show_user
    puts "*" * 30
    puts user_to_display = User.find_by(first_name: params[:user_entry])
    puts "*" * 30
    render :show_user, locals: {first_name: params[:user_entry], user: user_to_display}
  end


end
