class TroopsController < ApplicationController
  before_filter :require_user
  def index
    @troops = Troop.all
  end

  def new
    @troop = Troop.new
  end

  def create
    @troop = Troop.new(troop_params)

    if @troop.save
      flash[:success] = "Success, troop #{ @troop.troop_number } has now been added!"
      redirect_to troops_path
    else
      render :new
    end
  end

  def show
    @troop = Troop.find(params[:id])
  end

  private

  def troop_params
    params.require(:troop).permit(:troop_number, :location, :inception_year, :charter_sponsor)
  end
end