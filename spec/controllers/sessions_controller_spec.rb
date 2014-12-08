require 'rails_helper'

RSpec.describe SessionsController, :type => :controller do

  describe 'GET #new' do
    it 'renders the new template for unauthenticated users' do
      get :new
      expect(response).to render_template :new
    end

    it 'redirects to the home page for authenticated users' do
      session[:user_id] = Fabricate(:user).id
      get :new
      expect(response).to redirect_to home_path
    end
  end

  describe 'POST #create' do
    context 'with valid credentials' do

      it 'puts signed in user into session' do
        @alice = Fabricate(:user)
        post :create, email: @alice.email, password: @alice.password
        expect(session[:user_id]).to eq(@alice.id)
      end
    end
  end
end
