class CreateJobProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :job_profiles do |t|
      t.integer :post_title_id
      t.string :core
      t.integer :salary_level_id
      t.integer :post_id
      t.string :location
      t.string :job_purpose
      t.string :job_function
      t.string :designation
      t.integer :organization_id

      t.timestamps
    end
  end
end
