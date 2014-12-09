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

      before do
        @alice = Fabricate(:user)
        post :create, email: @alice.email, password: @alice.password
      end

      it 'puts signed in user into session' do
        expect(session[:user_id]).to eq(@alice.id)
      end

      it 'redirects to home page' do
        expect(response).to redirect_to home_path
      end

      it 'sets the flash success message' do
        expect(flash[:success]).not_to be_blank
      end
    end

    context 'with invalid credentials' do

      before do
        alice = Fabricate(:user)
        post :create, email: alice.email, password: alice.password + 'bogus stuff'
      end

      it ' does  not put the user signing in ito the session' do
        expect(session[:user_id]).to be_nil
      end

      it 'redirects to the sign in page' do
        expect(response).to redirect_to sign_in_path
      end

      it 'sets the flash error message' do
        expect(flash[:danger]).not_to be_blank
      end
    end
  end

  describe 'GET #destroy' do

    before do
      session[:user_id] = Fabricate(:user).id
      get :destroy
    end

    it 'clears the session for the user' do
      expect(session[:user_id]).to be_nil
    end

    it 'redirects to root path' do
      expect(response).to redirect_to root_path
    end

    it 'sets the notice' do
      expect(flash[:success]).not_to be_blank
    end
  end
end
