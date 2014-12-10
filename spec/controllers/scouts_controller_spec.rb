require 'rails_helper'

RSpec.describe ScoutsController, :type => :controller do

  before (:each) { set_current_user }

  describe 'GET #index' do

    it_behaves_like 'requires sign in' do
      let(:action) { get :index }
    end

    before(:each) { get :index }

    it 'populates an array of scouts' do
      scout = Fabricate(:scout)
      expect(assigns(:scouts)).to eq([scout])
    end

    it 'renders the :index view' do
      expect(response).to render_template :index
    end
  end

end
