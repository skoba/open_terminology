require "spec_helper"

describe MediaTypesController do
  describe "routing" do

    it "routes to #index" do
      get("/media_types").should route_to("media_types#index")
    end

    it "routes to #new" do
      get("/media_types/new").should route_to("media_types#new")
    end

    it "routes to #show" do
      get("/media_types/1").should route_to("media_types#show", :id => "1")
    end

    it "routes to #edit" do
      get("/media_types/1/edit").should route_to("media_types#edit", :id => "1")
    end

    it "routes to #create" do
      post("/media_types").should route_to("media_types#create")
    end

    it "routes to #update" do
      put("/media_types/1").should route_to("media_types#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/media_types/1").should route_to("media_types#destroy", :id => "1")
    end

  end
end
