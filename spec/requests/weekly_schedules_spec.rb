require 'rails_helper'

RSpec.describe "WeeklySchedules", type: :request do
  describe "GET /create" do
    it "returns http success" do
      get "/weekly_schedules/create"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/weekly_schedules/show"
      expect(response).to have_http_status(:success)
    end
  end

end
