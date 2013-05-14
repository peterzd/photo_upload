require "spec_helper"

describe ShareItemsController do
  describe "routing" do

    it "routes to #index" do
      get("/share_items").should route_to("share_items#index")
    end

    it "routes to #new" do
      get("/share_items/new").should route_to("share_items#new")
    end

    it "routes to #show" do
      get("/share_items/1").should route_to("share_items#show", :id => "1")
    end

    it "routes to #edit" do
      get("/share_items/1/edit").should route_to("share_items#edit", :id => "1")
    end

    it "routes to #create" do
      post("/share_items").should route_to("share_items#create")
    end

    it "routes to #update" do
      put("/share_items/1").should route_to("share_items#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/share_items/1").should route_to("share_items#destroy", :id => "1")
    end

  end
end
