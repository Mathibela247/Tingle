require 'rails_helper'

RSpec.describe "job_profiles/show", type: :view do
  before(:each) do
    @job_profile = assign(:job_profile, JobProfile.create!(
      post_title_id: 2,
      core: "Core",
      salary_level_id: 3,
      post_id: 4,
      location: "Location",
      job_purpose: "Job Purpose",
      job_function: "Job Function",
      designation: "Designation",
      organization_id: 5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Core/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/Location/)
    expect(rendered).to match(/Job Purpose/)
    expect(rendered).to match(/Job Function/)
    expect(rendered).to match(/Designation/)
    expect(rendered).to match(/5/)
  end
end
