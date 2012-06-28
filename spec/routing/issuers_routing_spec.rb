require "spec_helper"

describe IssuersController do
  describe "routing" do

    it "routes to #index" do
      get("/issuers").should route_to("issuers#index")
    end

    it "routes to #new" do
      get("/issuers/new").should route_to("issuers#new")
    end

    it "routes to #show" do
      get("/issuers/1").should route_to("issuers#show", :id => "1")
    end

    it "routes to #edit" do
      get("/issuers/1/edit").should route_to("issuers#edit", :id => "1")
    end

    it "routes to #create" do
      post("/issuers").should route_to("issuers#create")
    end

    it "routes to #update" do
      put("/issuers/1").should route_to("issuers#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/issuers/1").should route_to("issuers#destroy", :id => "1")
    end

  end
end
