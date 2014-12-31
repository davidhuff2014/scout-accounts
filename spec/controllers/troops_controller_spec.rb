require 'rails_helper'

RSpec.describe TroopsController, :type => :controller do

  before(:each) { set_current_user }

  describe 'GET #new' do

    it_behaves_like 'requires sign in' do
      let(:action) { get :new }
    end

    it 'sets @troop to a new troop' do
      get :new
      expect(assigns(:troop)).to be_new_record
      expect(assigns(:troop)).to be_instance_of Troop
    end
  end

  describe 'GET #index' do

    it_behaves_like 'requires sign in' do
      let(:action) { get :index }
    end

    before(:each) { get :index }

    it 'populates an array of troops' do
      troop = Fabricate(:troop)
      expect(assigns(:troops)).to eq([troop])
    end

    it 'renders the :index view' do
      expect(response).to render_template :index
    end
  end

  describe 'GET #show' do

    it_behaves_like 'requires sign in' do
      let(:action) { get :show, id: 1 }
    end

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

  describe 'POST #create' do

    it_behaves_like 'requires sign in' do
      let(:action) { post :create }
    end

    it 'creates a troop' do
      post :create, troop: Fabricate.attributes_for(:troop)
      expect(response).to redirect_to troops_path
    end
  end
end
