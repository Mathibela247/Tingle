require 'rails_helper'

RSpec.describe "job_profiles/edit", type: :view do
  before(:each) do
    @job_profile = assign(:job_profile, JobProfile.create!(
      post_title_id: 1,
      core: "MyString",
      salary_level_id: 1,
      post_id: 1,
      location: "MyString",
      job_purpose: "MyString",
      job_function: "MyString",
      designation: "MyString",
      organization_id: 1
    ))
  end

  it "renders the edit job_profile form" do
    render

    assert_select "form[action=?][method=?]", job_profile_path(@job_profile), "post" do

      assert_select "input[name=?]", "job_profile[post_title_id]"

      assert_select "input[name=?]", "job_profile[core]"

      assert_select "input[name=?]", "job_profile[salary_level_id]"

      assert_select "input[name=?]", "job_profile[post_id]"

      assert_select "input[name=?]", "job_profile[location]"

      assert_select "input[name=?]", "job_profile[job_purpose]"

      assert_select "input[name=?]", "job_profile[job_function]"

      assert_select "input[name=?]", "job_profile[designation]"

      assert_select "input[name=?]", "job_profile[organization_id]"
    end
  end
end
