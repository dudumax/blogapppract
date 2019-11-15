class ApplicationController < ActionController::Base
    include Pundit
    protect_from_forgery with: :exception 
    before_action :set_locale
    rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
    
    private
    def set_locale
        I18n.locale = params[:locale]|| I18n.default_locale
    end
    
    def default_url_options
        {locale: I18n.locale}
    end
    
    
    def user_not_authorized
      flash[:warning] = "You are not authorized to perform this action."
      redirect_to(request.referrer || root_path)
    end
end
