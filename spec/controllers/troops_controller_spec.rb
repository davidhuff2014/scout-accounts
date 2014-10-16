require 'rails_helper'

RSpec.describe TroopsController, :type => :controller do
  describe 'GET #index' do

    it 'populates an array of troops' do
      troop = Fabricate(:troop)
      get :index
      expect(assigns(:troops)).to eq([troop])
    end

    it 'renders the :index view' do
      get :index
      expect(response).to render_template :index
    end
  end

  describe 'GET #show' do
    it 'sets @troop' do
      troop = Fabricate(:troop)
      get :show, id: troop.id
      expect(assigns(:troop)).to eq(troop)
    end

    it 'renders the #show view' do
      troop = Fabricate(:troop)
      get :show, id: troop.id
      expect(response).to render_template :show
    end
  end

end
