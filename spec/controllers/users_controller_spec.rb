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

  describe 'GET #new' do
    it 'sets @user' do
      get :new
      expect(assigns(:user)).to be_instance_of(User)
    end
  end

  describe 'POST #create' do

    context 'successful user sign up' do

      it 'redirects to the sign in page' do
        post :create, user: Fabricate.attributes_for(:user)
        expect(response).to redirect_to sign_in_path
      end

    end

    context 'failed user sign up' do

      it 'renders the new template' do
        post :create, user: { email: 'a@bc' } # force to fail
        expect(response).to render_template :new
      end

    end
  end

end
