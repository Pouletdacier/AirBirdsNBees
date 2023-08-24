class BirdsController < ApplicationController
  def index
    @birds = Bird.all
  end

  def show
    @bird = Bird.find(params[:id])
  end

  def new
    @bird = Bird.new
  end

  def create
    @bird = Bird.new(bird_params)
    @bird.birdlord_id = current_user.id
    if @bird.save
      redirect_to bird_path(@bird)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def bird_params
    params.require(:bird).permit(:name, :photo, :species, :details, :price_per_day)
  end
end
