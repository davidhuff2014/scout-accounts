class AccountsController < ApplicationController
  def create
    account = Account.find(params[:scout_id])
  end
end