class LoginController < ApplicationController
  def show
  end
  def login
    @login_user = User.find_by(name: params[:name])
    if @login_user && @login_user.authenticate(params[:password])
      session[:user_id]=@login_user.id
      redirect_to("/users")
    else
      redirect_to("/")
    end
  end
  
  def logout
    session[:user_id] = nil
    flash[:notic] = "ログアウトしました"
    redirect_to("/")
  end
end
