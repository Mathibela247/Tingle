require 'rails_helper'

RSpec.describe "job_profiles/index", type: :view do
  before(:each) do
    assign(:job_profiles, [
      JobProfile.create!(
        post_title_id: 2,
        core: "Core",
        salary_level_id: 3,
        post_id: 4,
        location: "Location",
        job_purpose: "Job Purpose",
        job_function: "Job Function",
        designation: "Designation",
        organization_id: 5
      ),
      JobProfile.create!(
        post_title_id: 2,
        core: "Core",
        salary_level_id: 3,
        post_id: 4,
        location: "Location",
        job_purpose: "Job Purpose",
        job_function: "Job Function",
        designation: "Designation",
        organization_id: 5
      )
    ])
  end

  it "renders a list of job_profiles" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: "Core".to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
    assert_select "tr>td", text: 4.to_s, count: 2
    assert_select "tr>td", text: "Location".to_s, count: 2
    assert_select "tr>td", text: "Job Purpose".to_s, count: 2
    assert_select "tr>td", text: "Job Function".to_s, count: 2
    assert_select "tr>td", text: "Designation".to_s, count: 2
    assert_select "tr>td", text: 5.to_s, count: 2
  end
end
