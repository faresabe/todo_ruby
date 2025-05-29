class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    puts "DEBUG PARAMS: #{params.inspect}"  # For debug only
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path, notice: "Account created successfully!"
    else
      render :new, status: :unprocessable_entity
    end
  end
  

  private

  def user_params
    params.require(:user).permit(:email_address, :password, :password_confirmation)
  end
  
end
