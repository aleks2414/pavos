class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

before_action :set_footer

def set_footer
	@contact = Contact.new
end

protected

def stored_location_for(resource)
  nil
end

def after_sign_in_path_for(resource)
  	products_path
end

def after_sign_up_path_for(resource)
    products_path
end

end
