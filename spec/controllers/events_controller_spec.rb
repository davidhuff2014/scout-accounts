require 'rails_helper'

RSpec.describe EventsController, :type => :controller do

  describe 'GET #index' do
    it 'populates an array of events' do
      event = Fabricate(:event)
      get :index
      expect(assigns(:events)).to eq([event])
    end

    it 'renders the :index view' do
      get :index
      expect(response).to render_template :index
    end
  end

  describe 'GET #new' do
    it 'sets @event to a new event' do
      get :new
      expect(assigns(:event)).to be_new_record
      expect(assigns(:event)).to be_instance_of Event
    end
  end

  describe 'POST #create' do
    it 'redirects to events path' do
      post :create, event: Fabricate.attributes_for(:event)
      expect(response).to redirect_to (events_path)
    end
  end

end
