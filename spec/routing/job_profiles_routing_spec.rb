require "rails_helper"

RSpec.describe JobProfilesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/job_profiles").to route_to("job_profiles#index")
    end

    it "routes to #new" do
      expect(get: "/job_profiles/new").to route_to("job_profiles#new")
    end

    it "routes to #show" do
      expect(get: "/job_profiles/1").to route_to("job_profiles#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/job_profiles/1/edit").to route_to("job_profiles#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/job_profiles").to route_to("job_profiles#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/job_profiles/1").to route_to("job_profiles#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/job_profiles/1").to route_to("job_profiles#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/job_profiles/1").to route_to("job_profiles#destroy", id: "1")
    end
  end
end
