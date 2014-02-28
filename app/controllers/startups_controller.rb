class StartupsController < ApplicationController
  def index
    @startups = Startup.hiring.within_bounds user_location_params
    respond_with @startups
  end

  private

  def user_location_params
    params.require(:user).permit(location: [:sw, :ne])
  end
end
