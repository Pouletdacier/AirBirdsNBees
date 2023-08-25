class WishesController < ApplicationController
  def create
    @bird = Bird.find(params[:bird_id])
    @wish = Wish.new(user: current_user, bird: @bird)
    if @wish.save
      render json: { status: 'success', message: 'Bird added to wishlist' }
    else
      render json: { status: 'error', message: 'Something went wrong.' }, status: 400
    end
  end

  def destroy
    @wish = Wish.find_by(user: current_user, bird_id: params[:bird_id])
    if @wish&.destroy
      render json: { status: 'success', message: 'Bird removed from wishlist' }
    else
      render json: { status: 'error', message: 'Something went wrong.' }, status: 400
    end
  end
end
