class ScoutsController < ApplicationController
  before_filter :require_user

  def index
    @scouts = Scout.all
  end

  def new
    @scout = Scout.new
  end

  def create
    @scout = Scout.new(scout_params)

    if @scout.save
      flash[:success] = "Success, scout #{ @scout.full_name } has been added!"
      redirect_to scouts_path
    else
      render :new
    end
  end

  private

  def scout_params
    params.require(:scout).permit(:full_name, :troop_id)
  end

end
