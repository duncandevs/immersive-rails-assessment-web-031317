class AppearancesController < ApplicationController

  def new
    @guest = Guest.find(params[:id])
    @appearance = Appearance.new
  end
  def create
    episode = Episode.find_by(number: params[:episode])
    appearance = Appearance.new
    appearance.guest = Guest.find_by(params[:id])
    appearance.rating = params[:rating]
    appearance.episode = episode
    appearance.save
    appearance.id = Appearance.all.last.id
    redirect_to guest_path(appearance.guest)
  end
end
# <Appearance id: nil, guest_id: nil, episode_id: nil, rating: nil, created_at: nil, updated_at: nil>
# (params[:id],params[:episode_id])
