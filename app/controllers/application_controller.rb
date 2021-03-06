class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  before_filter :set_locale

  rescue_from CanCan::AccessDenied do |exception|
    flash[:error] = "Sorry, you need more permission for that action"
    redirect_to root_url
  end
  
  private

    def set_locale
      I18n.locale = params[:locale]
      Rails.application.routes.default_url_options[:locale]= I18n.locale    
    end
  
end
