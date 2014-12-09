class TransactionsController < ApplicationController
  before_filter :require_user
  def index
    @transactions = Transaction.all
  end
end