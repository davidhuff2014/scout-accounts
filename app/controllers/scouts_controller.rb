class ScoutsController < ApplicationController
  before_filter :require_user

  def index
    @scouts = Scout.all
  end

  def new
    @scout = Scout.new
  end

  def create
    redirect_to scouts_path
  end

end
