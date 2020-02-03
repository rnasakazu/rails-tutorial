module ApplicationCable
  class Connection < ActionCable::Connection::Base
    identified_by :current_user

    def connect
      self.current_user = find_verified_user
    end

    private

    def find_verified_user
      if (verified_user = Admin.find_by(id: admin_id))
        verified_user
      elsif (verified_user = Customer.find_by(id: cookies.signed[:customer_id]))
        verified_user
      else
        reject_unauthorized_connection
      end
    end

    def session
      cookies.encrypted[Rails.application.config.session_options[:key]]
    end

    def admin_id
      session.dig('warden.user.admin.key', 0, 0)
    end
  end
end
