FactoryBot.define do
  factory :job_profile do
    post_title_id { 1 }
    core { "MyString" }
    salary_level_id { 1 }
    post_id { 1 }
    location { "MyString" }
    job_purpose { "MyString" }
    job_function { "MyString" }
    designation { "MyString" }
    organization_id { 1 }
  end
end
