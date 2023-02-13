class WelcomeController < ApplicationController
  def welcome
    @all_gossips = []
    (Gossip.all).each do |instance|
      @all_gossips << instance
    end
  end
  
  def show_user
    @user = User.find_by(first_name: params[:user_entry])
    @first_name = params[:user_entry]
  end


end
