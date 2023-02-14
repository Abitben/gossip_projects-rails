class GossipsController < ApplicationController  
  def new
    @gossip = Gossip.new(
      'title' => params[:title],
      'content' => params[:content])
  end

  def create
    @gossip = Gossip.new(title: params[:title], content: params[:content], user_id: 11)
    
    if @gossip.save # essaie de sauvegarder en base @gossip
      redirect_to welcome_path  # si ça marche, il redirige vers la page d'index du site
    else
      render :new# sinon, il render la view new (qui est celle sur laquelle on est déjà)
    end

  end
  

end
