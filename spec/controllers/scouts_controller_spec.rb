require 'rails_helper'

RSpec.describe ScoutsController, :type => :controller do
  describe 'GET #index' do
    it 'populates an array of scouts' do
      scout = Fabricate(:scout)
      get :index
      expect(assigns(:scouts)).to eq([scout])
    end

    it 'renders the :index view' do
      get :index
      expect(response).to render_template :index
    end
  end

end
