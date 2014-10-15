require 'rails_helper'

RSpec.describe TransactionsController, :type => :controller do
  describe 'GET #index' do

    it 'populates an array of transactons' do
      transaction = Fabricate(:transaction)
      get :index
      expect(assigns(:transactions)).to eq([transaction])
    end

    it 'renders the :index view' do
      get :index
      expect(response).to render_template :index
    end
  end
end
