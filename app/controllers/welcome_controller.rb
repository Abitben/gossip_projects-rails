class WelcomeController < ApplicationController
  def welcome
    all_gossips = []
    (Gossip.all).each do |instance|
      all_gossips << instance
    end
    render :welcome, locals: { all_gossips: all_gossips }
  end
  
  
  def show_user
    render :show_user, locals: {first_name: params[:user_entry]}
  end


end
