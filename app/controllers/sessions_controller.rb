class SessionsController < ApplicationController

  def create
    return redirect_to action: 'new' if !params[:name] || params[:name].empty?
      session[:name] = params[:name]
    redirect_to '/'
  end

  def destroy
    session.delete :name

  end
end
