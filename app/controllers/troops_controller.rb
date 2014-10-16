class TroopsController < ApplicationController
  def index
    @troops = Troop.all
  end

  def show
    @troop = Troop.find(params[:id])
  end
end