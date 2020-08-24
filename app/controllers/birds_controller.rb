class BirdsController < ApplicationController
  def index
    birds = Bird.all
    render json: birds.slice(:id, :name, :species)
  end

  def show
    bird = Bird.find_by(id: params[:id])
    render json: bird.slice(:id, :name, :species)
  end
end
