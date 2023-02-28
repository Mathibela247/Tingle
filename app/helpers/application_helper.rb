module ApplicationHelper
    def is_admin?
        unless current_user&.admin?
            redirect_to root_url,
                alert: 'You are not authorized to access this page.'
        end
    end 
    def get_supervisor(boss_id)
        @supervisor = Post.where(:id => boss_id).first
    end

    def get_organization(name)
        @organ = Organization.where(:id => name).first
    end

    def get_appointment(user)
        @appoint = Appointment.where(:user_id => user).first
    end
end
