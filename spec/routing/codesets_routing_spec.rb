require "spec_helper"

describe CodesetsController do
  describe "routing" do

    it "routes to #index" do
      get("/codesets").should route_to("codesets#index")
    end

    it "routes to #new" do
      get("/codesets/new").should route_to("codesets#new")
    end

    it "routes to #show" do
      get("/codesets/1").should route_to("codesets#show", :id => "1")
    end

    it "routes to #edit" do
      get("/codesets/1/edit").should route_to("codesets#edit", :id => "1")
    end

    it "routes to #create" do
      post("/codesets").should route_to("codesets#create")
    end

    it "routes to #update" do
      put("/codesets/1").should route_to("codesets#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/codesets/1").should route_to("codesets#destroy", :id => "1")
    end

  end
end
