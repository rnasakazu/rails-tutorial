module SessionsHelper
  def registration
    customer = Customer.create
    customer.registration
    cookies.permanent.signed[:customer_id] = customer.id
    cookies.permanent[:remember_token] = customer.remember_token
    @current_customer = customer
  end

  def current_customer
    if (customer_id = cookies.signed[:customer_id])
      customer ||= Customer.find_by(id: customer_id)
      if customer&.authenticated?(cookies[:remember_token])
        @current_customer = customer
      end
    end
  end

  def registered_confirmation
    registration unless current_customer
  end
end
