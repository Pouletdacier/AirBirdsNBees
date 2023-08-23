class BirdsController < ApplicationController
  def show
    @bird = Bird.find(params[:id])
  end
end
