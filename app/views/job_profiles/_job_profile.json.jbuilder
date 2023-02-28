json.extract! job_profile, :id, :post_title_id, :core, :salary_level_id, :post_id, :location, :job_purpose, :job_function, :designation, :organization_id, :created_at, :updated_at
json.url job_profile_url(job_profile, format: :json)
