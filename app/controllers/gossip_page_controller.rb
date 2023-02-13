class GossipPageController < ApplicationController
  
  def show_user

    all_gossips = []
    (Gossip.all).each do |instance|
      all_gossips << instance
    end
  id = (params[:id]).to_i
  render :gossip, locals: {id: id, all_gossips: all_gossips}
  end

end
