class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

before_action :set_footer

def set_footer
	@contact = Contact.new
end

end
