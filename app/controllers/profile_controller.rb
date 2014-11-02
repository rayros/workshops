class ProfileController < ApplicationController
  before_action :authenticate_user!, only: [:show]
  expose(:user) { User.find params[:id] }
  expose(:reviews) { user.reviews.decorate.last(5) }
  def show
  end
end
