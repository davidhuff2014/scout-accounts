class TroopsController < ApplicationController
  def index
    @troops = Troop.all
  end
end