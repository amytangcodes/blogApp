class SessionsController < ApplicationController
  skip_before_action :verify_authenticity_token


  def create
    user = User.find_by(email: params[:email])

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id # set the session user id to be the user.id |  this is encrypted
      redirect_to root_url # like calling two methods redirect_to(root_url())
    else
      render :new   # render(:new)
    end
  end
end



# user same as user.present?