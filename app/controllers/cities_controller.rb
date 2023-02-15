class CitiesController < ApplicationController
  def show
    @all_gossips = find_users_gossips
    @city_name = params[:id]
  end

  def find_users_by_city
    city_instance = City.find_by(name: params[:id])
    city_id = city_instance.id
    city_users = User.where(city_id: city_id)
    return city_users
  end

  def find_users_gossips
    @gossips = []
    find_users_by_city.each do |user|
      (Gossip.where(user_id: user)).each do |gossip|
        @gossips << gossip
      end
    end
    return @gossips
  end

end