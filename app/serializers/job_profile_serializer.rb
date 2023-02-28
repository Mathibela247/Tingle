class JobProfileSerializer < ActiveModel::Serializer
  attributes :id, :post_title_id, :core, :salary_level_id, :post_id, :location, :job_purpose, :job_function, :designation, :organization_id
end
