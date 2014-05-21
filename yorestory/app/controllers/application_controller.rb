class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

# Copy/Pasted from http://railscasts.com/episodes/250-authentication-from-scratch


#Copy/pasted in from http://homepages.abdn.ac.uk/pang.wei/pages/WAD/Practicals/userauthentication/Web%20Application%20Development%20%20Advanced%20Ruby%20on%20Rails%20-%20User%20authentication.html
#Should allow the user to log out by stripping the id from the route and then redirecting to
#the login page.

before_action :authenticate_with_basic_auth

   # protected

   #  def login_required
   #    return true if User.find_by_id(session[:user_id])
   #    access_denied
   #    return false
   #  end
   #  def access_denied
   #    flash[:error] = 'Oops. You need to login before you can view that page.'
   #    redirect_to "/user/login"
   #  end


  def authenticate_with_basic_auth
    # this will be called from controller before any action
    unless @current_user
      # grabs email, password
      authenticate_or_request_with_http_basic do |email, password|
        # feeds the values through our self.authenticated? class method

        # set their return value to @current_user
        @current_user = User.authenticated?(email, password)

        # or redirect on failure???
        # unless @current_user
        #   redirect_to root_path
        # end
        # resume letting the user into the site
      end
    else
      @current_user
    end
  end

  # something here
  helper_method :current_user

  # public getter for a normally private instance variable
  def current_user
    @current_user
  end

  # # example of a helper
  # def make_link_tag(url)
  #   "<a href='#{url}'>link</a>"
  # end

end
