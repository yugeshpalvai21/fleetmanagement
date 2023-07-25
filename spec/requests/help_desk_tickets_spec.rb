require 'rails_helper'

RSpec.describe "HelpDeskTickets", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/help_desk_tickets/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/help_desk_tickets/show"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/help_desk_tickets/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/help_desk_tickets/create"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /edit" do
    it "returns http success" do
      get "/help_desk_tickets/edit"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /update" do
    it "returns http success" do
      get "/help_desk_tickets/update"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /destroy" do
    it "returns http success" do
      get "/help_desk_tickets/destroy"
      expect(response).to have_http_status(:success)
    end
  end

end
