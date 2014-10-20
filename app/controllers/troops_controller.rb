class TroopsController < ApplicationController
  def index
    @troops = Troop.all
  end

  def new
    @troop = Troop.new
  end

  def show
    @troop = Troop.find(params[:id])
  end
end