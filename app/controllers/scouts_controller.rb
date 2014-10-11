class ScoutsController < ApplicationController
  def index
    @scouts = Scout.all
  end
end