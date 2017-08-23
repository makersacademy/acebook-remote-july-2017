require 'rails_helper'

RSpec.describe GroupsController, type: :controller do
  describe "GET /new " do
    it "responds with 200" do
      get :new
      expect(response).to have_http_status(200)
    end
  end

  describe "POST /" do
    it "responds with 302" do
      post :create, params: { group: { title: "Groupy name", description: "Group description"} }
      expect(response).to have_http_status(302)
    end

    it "creates a group" do
      post :create, params: { group: { title: "Groupy name", description: "Group description"} }
      expect(Group.find_by(title: "Groupy name")).to be_present
    end
  end

  describe "GET /show" do
    it "routes /groups/1 to groups#show" do
      expect(get: "/groups/1").to route_to(
      controller: "groups",
      action: "show",
      id: "1"
      )
    end
  end
end
