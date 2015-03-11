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

end
