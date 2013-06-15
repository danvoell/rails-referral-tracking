class ApplicationController < ActionController::Base
  
before_filter :capture_referal


  protect_from_forgery

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_path, :alert => exception.message
  end

private
def capture_referal
  session[:referral] = params[:referral] if params[:referral]
end

end
