require 'rails_helper'

RSpec.describe 'Ideas', type: :request do
  describe 'GET /' do
    it 'トップページが正常に表示されること' do
      get root_path
      expect(response).to have_http_status(:success)
    end
  end
end
