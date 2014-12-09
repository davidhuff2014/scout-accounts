class ScoutsController < ApplicationController
  before_filter :require_user
  def index
    @scouts = Scout.all
  end

end
