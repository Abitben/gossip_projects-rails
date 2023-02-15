class GossipsController < ApplicationController  

  def index
    @all_gossips = Gossip.all
  end

  def show
    @id = (params[:id]).to_i
    @gossip = Gossip.find(@id)
  end

  def new
    @gossip = Gossip.new(
      'title' => params[:title],
      'content' => params[:content])
  end

  def create
    @gossip = Gossip.new(title: params[:title], content: params[:content], user_id: 5)
    
    if @gossip.save # essaie de sauvegarder en base @gossip
      redirect_to gossips_path  # si ça marche, il redirige vers la page d'index du site
    else
      render :new # sinon, il render la view new (qui est celle sur laquelle on est déjà)
    end

  end

  def edit
    @gossip = Gossip.find(params[:id])
  end

  def update
    @gossip = Gossip.find(params[:id])
    if @gossip.update(title: params[:title], content: params[:content])
      redirect_to gossips_path
    else
      render :edit
    end
  end
  

  def destroy
    @gossip_to_destroy = Gossip.find(params[:id])
    @gossip_to_destroy.destroy
    redirect_to gossips_path, notice: "Le gossip a été supprimé"
  end
  

end
