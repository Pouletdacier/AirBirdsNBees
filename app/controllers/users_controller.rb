class UsersController < ApplicationController
  def wishlist
    @wishlisted_birds = current_user.wishlisted_birds
  end
end
