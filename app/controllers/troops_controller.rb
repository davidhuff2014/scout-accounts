class TroopsController < ApplicationController
  before_filter :require_user
  def index
    @troops = Troop.all
  end

  def new
    @troop = Troop.new
  end

  def create
    render :new
  end

  def show
    @troop = Troop.find(params[:id])
  end
end