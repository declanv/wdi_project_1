class UsersController < ApplicationController
 def index
    # show me all the users
    @users = User.all
    # render :index
  end

  def show
    # show me one user
     @user = User.find(params[:id])
    # render json: @user
  end

    def new
    @user = User.new
  end

  def create
    user_hash = params[:user]
    if user_hash[:password] == user_hash[:password_confirmation]
      user = User.new
      user.password = user_hash[:password]
      user.name = user_hash[:name]
      user.email = user_hash[:email]
      user.bio = user_hash[:bio]
      user.photo = user_hash[:photo]
      user.save

      if user.valid?
        # log the user in when they register
        @current_user = user
        redirect_to "/user/login"
      else
        render text: "Email is already taken!"
      end
    else
      render text: "Passwords Did Not Match!"
    end
    # render json: params
  end

  # not a restful route, really...
  def login
    # show LOGIN form

  end

  def process_login
    # process login form

    name = params[:name]
    password = params[:password]

    @current_user = User.authenticated?(name, password)

    if @current_user
      redirect_to timelines_path
    else
      render text: "Login Failed! Invalid name or password!"
    end

  end

    #The method mapped to through the route and application controller to redirect a user back to the login if they've hit logout

def logout
  current_user[:user_id] = nil


  redirect_to "/user/login"
end

end



