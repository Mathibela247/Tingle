class JobProfilesController < InheritedResources::Base

  private

    def job_profile_params
      params.require(:job_profile).permit(:post_title_id, :core, :post_level_id, :location, :job_purpose, :job_function, :designation, :organization_id)
    end

end
