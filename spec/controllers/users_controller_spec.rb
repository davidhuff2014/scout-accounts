require 'rails_helper'

RSpec.describe UsersController, :type => :controller do
  describe 'GET #index' do

    it 'populates an array of users' do
      user = Fabricate(:user)
      get :index
      expect(assigns(:users)).to eq([user])
    end

    it 'renders the :index view' do
      get :index
      expect(response).to render_template(:index)
    end

  end
end
