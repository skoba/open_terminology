require "spec_helper"

describe CodesController do
  describe "routing" do

    it "routes to #index" do
      get("/codes").should route_to("codes#index")
    end

    it "routes to #new" do
      get("/codes/new").should route_to("codes#new")
    end

    it "routes to #show" do
      get("/codes/1").should route_to("codes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/codes/1/edit").should route_to("codes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/codes").should route_to("codes#create")
    end

    it "routes to #update" do
      put("/codes/1").should route_to("codes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/codes/1").should route_to("codes#destroy", :id => "1")
    end

  end
end
