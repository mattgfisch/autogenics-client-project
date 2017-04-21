require 'rails_helper'

RSpec.describe IndexController, type: :controller do
  describe 'rootpath' do
    it 'responds with status code 200' do
      get :index
      expect(response).to have_http_status 200
    end

    it 'routes to index#index' do
      expect(get: root_url).to route_to(controller: "index", action: "index")
    end

    it 'renders the :index template' do
      get :index
      expect(response).to render_template("index")
    end
  end
end
